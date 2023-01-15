import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const <Widget>[
            SizedBox(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                elevation: 5,
                child: SizedBox(
                  width: double.infinity,
                  child: Text("Chart!"),
                ),
              ),
            ),
            Card(
              child: SizedBox(
                  // width: 200,
                  child: Text(
                "List of TX",
                textAlign: TextAlign.center,
              )),
            )
          ],
        ),
      ),
    );
  }
}
