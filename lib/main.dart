import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

const orangeColor = Color.fromRGBO(255, 150, 44, 1);
const grayColor = Color.fromRGBO(153, 155, 156, 1);
const darkGrayColor = Color.fromRGBO(44, 45, 46, 1);

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

  String _screenText = "0";

  void addNumberToText(newNumber){
    setState(() {
      if (_screenText != "0" || newNumber != "0"){
        if(_screenText == "0"){
          _screenText = newNumber;
          return;
        }
        if(newNumber == "." && _screenText.indexOf(".") >= 0) {
          return;
        }
        _screenText = _screenText + newNumber;
      }
    });
  }

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
                  _screenText,
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
                                  color: grayColor, shape: BoxShape.circle),
                              child: InkWell(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    "AC",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 28,
                                        fontWeight: FontWeight.w600),
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
                                  color: grayColor, shape: BoxShape.circle),
                              child: InkWell(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    "+/-",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 28,
                                        fontWeight: FontWeight.w600),
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
                                  color: grayColor, shape: BoxShape.circle),
                              child: InkWell(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    "%",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 32,
                                        fontWeight: FontWeight.w600),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    "÷",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 42,
                                        fontWeight: FontWeight.w600),
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
                                  color: darkGrayColor, shape: BoxShape.circle),
                              child: InkWell(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                onTap: () {
                                  addNumberToText("7");
                                },
                                child: Center(
                                  child: Text(
                                    "7",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 36),
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
                                  color: darkGrayColor, shape: BoxShape.circle),
                              child: InkWell(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                onTap: () {
                                  addNumberToText("8");
                                },
                                child: Center(
                                  child: Text(
                                    "8",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 36),
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
                                  color: darkGrayColor, shape: BoxShape.circle),
                              child: InkWell(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                onTap: () {
                                  addNumberToText("9");
                                },
                                child: Center(
                                  child: Text(
                                    "9",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 36),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    "X",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 32,
                                        fontWeight: FontWeight.w600),
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
                                  color: darkGrayColor, shape: BoxShape.circle),
                              child: InkWell(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                onTap: () {
                                  addNumberToText("4");
                                },
                                child: Center(
                                  child: Text(
                                    "4",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 36),
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
                                  color: darkGrayColor, shape: BoxShape.circle),
                              child: InkWell(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                onTap: () {
                                  addNumberToText("5");
                                },
                                child: Center(
                                  child: Text(
                                    "5",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 36),
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
                                  color: darkGrayColor, shape: BoxShape.circle),
                              child: InkWell(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                onTap: () {
                                  addNumberToText("6");
                                },
                                child: Center(
                                  child: Text(
                                    "6",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 36),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 82,
                                        fontWeight: FontWeight.w300),
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
                                  color: darkGrayColor, shape: BoxShape.circle),
                              child: InkWell(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                onTap: () {
                                  addNumberToText("1");
                                },
                                child: Center(
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 36),
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
                                  color: darkGrayColor, shape: BoxShape.circle),
                              child: InkWell(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                onTap: () {
                                  addNumberToText("2");
                                },
                                child: Center(
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 36),
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
                                  color: darkGrayColor, shape: BoxShape.circle),
                              child: InkWell(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                onTap: () {
                                  addNumberToText("3");
                                },
                                child: Center(
                                  child: Text(
                                    "3",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 36),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 42,
                                        fontWeight: FontWeight.w600),
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
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8, left: 8, right: 8),
                          child: Material(
                            color: Colors.black,
                            child: Ink(
                              decoration: BoxDecoration(
                                  color: darkGrayColor,
                                  borderRadius: BorderRadius.circular(55),
                                  shape: BoxShape.rectangle),
                              child: InkWell(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                onTap: () {
                                  addNumberToText("0");
                                },
                                child: Container(
                                  padding: EdgeInsets.only(left: 32),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "0",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 36),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8),
                          child: Material(
                            color: Colors.black,
                            child: Ink(
                              decoration: BoxDecoration(
                                  color: darkGrayColor, shape: BoxShape.circle),
                              child: InkWell(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                onTap: () {
                                  addNumberToText(".");
                                },
                                child: Center(
                                  child: Text(
                                    ".",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 36),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8),
                          child: Material(
                            color: Colors.black,
                            child: Ink(
                              decoration: BoxDecoration(
                                  color: Colors.orange, shape: BoxShape.circle),
                              child: InkWell(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    "=",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 42,
                                        fontWeight: FontWeight.w600),
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
