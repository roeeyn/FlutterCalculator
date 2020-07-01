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
              flex: 3,
              child: Container(
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(bottom: 12, left: 24, right: 24),
                child: Text(
                  "0",
                  style: TextStyle(color: Colors.white, fontSize: 80),
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Column(children: <Widget>[
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8),
                          child: Material(
                            color: Colors.black,
                            child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.orange, shape: BoxShape.circle),
                                child: InkWell(
                                  borderRadius: BorderRadius.all(Radius.circular(60)),
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "HEY",
                                      style:
                                          TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8),
                          child: Material(
                            color: Colors.black,
                            child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.orange, shape: BoxShape.circle),
                                child: InkWell(
                                  borderRadius: BorderRadius.all(Radius.circular(60)),
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "HEY",
                                      style:
                                          TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8),
                          child: Material(
                            color: Colors.black,
                            child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.orange, shape: BoxShape.circle),
                                child: InkWell(
                                  borderRadius: BorderRadius.all(Radius.circular(60)),
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "HEY",
                                      style:
                                          TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8),
                          child: Material(
                            color: Colors.black,
                            child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.orange, shape: BoxShape.circle),
                                child: InkWell(
                                  borderRadius: BorderRadius.all(Radius.circular(60)),
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "HEY",
                                      style:
                                          TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),
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
                          margin: EdgeInsets.only(bottom: 8),
                          child: Material(
                            color: Colors.black,
                            child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.orange, shape: BoxShape.circle),
                                child: InkWell(
                                  borderRadius: BorderRadius.all(Radius.circular(60)),
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "HEY",
                                      style:
                                          TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8),
                          child: Material(
                            color: Colors.black,
                            child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.orange, shape: BoxShape.circle),
                                child: InkWell(
                                  borderRadius: BorderRadius.all(Radius.circular(60)),
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "HEY",
                                      style:
                                          TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8),
                          child: Material(
                            color: Colors.black,
                            child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.orange, shape: BoxShape.circle),
                                child: InkWell(
                                  borderRadius: BorderRadius.all(Radius.circular(60)),
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "HEY",
                                      style:
                                          TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8),
                          child: Material(
                            color: Colors.black,
                            child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.orange, shape: BoxShape.circle),
                                child: InkWell(
                                  borderRadius: BorderRadius.all(Radius.circular(60)),
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "HEY",
                                      style:
                                          TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),
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
                          margin: EdgeInsets.only(bottom: 8),
                          child: Material(
                            color: Colors.black,
                            child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.orange, shape: BoxShape.circle),
                                child: InkWell(
                                  borderRadius: BorderRadius.all(Radius.circular(60)),
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "HEY",
                                      style:
                                          TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8),
                          child: Material(
                            color: Colors.black,
                            child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.orange, shape: BoxShape.circle),
                                child: InkWell(
                                  borderRadius: BorderRadius.all(Radius.circular(60)),
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "HEY",
                                      style:
                                          TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8),
                          child: Material(
                            color: Colors.black,
                            child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.orange, shape: BoxShape.circle),
                                child: InkWell(
                                  borderRadius: BorderRadius.all(Radius.circular(60)),
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "HEY",
                                      style:
                                          TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8),
                          child: Material(
                            color: Colors.black,
                            child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.orange, shape: BoxShape.circle),
                                child: InkWell(
                                  borderRadius: BorderRadius.all(Radius.circular(60)),
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "HEY",
                                      style:
                                          TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),
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
                          margin: EdgeInsets.only(bottom: 8),
                          child: Material(
                            color: Colors.black,
                            child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.orange, shape: BoxShape.circle),
                                child: InkWell(
                                  borderRadius: BorderRadius.all(Radius.circular(60)),
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "HEY",
                                      style:
                                          TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8),
                          child: Material(
                            color: Colors.black,
                            child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.orange, shape: BoxShape.circle),
                                child: InkWell(
                                  borderRadius: BorderRadius.all(Radius.circular(60)),
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "HEY",
                                      style:
                                          TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8),
                          child: Material(
                            color: Colors.black,
                            child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.orange, shape: BoxShape.circle),
                                child: InkWell(
                                  borderRadius: BorderRadius.all(Radius.circular(60)),
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "HEY",
                                      style:
                                          TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8),
                          child: Material(
                            color: Colors.black,
                            child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.orange, shape: BoxShape.circle),
                                child: InkWell(
                                  borderRadius: BorderRadius.all(Radius.circular(60)),
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "HEY",
                                      style:
                                          TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),
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
                          margin: EdgeInsets.only(bottom: 8),
                          child: Material(
                            color: Colors.black,
                            child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.orange, shape: BoxShape.circle),
                                child: InkWell(
                                  borderRadius: BorderRadius.all(Radius.circular(60)),
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "HEY",
                                      style:
                                          TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8),
                          child: Material(
                            color: Colors.black,
                            child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.orange, shape: BoxShape.circle),
                                child: InkWell(
                                  borderRadius: BorderRadius.all(Radius.circular(60)),
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "HEY",
                                      style:
                                          TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8),
                          child: Material(
                            color: Colors.black,
                            child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.orange, shape: BoxShape.circle),
                                child: InkWell(
                                  borderRadius: BorderRadius.all(Radius.circular(60)),
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "HEY",
                                      style:
                                          TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8),
                          child: Material(
                            color: Colors.black,
                            child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.orange, shape: BoxShape.circle),
                                child: InkWell(
                                  borderRadius: BorderRadius.all(Radius.circular(60)),
                                  onTap: (){},
                                  child: Center(
                                    child: Text(
                                      "HEY",
                                      style:
                                          TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                          ),
                        ),
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
