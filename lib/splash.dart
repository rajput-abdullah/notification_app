
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notification_app/login.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 2500), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );

      // navigateUser(); //It will redirect  after 3 seconds

    });

  }

  // void navigateUser() async{
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var status = prefs.getBool('isLoggedIn') ?? false;
  //   print(status);
  //   if (status) {
  //     screenNavigation(context, HomeScreen(false));
  //   } else {
  //      screenNavigation(context, SplashScreen());
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.blue, Colors.blueGrey],
          ),
        ),
        child: Stack(
          children: [
            splashContent(),
            versionNum(),
          ],
        ),
      ),
    );
  }

  Widget splashContent() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height:200,
              width: 200,
              child: Icon(Icons.notifications_active_sharp, size: 150, color: Colors.white,)),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Notification App',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget versionNum() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Text(
        'Version 1.0',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
