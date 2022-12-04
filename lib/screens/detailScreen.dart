import 'package:flutter/material.dart';
import '../model/email.dart';
import '../model/backend.dart';

class DetailScreen extends StatelessWidget {
  final Email emails;
  const DetailScreen({Key? key, required this.emails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Functional Programming'),
        backgroundColor: Color.fromARGB(255, 243, 33, 243),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 3, 0),
            child: Container(
              //width: double.maxFinite,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "De: " + emails.from,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Row(children: <Widget>[
            Expanded(
                child: Divider(
              color: Colors.blue.shade100,
            )),
          ]),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 3, 0),
            child: Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  emails.subject,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 3, 0),
            child: Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  emails.dateTime,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black38,
                  ),
                ),
              ),
            ),
          ),
          Row(children: <Widget>[
            Expanded(
                child: Divider(
              color: Colors.blue.shade100,
            )),
          ]),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
            child: Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  emails.body,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 13,
                    letterSpacing: 0.15,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
