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
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 35,
              child: Text(
                "Cosa",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
              flex: 65,
              child: Column(children: <Widget>[
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(bottom: 18),
                            decoration: BoxDecoration(
                                color: Colors.orange, shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                "HEY",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            )),
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(bottom: 18),
                            decoration: BoxDecoration(
                                color: Colors.orange, shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                "HEY",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            )),
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(bottom: 18),
                            decoration: BoxDecoration(
                                color: Colors.orange, shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                "HEY",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            )),
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(bottom: 18),
                            decoration: BoxDecoration(
                                color: Colors.orange, shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                "HEY",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            )),
                      ),

                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(bottom: 18),
                            decoration: BoxDecoration(
                                color: Colors.orange, shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                "HEY",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            )),
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(bottom: 18),
                            decoration: BoxDecoration(
                                color: Colors.orange, shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                "HEY",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            )),
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(bottom: 18),
                            decoration: BoxDecoration(
                                color: Colors.orange, shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                "HEY",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            )),
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(bottom: 18),
                            decoration: BoxDecoration(
                                color: Colors.orange, shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                "HEY",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            )),
                      ),

                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(bottom: 18),
                            decoration: BoxDecoration(
                                color: Colors.orange, shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                "HEY",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            )),
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(bottom: 18),
                            decoration: BoxDecoration(
                                color: Colors.orange, shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                "HEY",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            )),
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(bottom: 18),
                            decoration: BoxDecoration(
                                color: Colors.orange, shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                "HEY",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            )),
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(bottom: 18),
                            decoration: BoxDecoration(
                                color: Colors.orange, shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                "HEY",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            )),
                      ),

                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(bottom: 18),
                            decoration: BoxDecoration(
                                color: Colors.orange, shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                "HEY",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            )),
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(bottom: 18),
                            decoration: BoxDecoration(
                                color: Colors.orange, shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                "HEY",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            )),
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(bottom: 18),
                            decoration: BoxDecoration(
                                color: Colors.orange, shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                "HEY",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            )),
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(bottom: 18),
                            decoration: BoxDecoration(
                                color: Colors.orange, shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                "HEY",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            )),
                      ),

                    ],
                  ),
                ),

              ]),
            )
          ],
        ),
      ),
    );
  }
}
