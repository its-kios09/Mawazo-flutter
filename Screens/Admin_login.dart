import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Panel extends StatefulWidget {
  @override
  _PanelState createState() => _PanelState();
}

class _PanelState extends State<Panel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.deepPurple[400],
        title: Text(
          'Mawazo Admin Panel',
          style: TextStyle(fontFamily: 'MajorMonoDisplay'),
        ),
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Admin'),
              accountEmail: Text('Admin@gmail.com'),
            ),
            ListTile(
              title: Text('Main House'),
              leading: Icon(
                Icons.home,
                color: Colors.deepPurple[400],
                size: 30,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/home');
              },
            ),
            Divider(),
            ListTile(
              title: Text('Rental Houses'),
              leading: Icon(
                Icons.store,
                color: Colors.deepPurple[400],
                size: 30,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/rental');
              },
            ),
            Divider(),
            ListTile(
              title: Text('Request Booking House'),
              leading: Icon(
                Icons.local_library,
                color: Colors.deepPurple[400],
                size: 30,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/request');
              },
            ),
            Divider(),
            ListTile(
              title: Text('Rent Paid'),
              leading: Icon(
                Icons.perm_phone_msg,
                color: Colors.deepPurple[400],
                size: 30,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/rent');
              },
            ),
            Divider(),
            ListTile(
              title: Text('Mpesa Messages'),
              leading: Icon(
                Icons.question_answer,
                color: Colors.deepPurple[400],
                size: 30,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/mpesa');
              },
            ),
            Divider(),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: ListTile(
                  title: Text('Sign Out'),
                  leading: Icon(
                    Icons.exit_to_app,
                    color: Colors.deepPurple[400],
                    size: 30,
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      body: GridView.count(
        primary: false,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: FlatButton(
              onPressed: null,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 45,
                  ),
                  Icon(
                    FontAwesomeIcons.user,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "users",
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'MajorMonoDisplay'),
                  ),
                ],
              ),
            ),
            color: Colors.deepPurple[300],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: FlatButton(
              onPressed: null,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 45,
                  ),
                  Icon(
                    FontAwesomeIcons.envelopeSquare,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "notifications",
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'MajorMonoDisplay'),
                  ),
                ],
              ),
            ),
            color: Colors.deepPurple[300],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: FlatButton(
              onPressed: null,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 45,
                  ),
                  Icon(
                    FontAwesomeIcons.fortAwesome,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "booked houses",
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'MajorMonoDisplay'),
                  ),
                ],
              ),
            ),
            color: Colors.deepPurple[300],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: FlatButton(
              onPressed: null,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 45,
                  ),
                  Icon(
                    FontAwesomeIcons.blind,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "tentants",
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'MajorMonoDisplay'),
                  ),
                ],
              ),
            ),
            color: Colors.deepPurple[300],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: FlatButton(
              onPressed: null,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 45,
                  ),
                  Icon(
                    FontAwesomeIcons.hotel,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Rental Houses",
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'MajorMonoDisplay'),
                  ),
                ],
              ),
            ),
            color: Colors.deepPurple[300],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: FlatButton(
              onPressed: null,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 45,
                  ),
                  Icon(
                    FontAwesomeIcons.streetView,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "house location",
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'MajorMonoDisplay'),
                  ),
                ],
              ),
            ),
            color: Colors.deepPurple[300],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: FlatButton(
              onPressed: null,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 45,
                  ),
                  Icon(
                    FontAwesomeIcons.userClock,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "reminders",
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'MajorMonoDisplay'),
                  ),
                ],
              ),
            ),
            color: Colors.deepPurple[300],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: FlatButton(
              onPressed: null,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 45,
                  ),
                  Icon(
                    FontAwesomeIcons.servicestack,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "caretakers",
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'MajorMonoDisplay'),
                  ),
                ],
              ),
            ),
            color: Colors.deepPurple[300],
          ),
        ],
      ),
    );
  }
}
