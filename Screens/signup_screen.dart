import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:mawazo/Screens/loading.dart';

import 'Home.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController firstNameInputController;
  TextEditingController lastNameInputController;
  TextEditingController idInputController;
  TextEditingController phoneInputController;
  TextEditingController emailInputController;
  TextEditingController pwdInputController;
  TextEditingController confirmPwdInputController;
  bool loading = false;
  @override
  void initState() {
    firstNameInputController = new TextEditingController();
    lastNameInputController = new TextEditingController();
    idInputController = new TextEditingController();
    phoneInputController = new TextEditingController();
    emailInputController = new TextEditingController();
    pwdInputController = new TextEditingController();
    confirmPwdInputController = new TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? SpinKit()
        : Scaffold(
            body: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.deepPurple[700],
                Colors.deepPurple[500],
                Colors.deepPurple[300],
              ], begin: Alignment.centerLeft, end: Alignment.topCenter)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                              Navigator.pushNamed(context, '/login');
                            }),
                        Text(
                          'Mawazo Agency ',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontFamily: 'Monoton',
                              color: Colors.white,
                              fontSize: 30.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Affordable Wananchi Housing',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontFamily: 'MajorMonoDisplay',
                              color: Colors.white,
                              fontSize: 15.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'SIGN UP',
                          style: TextStyle(
                              fontFamily: 'Khand-Bold', color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40.0),
                            topLeft: Radius.circular(40.0)),
                      ),
                      child: Form(
                        key: _formKey,
                        child: ListView(
                          children: <Widget>[
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                  width: 150,
                                  child: TextFormField(
                                    controller: firstNameInputController,
                                    maxLength: 15,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      labelText: 'First Name',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0)),
                                    ),
                                    showCursor: false,
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return 'Please Enter First Name';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                Container(
                                  width: 150,
                                  child: TextFormField(
                                    controller: lastNameInputController,
                                    maxLength: 15,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      labelText: 'Last Name',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0)),
                                    ),
                                    showCursor: false,
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return 'Please Enter Your Last Name ';
                                      }
                                      return null;
                                    },
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  width: double.infinity,
                                  height: 100,
                                  child: TextFormField(
                                    controller: idInputController,
                                    maxLength: 9,
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      labelText: 'ID Number or Passport',
                                      prefixIcon: Icon(
                                        Icons.portrait,
                                        size: 18.0,
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0)),
                                    ),
                                    showCursor: false,
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return 'Please Enter your ID Number Or Passport';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  width: double.infinity,
                                  height: 100,
                                  child: TextFormField(
                                    keyboardType: TextInputType.phone,
                                    maxLength: 10,
                                    controller: phoneInputController,
                                    decoration: InputDecoration(
                                      labelText: 'Phone Number',
                                      hintText: '07',
                                      prefixIcon: Icon(
                                        Icons.phone,
                                        size: 18.0,
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0)),
                                    ),
                                    showCursor: false,
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return 'Please Enter Your Phone Number';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  width: double.infinity,
                                  height: 80,
                                  child: TextFormField(
                                    controller: emailInputController,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      labelText: 'Email',
                                      prefixIcon: Icon(
                                        Icons.email,
                                        size: 18.0,
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0)),
                                    ),
                                    showCursor: false,
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return 'Please Enter Your Email ';
                                      }
                                      if (!RegExp(
                                              r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+')
                                          .hasMatch(value)) {
                                        return 'Please Enter Valid Email';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  width: double.infinity,
                                  height: 80,
                                  child: TextFormField(
                                    controller: pwdInputController,
                                    obscureText: true,
                                    keyboardType: TextInputType.visiblePassword,
                                    decoration: InputDecoration(
                                      labelText: 'Password',
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        size: 18.0,
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0)),
                                    ),
                                    showCursor: false,
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return 'Please Enter Your Password';
                                      }
                                      if (value.length < 8) {
                                        return 'Password must be longer than 8 characters';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  width: double.infinity,
                                  height: 80,
                                  child: TextFormField(
                                    controller: confirmPwdInputController,
                                    obscureText: true,
                                    keyboardType: TextInputType.visiblePassword,
                                    decoration: InputDecoration(
                                      labelText: 'Confirm Password',
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        size: 18.0,
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0)),
                                    ),
                                    showCursor: false,
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return 'Please Enter Your Password';
                                      }
                                      if (value.length < 8) {
                                        return 'Password must be longer than 8 characters';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 50.0),
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.deepPurple,
                                      borderRadius: BorderRadius.circular(40)),
                                  child: Center(
                                    child: FlatButton(
                                      onPressed: () {
                                        if (!_formKey.currentState.validate()) {
                                          setState(() {
                                            loading = true;
                                          });
                                          if (pwdInputController.text ==
                                              confirmPwdInputController.text) {
                                            FirebaseAuth.instance
                                                .createUserWithEmailAndPassword(
                                                    email: emailInputController
                                                        .text,
                                                    password:
                                                        pwdInputController.text)
                                                .then((currentUser) {
                                              Firestore.instance
                                                  .collection('Users')
                                                  .document(
                                                      currentUser.user.uid)
                                                  .setData({
                                                    "uid": currentUser.user.uid,
                                                    "First name":
                                                        firstNameInputController
                                                            .text,
                                                    "Last name":
                                                        lastNameInputController
                                                            .text,
                                                    "ID or Passport":
                                                        idInputController.text,
                                                    "Phone Number":
                                                        phoneInputController
                                                            .text,
                                                    "email":
                                                        emailInputController
                                                            .text,
                                                    // ignore: sdk_version_set_literal
                                                  })
                                                  .then((result) => {
                                                        Navigator.pushAndRemoveUntil(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        Home()),
                                                            (_) => false),
                                                        firstNameInputController
                                                            .clear(),
                                                        lastNameInputController
                                                            .clear(),
                                                        idInputController
                                                            .clear(),
                                                        phoneInputController
                                                            .clear(),
                                                        emailInputController
                                                            .clear(),
                                                        pwdInputController
                                                            .clear(),
                                                        confirmPwdInputController
                                                            .clear()
                                                      })
                                                  .catchError(
                                                      (err) => print(err));
                                            }).catchError((err) => print(err));
                                          } else {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    title: Text('Error !'),
                                                    content: Text(
                                                        'The passwords do not match'),
                                                    actions: <Widget>[
                                                      FlatButton(
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child: Text('Close'))
                                                    ],
                                                  );
                                                });
                                          }
                                        } else {
                                          setState(() {
                                            loading = false;
                                          });
                                        }
                                      },
                                      child: Text(
                                        'SIGN UP',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Khand-Light'),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 100,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
