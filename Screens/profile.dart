import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'My pROFILe',
            style: TextStyle(fontFamily: 'MajorMonoDisplay'),
          ),
          elevation: 0.0,
        ),
        body: Center(
          child: Text('About MIssion goal small history co fonder'),
        ));
  }
}
