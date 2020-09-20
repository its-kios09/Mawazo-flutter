import 'package:flutter/material.dart';

class RentPaid extends StatefulWidget {
  @override
  _RentPaidState createState() => _RentPaidState();
}

class _RentPaidState extends State<RentPaid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Houses Paid',
            style: TextStyle(
              fontFamily: 'MajorMonoDisplay',
            ),
          ),
          elevation: 0.0,
        ),
        body: Center(
          child: Text('Houses Paid'),
        ));
  }
}
