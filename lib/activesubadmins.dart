import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chatWithSubAdmin.dart';

class ActiveSubAdmins extends StatefulWidget {
  @override
  _ActiveSubAdminsState createState() => _ActiveSubAdminsState();
}

class _ActiveSubAdminsState extends State<ActiveSubAdmins> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sub Admins"),
        automaticallyImplyLeading: false,
        elevation: 1,
        backgroundColor: const Color(0xff001f21),
        centerTitle: true,
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),

        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                stops: [0.5, 1],
                colors: [const Color(0xff00363A), const Color(0xff006064)])),

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(

                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Color(0xff01292B),
                      borderRadius: BorderRadius.circular(7)

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sub Admin Name", textAlign: TextAlign.left,style: TextStyle(color: Colors.white),
                      ),
                      IconButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Chat())), icon: Icon(Icons.chat, color: Colors.green[300],))
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
