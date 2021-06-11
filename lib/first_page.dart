import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: const Color(0xff00363A),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          padding: new EdgeInsets.fromLTRB(10.0, 80, 10, 0),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  stops: [0.5, 1],
                  colors: [const Color(0xff00363A), const Color(0xff006064)])),
          child: SingleChildScrollView(
            child: Wrap(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () =>
                          null,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(60, 32, 60, 40),
                                  child: Icon(
                                    Icons.note_add_rounded,
                                    size: 45,
                                    color: const Color(0xff006064),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 140,
                                width: 160,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 40),
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      'Push Notification',
                                      style: TextStyle(
                                        color: Colors.green[900],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () =>
                          null,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(60, 32, 60, 40),
                                  child: Icon(
                                    Icons.paste_rounded,
                                    size: 45,
                                    color: const Color(0xff006064),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 140,
                                width: 160,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 50),
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      'Help',
                                      style: TextStyle(
                                        color: Colors.green[900],
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     GestureDetector(
                //       onTap: () => Navigator.pushNamed(context, '/dashboard'),
                //       child: Container(
                //         padding: EdgeInsets.all(5),
                //         child: Card(
                //           semanticContainer: true,
                //           clipBehavior: Clip.antiAliasWithSaveLayer,
                //           shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(10.0),
                //           ),
                //           elevation: 5,
                //           child: Stack(
                //             children: <Widget>[
                //               Align(
                //                 alignment: Alignment.center,
                //                 child: Container(
                //                   margin: EdgeInsets.fromLTRB(60, 32, 60, 40),
                //                   child: Icon(
                //                     Icons.select_all_sharp,
                //                     size: 45,
                //                     color: const Color(0xff006064),
                //                   ),
                //                 ),
                //               ),
                //               SizedBox(
                //                 height: 140,
                //                 width: 160,
                //                 child: Align(
                //                   alignment: Alignment.center,
                //                   child: Container(
                //                     margin: EdgeInsets.only(top: 40),
                //                     padding: EdgeInsets.all(10),
                //                     child: Text(
                //                       'Dashboard',
                //                       style: TextStyle(
                //                         color: Colors.green[900],
                //                       ),
                //                       textAlign: TextAlign.center,
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //
                //     GestureDetector(
                //       onTap: () => Navigator.pushNamed(
                //           context, '/ProjectStatusInfoList'),
                //       child: Container(
                //         padding: EdgeInsets.all(5),
                //         child: Card(
                //           semanticContainer: true,
                //           clipBehavior: Clip.antiAliasWithSaveLayer,
                //           shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(10.0),
                //           ),
                //           elevation: 5,
                //           child: Stack(
                //             children: <Widget>[
                //               Align(
                //                 alignment: Alignment.center,
                //                 child: Container(
                //                   margin: EdgeInsets.fromLTRB(60, 32, 60, 40),
                //                   child: Icon(
                //                     Icons.info,
                //                     size: 45,
                //                     color: const Color(0xff006064),
                //                   ),
                //                 ),
                //               ),
                //               SizedBox(
                //                 height: 140,
                //                 width: 160,
                //                 child: Align(
                //                   alignment: Alignment.center,
                //                   child: Container(
                //                     margin: EdgeInsets.only(top: 40),
                //                     padding: EdgeInsets.all(10),
                //                     child: Text(
                //                       'Project Status Info',
                //                       style: TextStyle(
                //                         color: Colors.green[900],
                //                       ),
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     GestureDetector(
                //       onTap: () => Navigator.pushNamed(context, '/projects'),
                //       child: Container(
                //         padding: EdgeInsets.all(5),
                //         child: Card(
                //           semanticContainer: true,
                //           clipBehavior: Clip.antiAliasWithSaveLayer,
                //           shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(10.0),
                //           ),
                //           elevation: 5,
                //           child: Stack(
                //             children: <Widget>[
                //               Align(
                //                 alignment: Alignment.center,
                //                 child: Container(
                //                   margin: EdgeInsets.fromLTRB(60, 32, 60, 40),
                //                   child: Icon(
                //                     Icons.list_alt_sharp,
                //                     size: 45,
                //                     color: const Color(0xff006064),
                //                   ),
                //                 ),
                //               ),
                //               SizedBox(
                //                 height: 140,
                //                 width: 160,
                //                 child: Align(
                //                   alignment: Alignment.center,
                //                   child: Container(
                //                     margin: EdgeInsets.only(top: 40),
                //                     padding: EdgeInsets.all(10),
                //                     child: Text(
                //                       'Project Status Detail',
                //                       style: TextStyle(
                //                         color: Colors.green[900],
                //                       ),
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //     GestureDetector(
                //       onTap: () => Navigator.pushNamed(
                //           context, '/AllProjectListForUpdateProgress'),
                //       child: Container(
                //         padding: EdgeInsets.all(5),
                //         child: Card(
                //           semanticContainer: true,
                //           clipBehavior: Clip.antiAliasWithSaveLayer,
                //           shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(10.0),
                //           ),
                //           elevation: 5,
                //           child: Stack(
                //             children: <Widget>[
                //               Align(
                //                 alignment: Alignment.center,
                //                 child: Container(
                //                   margin: EdgeInsets.fromLTRB(60, 32, 60, 40),
                //                   child: Icon(
                //                     Icons.update_outlined,
                //                     size: 45,
                //                     color: const Color(0xff006064),
                //                   ),
                //                 ),
                //               ),
                //               SizedBox(
                //                 height: 140,
                //                 width: 160,
                //                 child: Align(
                //                   alignment: Alignment.center,
                //                   child: Container(
                //                     margin: EdgeInsets.only(top: 40),
                //                     padding: EdgeInsets.all(10),
                //                     child: Text(
                //                       'Update Progress',
                //                       style: TextStyle(
                //                         color: Colors.green[900],
                //                       ),
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     GestureDetector(
                //       onTap: () => Navigator.pushNamed(
                //           context, '/AllProjectListForAddingCost'),
                //       child: Container(
                //         padding: EdgeInsets.all(5),
                //         child: Card(
                //           semanticContainer: true,
                //           clipBehavior: Clip.antiAliasWithSaveLayer,
                //           shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(10.0),
                //           ),
                //           elevation: 5,
                //           child: Stack(
                //             children: <Widget>[
                //               Align(
                //                 alignment: Alignment.center,
                //                 child: Container(
                //                   margin: EdgeInsets.fromLTRB(60, 32, 60, 40),
                //                   child: Icon(
                //                     Icons.add_box_outlined,
                //                     size: 45,
                //                     color: const Color(0xff006064),
                //                   ),
                //                 ),
                //               ),
                //               SizedBox(
                //                 height: 140,
                //                 width: 160,
                //                 child: Align(
                //                   alignment: Alignment.center,
                //                   child: Container(
                //                     margin: EdgeInsets.only(top: 50),
                //                     padding: EdgeInsets.all(10),
                //                     child: Text(
                //                       'Update Project Cost',
                //                       style: TextStyle(
                //                         color: Colors.green[900],
                //                       ),
                //                       textAlign: TextAlign.center,
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //     GestureDetector(
                //       onTap: () => Navigator.pushNamed(
                //           context, '/AllProjectListForPostingCost'),
                //       child: Container(
                //         padding: EdgeInsets.all(5),
                //         child: Card(
                //           semanticContainer: true,
                //           clipBehavior: Clip.antiAliasWithSaveLayer,
                //           shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(10.0),
                //           ),
                //           elevation: 5,
                //           child: Stack(
                //             children: <Widget>[
                //               Align(
                //                 alignment: Alignment.center,
                //                 child: Container(
                //                   margin: EdgeInsets.fromLTRB(60, 32, 60, 40),
                //                   child: Icon(
                //                     Icons.add,
                //                     size: 45,
                //                     color: const Color(0xff006064),
                //                   ),
                //                 ),
                //               ),
                //               SizedBox(
                //                 height: 140,
                //                 width: 160,
                //                 child: Align(
                //                   alignment: Alignment.center,
                //                   child: Container(
                //                     margin: EdgeInsets.only(top: 40),
                //                     padding: EdgeInsets.all(10),
                //                     child: Text(
                //                       'Update Receivables',
                //                       style: TextStyle(
                //                         color: Colors.green[900],
                //                       ),
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //
                //   ],
                // ),

                // Container(
                //   margin: EdgeInsets.only(left: 15,right: 15),
                //   child: GestureDetector(
                //     onTap: () => Navigator.pushNamed(context, '/AllProjectListForRequestPayment'),
                //     child: Card(
                //       semanticContainer: true,
                //       clipBehavior: Clip.antiAliasWithSaveLayer,
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(10.0),
                //       ),
                //       elevation: 5,
                //       child: Container(
                //         padding: EdgeInsets.all(15),
                //
                //         child: Row(
                //           children: <Widget>[
                //             Icon(Icons.request_page, size: 35,color:const Color(0xff006064) ,),
                //             Container(
                //               margin: EdgeInsets.only(left: 10),
                //               child: Text(
                //                 'Request Payment Against Project',
                //                 style: TextStyle(
                //                   color: Colors.green[900],
                //                 ),
                //                 textAlign: TextAlign.center,
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
