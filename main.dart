import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mawazo/Models/SlideItem.dart';
import 'package:mawazo/Screens/About.dart';
import 'package:mawazo/Screens/AdminScreens/Mpesa.dart';
import 'package:mawazo/Screens/AdminScreens/Rent%20Paid.dart';
import 'package:mawazo/Screens/AdminScreens/Requests.dart';
import 'package:mawazo/Screens/Admin_login.dart';
import 'package:mawazo/Screens/Forget_password.dart';
import 'package:mawazo/Screens/HelpDesk.dart';
import 'package:mawazo/Screens/Home.dart';
import 'package:mawazo/Screens/login_screen.dart';
import 'package:mawazo/Screens/profile.dart';
import 'package:mawazo/Screens/signup_screen.dart';

import 'Screens/AdminScreens/RentalHouses.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: Colors.deepPurple, errorColor: Colors.deepPurple),
    home: Home(),
    routes: {
      '/slide': (context) => SlideHome(),
      '/login': (context) => SignIn(),
      '/signup': (context) => SignUp(),
      '/home': (context) => Home(),
      '/about': (context) => About(),
      '/help': (context) => HelpDesks(),
      '/profile': (context) => Profile(),
      '/request': (context) => Request(),
      '/rent': (context) => RentPaid(),
      '/panel': (context) => Panel(),
      '/mpesa': (context) => Messages(),
      '/rental': (context) => Rental(),
      '/view': (context) => ViewAll(),
      '/fpwd': (context) => ForgotPwd()
    },
  ));
}

class SlideHome extends StatefulWidget {
  @override
  _SlideHomeState createState() => _SlideHomeState();
}

class _SlideHomeState extends State<SlideHome> {
  List<Slide> slides = [
    Slide(
        imagePath: 'assets/image/illustration.png',
        title: 'Online House Booking Agency',
        desc:
            'Are You tired of Looking for Rental House By Yourself?.Worry Not Mawazo Agency Cares About your Needs Bring Affordable Houses at your Fingertips.'),
    Slide(
        imagePath: 'assets/image/illustration3.png',
        title: 'Travel With Mawazo Agency',
        desc:
            'Did You Know Have Authority And Power in Your Pocket?. You Can Checkout Our Rental Houses While You are Away. '),
    Slide(
        imagePath: 'assets/image/image1.jpg',
        title: 'Comfortable Rental Houses',
        desc:
            'As Mawazo Agency We Ensure Totally Security And Privacy Home. Paradise is Where You are Free And Comfy. '),
  ];
  // Follows handles the Slider dots Which are the containers
  Widget pageIndexIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
          color: isCurrentPage ? Colors.grey : Colors.grey[800],
          borderRadius: BorderRadius.circular(12.0)),
    );
  }

  int currentIndex = 0;
  PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
          itemCount: slides.length,
          controller:
              _pageController, // controls how the page will be handled in the transition
          onPageChanged: (val) {
            setState(() {
              currentIndex =
                  val; // notes the change of the indexing of the pages
            });
          },
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(slides[index].imagePath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Text(
                        slides[index].title,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: (currentIndex != slides.length - 1)
                              ? Colors.deepPurple
                              : Colors.teal,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                          fontFamily: 'MajorMonoDisplay',
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        slides[index].desc,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'Khand-Light',
                        ),
                      )
                    ],
                  ),
                ),
              ],
            );
          }),
      bottomSheet: currentIndex != slides.length - 1
          ? Container(
              color: Colors.white,
              height: Platform.isIOS ? 70 : 60,
              padding: EdgeInsets.symmetric(horizontal: 2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      _pageController.animateToPage(slides.length - 1,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOutCubic);
                    },
                    child: Text(
                      'SKIP',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Khand-Light',
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      //we are handling the slides dot by incrementing the current index
                      // ignore: sdk_version_ui_as_code
                      for (int i = 0; i < slides.length; i++)
                        currentIndex == i
                            ? pageIndexIndicator(true)
                            : pageIndexIndicator(false)
                    ],
                  ),
                  InkWell(
                      onTap: () {
                        _pageController.animateToPage(currentIndex + 1,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeOutQuint);
                      },
                      child: Text('NEXT',
                          style: TextStyle(
                            color: Colors.deepPurple,
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Khand-Light',
                          ))),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: Platform.isIOS ? 70 : 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: ListView(
                              children: <Widget>[
                                SizedBox(
                                  height: 15,
                                ),
                                Center(
                                    child: Text(
                                  'privacy policy',
                                  style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontFamily: 'MajorMonoDisplay'),
                                )),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'As Mawazo Agency, We are Ensuring Secure Connection of your personal details, this page is used to inform you regarding our policies with the collection,use and disclosure of personal information if anyone decided to use our service',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(fontFamily: 'Khand-Light'),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'If you choose to use our service, then you agree to collection and use of information in relation to this policy. The information in relation to this policy. The personal information'
                                  'that we collect is used for providing and improving the Service.We will not use or share your information with anyone expect as described in this privacy policy.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(fontFamily: 'Khand-Light'),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'information collection and use.',
                                  style: TextStyle(
                                      fontFamily: 'MajorMonoDisplay',
                                      color: Colors.deepPurple),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'For a better Experience, While Using our service, We may you to provide us with certain personally identifiable information, including but not limited to your Phone number, name,email and National identification Number or Passport. '
                                  'The Information that we request is will be retained by us and used as described in this privacy policy.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(fontFamily: 'Khand-Light'),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'The App does use third party services providers used by the app such as Google Play Services,Firebase Analytics and Crashlytics.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(fontFamily: 'Khand-Light'),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Center(
                                  child: Text(
                                    'service providers',
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontFamily: 'MajorMonoDisplay'),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'We may employ third-party companies and individual due to the following reasons such as to facilitate our service, provide the service on behalf, perform Service-related services or assist us in analying how our service is used.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(fontFamily: 'Khand-Light'),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'We want to inform us users of this Service that these third parties have access to your personal information.the reason is to perform the task assigned to them on our behalf. However, they are obligated not ot disclose or use the information for any other purpose',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(fontFamily: 'Khand-Light'),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Center(
                                    child: Text(
                                  'children\'s privacy',
                                  style: TextStyle(
                                      fontFamily: 'MajorMonoDisplay',
                                      color: Colors.deepPurple),
                                )),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'These Services do not address anyone under the age of 18.We do not knowingly collect personally identifiable information from children under 18 has provided us with personal information, we immediately delete this from our servers. if you are aware that '
                                  'your child has provided us with personal information, please contact us so that we will be able to do necessary actions.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(fontFamily: 'Khand-Light'),
                                )
                              ],
                            ),
                            actions: <Widget>[
                              Column(
                                children: <Widget>[
                                  FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      Navigator.pushNamed(context, '/login');
                                    },
                                    child: Text(
                                      'agree',
                                      style: TextStyle(
                                          color: Colors.deepPurple,
                                          fontFamily: 'MajorMonoDisplay'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      Navigator.pushNamed(context, '/slide');
                                    },
                                    child: Text(
                                      'disagree',
                                      style: TextStyle(
                                          color: Colors.deepPurple,
                                          fontFamily: 'MajorMonoDisplay'),
                                    ),
                                  )
                                ],
                              )
                            ],
                          );
                        });
                  },
                  child: Center(
                      child: Text(
                    'GET STARTED NOW',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        letterSpacing: 1.0,
                        fontFamily: 'Khand-Light',
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
    );
  }
}
