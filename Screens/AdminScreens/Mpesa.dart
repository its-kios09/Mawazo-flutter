import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Mpesa Recieved',
            style: TextStyle(fontFamily: 'MajorMonoDisplay'),
          ),
          elevation: 0.0,
        ),
        body: Center(
          child: Text('Mpesa Paid from Customers'),
        ));
  }
}
