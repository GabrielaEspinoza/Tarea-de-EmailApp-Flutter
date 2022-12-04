import 'package:flutter/material.dart';
import '../model/backend.dart';
import '../model/email.dart';
import '../widgets/EmailWidget.dart';

class ListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListScreenPageState();
  }
}

class _ListScreenPageState extends State<ListScreen> {
  final List<Email> emails = Backend().getEmails();

  Widget _buildEmailList() {
    return Container(
      child: emails.length > 0
          ? ListView.builder(
              itemCount: emails.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  onDismissed: (DismissDirection direction) {
                    setState(() {
                      emails.removeAt(index);
                    });
                  },
                  secondaryBackground: Container(
                    child: Center(
                      child: Text(
                        'Borrar',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    color: Colors.blue,
                  ),
                  background: Container(),
                  child: EmailWidget(email: emails[index]),
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                );
              },
            )
          : Center(child: Text('No Items')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mock Mail'),
        backgroundColor: Color.fromARGB(255, 243, 33, 243),
      ),
      body: _buildEmailList(),
    );
  }
}
