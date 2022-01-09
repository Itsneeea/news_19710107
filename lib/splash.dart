import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/main.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('img/aww.JPG'),
          ),
          Text(
            "Akhmad Noor Irfansyah",
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 25,
            ),
          ),
          Text(
            "Designer Graphic",
            style: TextStyle(
              color: Colors.white,
              fontSize: 23,
              letterSpacing: 2.5,
            ),
          ),
          SizedBox(
            height: 50.0,
            width: 150.0,
            child: Divider(
              color: Colors.lightBlueAccent,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.lightBlue,
              ),
              title: Text(
                "NPM : 19710107",
                style: TextStyle(color: Colors.lightBlue),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.star_border,
                color: Colors.lightBlue,
              ),
              title: Text(
                "Universitas Islam Kalimantan Muhammad Arsyad Al Banjari ",
                style: TextStyle(color: Colors.lightBlue),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                CupertinoIcons.chart_bar_circle,
                color: Colors.lightBlue,
              ),
              title: Text(
                "Stay Creative",
                style: TextStyle(color: Colors.lightBlue),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
// class cardProfile extends StatelessWidget {
//   const cardProfile({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//       ),
//     );
//   }
// }