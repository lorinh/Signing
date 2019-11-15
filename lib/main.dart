import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

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
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PhotoView(
        imageProvider: AssetImage("assets/Waiver.png"),
      ),
    );
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
