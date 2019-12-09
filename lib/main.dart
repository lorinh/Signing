import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'dart:ui';
import 'package:signature/signature.dart';

void main() {
  runApp(MaterialApp(
    title: 'Plugin example app',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _signatureCanvas = Signature(
    //width: 300,
    height: 100,
    //backgroundColor: Colors.lightBlueAccent,
    backgroundColor: Colors.transparent,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          PhotoView(
            imageProvider: AssetImage("assets/Waiver.png"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 100,
                //color: Colors.purple,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                    child: Container(
                      decoration: new BoxDecoration(
                          color: Colors.grey.withOpacity(0.3)),
                      child: Stack(
                        children: [
                          Center(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(50, 25, 20, 0),
                                    child: Container(
                                      color: Colors.white,
                                      height: 3,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  child: FlatButton(
                                    child: Icon(
                                      Icons.check_circle_outline,
                                      color: Colors.white,
                                      size: 50.0,
                                    ),
                                    onPressed: (){print("Pressed");},
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 90, 0),
                            child: _signatureCanvas,
                          ),
                        ],
                      ),
                      //color: Colors.yellow,
                    ),
                  ),
                ),
              ),
            ],
          ),
          //     Container(
          //       //alignment: Alignment.bottomCenter,
          //       color: Colors.red,
          //       height: 50,
          //       //decoration: BoxDecoration(b),
          //       child: BackdropFilter(
          //       filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          //       child: new Container(
          //           decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
          // // ),
          //     ),
        ],
      ),
    );
    // );
  }

  // @override
  // Widget build(BuildContext context) {
  //   print(pathPDF);
  //   return pathPDF != ""
  //       ? Stack(
  //           children: [
  //             // Column(
  //             //   mainAxisSize: MainAxisSize.max,
  //             //   mainAxisAlignment: MainAxisAlignment.end,
  //             //   children: [
  //             //     Container(
  //             //       color: Colors.red,
  //             //       height: 50.0,
  //             //       width: 50,
  //             //       //constraints: BoxConstraints.expand(),
  //             //     ),
  //             //   ],
  //             // ),
  //             PDFViewerScaffold(
  //               appBar: AppBar(
  //                 title: Text("Document"),
  //                 actions: <Widget>[
  //                   IconButton(
  //                     icon: Icon(Icons.share),
  //                     onPressed: () {},
  //                   ),
  //                 ],
  //               ),
  //               path: pathPDF,
  //             ),
  //             Container(
  //               color: Colors.white,
  //             ),
  //             // Container(
  //             // color: Colors.red,
  //             //child: Text("This is normally a name"),
  //             // height: 100,
  //             //padding: EdgeInsets.all(20),
  //             //height: 50.0,
  //             //width: 50,
  //             //alignment: Alignment(100, -5000000),
  //             //constraints: BoxConstraints.expand(),
  //             // ),
  //             Column(
  //               mainAxisSize: MainAxisSize.max,
  //               mainAxisAlignment: MainAxisAlignment.end,
  //               children: [
  //                 Container(
  //                   color: Colors.red,
  //                   height: 50.0,
  //                   //constraints: BoxConstraints.expand(),
  //                 ),
  //               ],
  //             ),
  //           ],
  //         )
  //       : Scaffold(
  //           appBar: AppBar(
  //             title: Text("Document"),
  //           ),
  //           body: Center(child: CircularProgressIndicator()),
  //         );
  // }
}
