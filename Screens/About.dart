import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(
            children: <Widget>[
              Text(
                'About Mawazo Agency',
                style: TextStyle(
                    fontFamily: 'MajorMonoDisplay',
                    color: Colors.white,
                    fontSize: 10),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Mawazo We Care',
                style: TextStyle(
                    fontFamily: 'MajorMonoDisplay',
                    color: Colors.white,
                    fontSize: 8),
              ),
            ],
          ),
          elevation: 0.0,
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: double.infinity,
                  height: 550,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ListView(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 15,
                            ),
                            Center(
                              child: Icon(
                                Icons.local_florist,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            Center(
                              child: Text('Mawazo AGENCY',
                                  style: TextStyle(
                                    fontFamily: 'Monoton',
                                    color: Colors.white,
                                  )),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              ' Mawazo Agency is a Online Booking Rental Platform Which Tries to Make Work easier In Kenya By Allowing Common Mwananchi to look for A home By Just Sitting Down And Interacting With Our Platform. That way, You Can be sure that you will find your dream Home in Mawazo Agency Across Kenya. That\'s Our Promise.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Khand-Light'),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Center(
                              child: Text('Our Mission',
                                  style: TextStyle(
                                    fontFamily: 'Monoton',
                                    color: Colors.white,
                                  )),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Setting Up Online Booking System that Ensures Affordability Home For All Common Mwananchi And Friendly',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Khand-Light'),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Center(
                              child: Container(
                                  child: Column(
                                children: <Widget>[
                                  Text('Contact Us',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Khand-Light')),
                                  Text('For More Information ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Khand-Light')),
                                  Text('Main Offices At Nakuru County',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Khand-Light')),
                                ],
                              )),
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ));
  }
}
