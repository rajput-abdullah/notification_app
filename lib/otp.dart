import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notification_app/signup.dart';

class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: const Color(0xff00363A),
        centerTitle: true,),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                stops: [0.5, 1],
                colors: [const Color(0xff00363A), const Color(0xff006064)])),

        child: SingleChildScrollView
          (
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 30,),
              Container(
                child: Text("Sign Up", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 25),),
              ),
              SizedBox(height: 30,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),

                child: Text(
                'Otp',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[500],
                ),textAlign: TextAlign.left,
              ),),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.only(bottom: 40.0),
                child: Theme(
                  data: ThemeData(
                      backgroundColor: Colors.white, hintColor: Colors.green),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.code_outlined, color: Colors.white,),
                      hintStyle:
                      TextStyle(fontSize: 15, color: Colors.grey[400]),
                      hintText: 'Code - 6 Digit',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),

                height: 50.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.white,
                  highlightColor: Colors.orangeAccent,
                  color: Colors.white,
                  elevation: 4.0,
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.green[900]),
                  ),
                ),
              ),

            ],

          ),
        ),
      ),
    );
  }
}
