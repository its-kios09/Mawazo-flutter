import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mawazo/Screens/loading.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController emailInputController;
  TextEditingController pwdInputController;
  bool loading = false;
  @override
  void initState() {
    pwdInputController = TextEditingController();
    emailInputController = TextEditingController();
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
                Colors.deepPurple[300]
              ], begin: Alignment.topCenter, end: Alignment.centerLeft)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'WELCOME',
                          style: TextStyle(
                              fontFamily: 'Monoton',
                              color: Colors.white,
                              fontSize: 30.0),
                        ),
                        Text(
                          'Mawazo We Care',
                          style: TextStyle(
                              fontFamily: 'MajorMonoDisplay',
                              color: Colors.white,
                              fontSize: 15.0),
                        ),
                        SizedBox(height: 5.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'SIGN IN',
                              style: TextStyle(
                                  fontFamily: 'Khand-Bold',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              child: Center(
                                child: IconButton(
                                    icon: Icon(
                                      Icons.supervised_user_circle,
                                      color: Colors.white,
                                      size: 50,
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      Navigator.pushNamed(context, '/panel');
                                    }),
                              ),
                            )
                          ],
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
                      child: ListView(
                        children: <Widget>[
                          Form(
                            key: _formKey,
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 30.0),
                                Container(
                                  padding: EdgeInsets.all(14.0),
                                  child: TextFormField(
                                    controller: emailInputController,
                                    decoration: InputDecoration(
                                      labelText: 'Email',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          borderSide: BorderSide(
                                              color: Colors.deepPurple)),
                                      prefixIcon: Icon(
                                        FontAwesomeIcons.google,
                                        size: 18.0,
                                      ),
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return 'Please Enter Email is Required';
                                      }
                                      if (!RegExp(
                                              r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+')
                                          .hasMatch(value)) {
                                        return 'Please Enter Valid Email';
                                      }
                                      return null;
                                    },
                                    showCursor: false,
                                  ),
                                ),
                                SizedBox(height: 20.0),
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    controller: pwdInputController,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      labelText: 'Password',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          borderSide: BorderSide(
                                              color: Colors.deepPurple)),
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        size: 18.0,
                                      ),
                                    ),
                                    keyboardType: TextInputType.visiblePassword,
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return 'Please Enter your Password is Required';
                                      }
                                      if (value.length < 8) {
                                        return 'Password must be longer than 8 characters';
                                      }
                                      return null;
                                    },
                                    showCursor: false,
                                  ),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Container(
                                  height: 50.0,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 50.0),
                                  decoration: BoxDecoration(
                                      color: Colors.deepPurple,
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  child: Center(
                                    child: FlatButton(
                                      onPressed: (){
                                        if (!_formKey.currentState.validate()) {
                                          setState(() {
                                            loading = true;
                                          });
                                          FirebaseAuth.instance
                                              .signInWithEmailAndPassword(
                                              email:
                                              emailInputController.text,
                                              password:
                                              pwdInputController.text)
                                              .then((currentUser) => Firestore
                                              .instance
                                              .collection('Users')
                                              .document(
                                              currentUser.user.uid)
                                              .get()
                                              .then((DocumentSnapshot
                                          result) {
                                            Navigator
                                                .pushReplacementNamed(
                                                context, '/home');
                                          }).catchError(
                                                  (err) => print(err)))
                                              .catchError((err) => print(err));
                                        } else {
                                          setState(() {
                                            loading = false;
                                          });
                                        }
                                      },
                                      child: Text(
                                        'SIGN IN',
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
                                  height: 20.0,
                                ),
                                FlatButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/fpwd');
                                  },
                                  child: Text(
                                    'Forgot Password ?',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Khand-Light'),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Don\'t Have an Account ?',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Khand-Light'),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Container(
                                  height: 50.0,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 50.0),
                                  decoration: BoxDecoration(
                                      color: Colors.deepPurple,
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  child: Center(
                                    child: FlatButton(
                                    onPressed: (){
                                      Navigator.pushNamed(context, '/signup');
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
                                  height: 80.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
  }
}
