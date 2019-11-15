import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'package:path_provider/path_provider.dart';

import 'package:flutter/services.dart' show rootBundle;
import 'dart:typed_data';

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
  String pathPDF = "";

  @override
  void initState() {
    super.initState();
    createFileOfPdfUrl().then((f) {
      setState(() {
        pathPDF = f.path;
        print(pathPDF);
      });
    });
  }

  Future<File> createFileOfPdfUrl() async {
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;
    File tempFile = File('$tempPath/copy.pdf');
    ByteData bd = await rootBundle.load('assets/Waiver.pdf');
    await tempFile.writeAsBytes(bd.buffer.asUint8List(), flush: true);
    return tempFile;
    // final url = "http://africau.edu/images/default/sample.pdf";
    // final filename = url.substring(url.lastIndexOf("/") + 1);
    // var request = await HttpClient().getUrl(Uri.parse(url));
    // var response = await request.close();
    // var bytes = await consolidateHttpClientResponseBytes(response);
    // String dir = (await getApplicationDocumentsDirectory()).path;
    // File file = new File('$dir/$filename');

    //await file.writeAsBytes(bytes);
    File file = new File("/assets/Waiver.pdf");
    return file;
  }

  @override
  Widget build(BuildContext context) {
    print(pathPDF);
    return pathPDF != "" ? PDFViewerScaffold(
        appBar: AppBar(
          title: Text("Document"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {},
            ),
          ],
        ),
        path: pathPDF) : Text("Loading...");
  }
}

class PDFScreen extends StatelessWidget {
  String pathPDF = "";
  PDFScreen(this.pathPDF);

  @override
  Widget build(BuildContext context) {
    return PDFViewerScaffold(
        appBar: AppBar(
          title: Text("Document"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {},
            ),
          ],
        ),
        path: pathPDF);
  }
}