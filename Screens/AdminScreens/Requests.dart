import 'package:flutter/material.dart';

class Request extends StatefulWidget {
  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Booking Requests',
            style: TextStyle(fontFamily: 'MajorMonoDisplay'),
          ),
          elevation: 0.0,
        ),
        body: Center(
          child: Text('Requests from Customers'),
        ));
  }
}
