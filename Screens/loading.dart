import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SpinKit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.deepPurple),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 200,
                ),
                SpinKitCircle(
                  size: 100,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 200,
                ),
                Text(
                  'Mawazo We Care',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Monoton', fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
