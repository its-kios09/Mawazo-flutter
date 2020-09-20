import 'package:flutter/material.dart';

class Rental extends StatefulWidget {
  @override
  _RentalState createState() => _RentalState();
}

class _RentalState extends State<Rental> {
  final GlobalKey<FormState> _formKey1 = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Rental Houses',
            style: TextStyle(fontFamily: 'MajorMonoDisplay'),
          ),
          elevation: 0.0,
        ),
        body: Form(
          key: _formKey1,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: 150,
                          height: 100,
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Building Name',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please Enter Name';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 100,
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Building Type',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please Enter Type';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: 150,
                          height: 100,
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Location',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please Enter Locations';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 100,
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: 'No.Of Rooms',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please Enter Rooms No.s';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: 150,
                          height: 100,
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Price',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please Enter Rent';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 100,
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Description',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please Enter Description';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: 150,
                          height: 100,
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Amenities',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please Enter Amenities';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 100,
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Available Rooms',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please Enter Avail Rooms';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: 150,
                          height: 100,
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Rules',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please Enter the Rules';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 100,
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: 'CareTaker\'s Number',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please Enter Phone Number';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(25),
                                bottomLeft: Radius.circular(25)),
                            gradient: LinearGradient(
                                colors: [
                                  Colors.deepPurple[700],
                                  Colors.deepPurple[500],
                                  Colors.deepPurple[300]
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.centerLeft)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                                onPressed: () {
                                  if (!_formKey1.currentState.validate()) {
                                    return null;
                                  }
                                },
                                child: Text(
                                  'Add',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
