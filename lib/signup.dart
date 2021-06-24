import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notification_app/login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final formKeyDropDownSelectCurrencyFormField = new GlobalKey<FormState>();
  String selectedCurrencyId = "";
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  int _verticalGroupValue = 0 ;
  int selectedRadio=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: const Color(0xff00363A),
        centerTitle: true,
      ),
      body: WillPopScope(
        child: SafeArea(
          child: Container(
            height: double.infinity,
            padding: new EdgeInsets.fromLTRB(40.0, 0, 40, 5),

            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                    stops: [0.5, 1],
                    colors: [const Color(0xff00363A), const Color(0xff006064)])),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                      padding: new EdgeInsets.only(top: 5),
                      height:150,
                      width: 150,
                      child: Icon(Icons.notifications_active_sharp, size: 150,color: Colors.white,)),
                  SizedBox(
                    height: 15,
                  ),
                  Container(child: Text('Sign Up', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 25),),),
                  SizedBox(
                    height: 15,
                  ),
                  Container(child: Text('Sign Up As:', textAlign: TextAlign.left, style: TextStyle(color: Colors.white, fontSize: 15),),),

                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Radio(
                        hoverColor: Colors.white,
                        activeColor:Colors.blue[300],
                        value: 0,
                        groupValue: _verticalGroupValue,
                        onChanged: (val) {
                          print("Radio $val");
                          setSelectedRadio(val);
                        },

                      ),
                      new Text(
                        'Admin',
                        style: new TextStyle(fontSize: 15.0, color: Colors.white),
                      ),
                      new Radio(
                        hoverColor: Colors.white,
                        activeColor:Colors.blue[300],
                        value: 1,
                        groupValue: _verticalGroupValue,
                        onChanged: (val) {
                          print("Radio $val");
                          setSelectedRadio(val);
                        },
                      ),
                      new Text(
                        'Sub-Admin',
                        style: new TextStyle(fontSize: 15.0, color: Colors.white),
                      ),
                      new Radio(
                        hoverColor: Colors.white,
                        activeColor: Colors.blue[300],
                        value: 2,
                        groupValue: _verticalGroupValue,
                        onChanged: (val) {
                          print("Radio $val");
                          setSelectedRadio(val);
                        },

                      ),
                      new Text(
                        'Client',
                        style: new TextStyle(fontSize: 15.0, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),

                  Container(
                    // padding: new EdgeInsets.only(top: 50),
                    child: Text(
                      'Username',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(bottom: 40.0),
                      child: Theme(
                        data: ThemeData(
                            backgroundColor: Colors.white, hintColor: Colors.green),
                        child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.drive_file_rename_outline, color: Colors.white,),
                              hintStyle:
                              TextStyle(fontSize: 15, color: Colors.grey[400]),
                              hintText: 'Enter Username',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            )),
                      )),

                  Text(
                    ' Password',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[500],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 40.0),
                    child: Theme(
                      data: ThemeData(
                          backgroundColor: Colors.white, hintColor: Colors.green),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.vpn_key, color: Colors.white,),
                          hintStyle:
                          TextStyle(fontSize: 15, color: Colors.grey[400]),
                          hintText: 'Enter Password',
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

                  SizedBox(
                    height: 50.0,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
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
                        'Sign Up',
                        style: TextStyle(color: Colors.green[900]),
                      ),
                    ),
                  ),

                 Container(
                   margin: EdgeInsets.only(top: 130),
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('Developed by SystemsSol', style: TextStyle(color: Colors.grey[600], fontSize: 15),)),

                  ),

                ],
              ),
            ),
          ),
        ),
        onWillPop:()  async =>  true,
      ),
    );
  }
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
      _verticalGroupValue = selectedRadio;
    });
  }

}
