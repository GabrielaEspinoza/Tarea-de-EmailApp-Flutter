import 'package:flutter/material.dart';
import '../model/email.dart';
import '../screens/detailScreen.dart';

class EmailWidget extends StatelessWidget {
  final Email email;

  EmailWidget({required this.email});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            trailing: Text(email.dateTime),
            title: Text(email.from),
            subtitle: Text(email.subject),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailScreen(emails: email)));
            },
          ),
        ],
      ),
    );
  }
}
