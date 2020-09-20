import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mawazo/Models/Dataset.dart';
import 'package:mawazo/Screens/login_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<HomeData> data1 = [
    HomeData(
        imagePlot: 'assets/image/try.jpg',
        propertyName: 'KARROTS',
        place: 'NAKURU (KIAMUNYI)',
        typeOfProperty: 'ONE BEDROOM',
        price: 12000.00,
        description: 'Karrots is a ',
        caretaker: 0712565369,
        caretaker_name: 'Esther Mulama',
        amenities: 'WIFI, WATER, ELECTRICITY, CARGO watchman',
        rules: 'NO smoking, NO LOUD MUSIC'),
    HomeData(
      imagePlot: 'assets/image/try.jpg',
      propertyName: 'PESH JOINT',
      place: 'NAIROBI (MATHARE A3)',
      typeOfProperty: 'ONE BEDROOM',
      price: 12000.00,
    ),
    HomeData(
      imagePlot: 'assets/image/try.jpg',
      propertyName: 'PESH JOINT',
      place: 'NAIROBI (MATHARE A3)',
      typeOfProperty: 'ONE BEDROOM',
      price: 12000.00,
    ),
    HomeData(
      imagePlot: 'assets/image/try.jpg',
      propertyName: 'PESH JOINT',
      place: 'NAIROBI (MATHARE A3)',
      typeOfProperty: 'ONE BEDROOM',
      price: 12000.00,
    ),
    HomeData(
      imagePlot: 'assets/image/try.jpg',
      propertyName: 'PESH JOINT',
      place: 'NAIROBI (MATHARE A3)',
      typeOfProperty: 'ONE BEDROOM',
      price: 12000.00,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mawazo Homes',
          style: TextStyle(fontSize: 10, fontFamily: 'MajorMonoDisplay'),
        ),
        elevation: 0.0,
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Search()));
                  })),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  icon: Icon(
                    Icons.person_outline,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: Text(
                              'Mawazo We Care',
                              style: TextStyle(
                                  fontFamily: 'MajorMonoDisplay',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple,
                                  fontSize: 16),
                            ),
                            actions: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.people,
                                        color: Colors.deepPurple,
                                        size: 19,
                                      ),
                                      FlatButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                            Navigator.pushNamed(
                                                context, '/profile');
                                          },
                                          child: Text(
                                            'MY PROFILE',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black,
                                                fontFamily: 'Khand-Light'),
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.exit_to_app,
                                        color: Colors.deepPurple,
                                        size: 19,
                                      ),
                                      FlatButton(
                                          onPressed: () {
                                            FirebaseAuth.instance
                                                .signOut()
                                                .then((value) {
                                              Navigator.of(context)
                                                  .pushAndRemoveUntil(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              SignIn()),
                                                      (Route<dynamic> route) =>
                                                          false);
                                            }).catchError((err) {
                                              print(err);
                                            });
                                          },
                                          child: Text(
                                            'SIGN OUT',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black,
                                                fontFamily: 'Khand-Light'),
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          );
                        });
                  })),
        ],
      ),
      body: ListView.builder(
          itemCount: data1.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                borderOnForeground: true,
                elevation: 30,
                margin: EdgeInsets.all(5),
                child: Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 200,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage(data1[index].imagePlot),
                                )),
                              );
                            });
//                          Navigator.of(context).pop();
                      },
                      child: Image(
                        image: AssetImage(data1[index].imagePlot),
                        width: double.infinity,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'BUILDING NAME:',
                            style: TextStyle(
                                fontFamily: 'Khand-Light', fontSize: 10),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            data1[index].propertyName,
                            style: TextStyle(
                                fontFamily: 'Khand-Light', fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'BUILDING LOCATION:',
                            style: TextStyle(
                                fontFamily: 'Khand-Light', fontSize: 10),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.location_on,
                              color: Colors.deepPurple, size: 15),
                          Text(
                            '${data1[index].place}',
                            style: TextStyle(
                                fontFamily: 'Khand-Light', fontSize: 10),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'BUILDING TYPE:',
                            style: TextStyle(
                                fontFamily: 'Khand-Light', fontSize: 10),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            data1[index].typeOfProperty,
                            style: TextStyle(
                                fontFamily: 'Khand-Light', fontSize: 10),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.hotel, color: Colors.deepPurple, size: 15),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'PRICE PER ROOM:',
                            style: TextStyle(
                                fontFamily: 'Khand-Light', fontSize: 10),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '${data1[index].price}',
                            style: TextStyle(
                                fontFamily: 'Khand-Light', fontSize: 10),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.local_offer,
                              color: Colors.deepPurple, size: 15)
                        ],
                      ),
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
                            Icon(Icons.view_list, color: Colors.white),
                            FlatButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Card();
                                      });
                                },
                                child: Text(
                                  'View All',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            );
          }),
      drawer: Drawer(
          child: Column(children: <Widget>[
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40)),
            gradient: LinearGradient(colors: [
              Colors.deepPurple[700],
              Colors.deepPurple[500],
              Colors.deepPurple[300],
            ], begin: Alignment.centerLeft, end: Alignment.topCenter),
          ),
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: ListView(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Welcome',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Monoton',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Mawazo Agency',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'MajorMonoDisplay'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'We Value Customer\'s Interest And Trust',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Khand-Light'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ListTile(
          title: Text(
            'Home',
            style: TextStyle(fontSize: 10),
          ),
          leading: Icon(
            Icons.home,
            color: Colors.deepPurple,
          ),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        Divider(),
        ListTile(
          title: Text('About', style: TextStyle(fontSize: 10)),
          leading: Icon(
            Icons.web,
            color: Colors.deepPurple,
          ),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.pushNamed(context, '/about');
          },
        ),
        Divider(),
        ListTile(
          title: Text('Help & FeedBack', style: TextStyle(fontSize: 10)),
          leading: Icon(
            Icons.help,
            color: Colors.deepPurple,
          ),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.pushNamed(context, '/help');
          },
        ),
        Divider(),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ListTile(
              title: Text('Close', style: TextStyle(fontSize: 10)),
              onTap: () {
                Navigator.of(context).pop();
              },
              leading: Icon(
                Icons.close,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ])),
    );
  }
}

class ViewAll extends StatefulWidget {
  @override
  _ViewAllState createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Your Dream Home',
                  style:
                      TextStyle(fontFamily: 'MajorMonoDisplay', fontSize: 16),
                ),
              ],
            ),
            Text(
              'Mawazo We Care',
              style: TextStyle(fontFamily: 'MajorMonoDisplay', fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView());
  }
}
