import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HelpDesks extends StatefulWidget {
  @override
  _HelpDesksState createState() => _HelpDesksState();
}

class _HelpDesksState extends State<HelpDesks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mawazo HelpDesk',
          style: TextStyle(fontFamily: 'MajorMonoDisplay', fontSize: 16),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Need Support?',
                    style: TextStyle(
                        fontFamily: 'Khand-Light',
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'As Mawazo Agency We offer Fully Service Which We Operates  24 Hours. Your Reponses Shall Be Responded Within A few Minutes',
                          style: TextStyle(
                              fontFamily: 'Khand-Light',
                              fontSize: 16,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Contact Us',
                          style: TextStyle(
                              fontFamily: 'Khand-Light',
                              fontSize: 16,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                Icons.email,
                                size: 30,
                                color: Colors.white,
                              ),
                              onPressed: null),
                          IconButton(
                              icon: Icon(
                                Icons.phone,
                                size: 30,
                                color: Colors.white,
                              ),
                              onPressed: null),
                          IconButton(
                              icon: Icon(
                                FontAwesomeIcons.facebook,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: null),
                          IconButton(
                              icon: Icon(
                                FontAwesomeIcons.whatsapp,
                                size: 30,
                                color: Colors.white,
                              ),
                              onPressed: null)
                        ],
                      ),
                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Thank You For Using Mawazo Platform to Serve Your Interest',
                          style: TextStyle(
                              fontFamily: 'Khand-Light', color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
