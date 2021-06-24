import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Client extends StatefulWidget {
  @override
  _ClientState createState() => _ClientState();
}

class _ClientState extends State<Client> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Client"),
        automaticallyImplyLeading: false,
        elevation: 1,
        backgroundColor: const Color(0xff001f21),
        centerTitle: true,
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                stops: [0.5, 1],
                colors: [const Color(0xff00363A), const Color(0xff006064)])),

        child: SingleChildScrollView(
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
