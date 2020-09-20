import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForgotPwd extends StatefulWidget {
  @override
  _ForgotPwdState createState() => _ForgotPwdState();
}

class _ForgotPwdState extends State<ForgotPwd> {
  GlobalKey<FormState> fpwd = GlobalKey();
  TextEditingController emailInputController;
  @override
  void initState() {
    emailInputController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.deepPurple[700],
          Colors.deepPurple[500],
          Colors.deepPurple[300],
        ], begin: Alignment.centerLeft, end: Alignment.topCenter)),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Mawazo Agency ',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontFamily: 'Monoton',
                        color: Colors.white,
                        fontSize: 30.0),
                  ),
                  SizedBox(
                    height: 15.0,
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
                    height: 25.0,
                  ),
                  Center(
                    child: Text(
                      'Forgot Your Password',
                      style: TextStyle(
                          fontFamily: 'MajorMonoDisplay', color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0)),
                  color: Colors.white,
                ),
                child: ListView(children: <Widget>[
                  Form(
                      key: fpwd,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'enter your registered email to send reset password',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'MajorMonoDisplay'),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                              controller: emailInputController,
                              showCursor: false,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(FontAwesomeIcons.google),
                                  labelText: 'Email',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40))),
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please Enter your Valid Registered Email';
                                }
                                if (!RegExp(
                                        r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+')
                                    .hasMatch(value)) {
                                  return 'Enter Valid Email is Required';
                                }
                                return null;
                              },
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            height: 50,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.deepPurple[700],
                                      Colors.deepPurple[500],
                                      Colors.deepPurple[300],
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.topCenter),
                                borderRadius: BorderRadius.circular(40)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  FontAwesomeIcons.replyAll,
                                  color: Colors.white,
                                ),
                                FlatButton(
                                  onPressed: () {
                                    if (!fpwd.currentState.validate()) {}
                                  },
                                  child: Text(
                                    'Send Password',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Khand-Light'),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ))
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
