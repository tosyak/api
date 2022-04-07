import 'package:api/models/superModel.dart';
import 'package:api/services/processing_services.dart';
import 'package:flutter/material.dart';

main() async {
  runApp(MyApp());

  var wer = await fetchProcessingMaterials();
  print(wer);
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barcode Scanner Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Barcode Scanner Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Add visiblity detector to handle barcode
        // values only when widget is visible
        child: Text('werwer'),
      ),
    );
  }
}
