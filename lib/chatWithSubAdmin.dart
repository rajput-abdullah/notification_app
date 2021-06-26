import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chat"),
        automaticallyImplyLeading: true,
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


          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // SingleChildScrollView(
                  //   child: Column
                  //     (
                  //     children: [
                  //       Text('data'),
                  //       Text('data'),
                  //       Text('data'),
                  //       Text('data'),
                  //       Text('data'),
                  //       Text('data'),
                  //     ],
                  //   ),
                  // ),
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                            padding: EdgeInsets.all(1),
                            child: Theme(
                              data: ThemeData(
                                  backgroundColor: Colors.white,
                                  hintColor: Colors.green),
                              child: TextField(
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    filled: true,
                                    // contentPadding: EdgeInsets.only(bottom: 9),
                                    fillColor: Colors.blueGrey,
                                    suffixIcon: IconButton(icon:Icon(Icons.attach_file_sharp, color: Colors.green[300],)),
                                    prefixIcon: IconButton(icon:Icon(Icons.emoji_emotions_rounded, color: Colors.green[300],)),
                                    counterText: "",
                                    hintStyle: TextStyle(
                                        fontSize: 15, color: Colors.grey[400]),
                                    hintText: 'Type a message',
                                    enabledBorder: UnderlineInputBorder(

                                      borderRadius: BorderRadius.circular(20),

                                      borderSide:
                                      BorderSide(color: Colors.transparent),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),

                                      borderSide:
                                      BorderSide(color: Colors.transparent),
                                    ),
                                    border: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                  )),
                            )),
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(6),
                            margin: EdgeInsets.only(left: 15),

                            decoration: BoxDecoration(
                                color: Colors.green[300],
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: IconButton(icon: Icon(Icons.keyboard_voice_sharp,color: Colors.white,), ),
                          ))],
                  )

                ],
              ),
            ],
          ),

      ),
    );
  }
}
