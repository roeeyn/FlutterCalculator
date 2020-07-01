import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UVM Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text("Cosa", style: TextStyle(color: Colors.white),),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Text("AC", style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Text("+/-", style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Text("%", style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Text("÷", style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
