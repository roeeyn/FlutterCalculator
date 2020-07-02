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

  String _stashedNumber = "0";

  int _stashedOperation = 0;

  var _selectedOps = [false, false, false, false];

  void getResult() {
    setState(() {
      var stashedNumber = double.parse(_stashedNumber);
      var screenNumber = double.parse(_screenText);
      var result = _stashedOperation == 0
          ? stashedNumber / screenNumber
          : _stashedOperation == 1
              ? stashedNumber * screenNumber
              : _stashedOperation == 2
                  ? stashedNumber - screenNumber
                  : _stashedOperation == 3 ? stashedNumber + screenNumber : 0;
      _screenText = "$result";
    });
  }

  void addNumberToText(newNumber) {
    setState(() {
      if (_selectedOps.contains(true)) {
        _stashedOperation = _selectedOps.indexOf(true);
        _selectedOps = [false, false, false, false];
        _stashedNumber = _screenText;
        _screenText = "0";
      }

      if (newNumber == ".") {
        if (_screenText.indexOf(".") >= 0) return;
        if (_screenText == "0") {
          _screenText = "0.";
          return;
        }
      }
      if (_screenText != "0" || newNumber != "0") {
        if (_screenText == "0") {
          _screenText = newNumber;
          return;
        }
        _screenText = _screenText + newNumber;
      }
    });
  }

  void resetScreen() {
    setState(() {
      _stashedNumber = "0";
      _selectedOps = [false, false, false, false];
      _screenText = "0";
    });
  }

  void setSelectedFunction(index) {
    setState(() {
      _selectedOps = [false, false, false, false];
      _selectedOps[index] = true;
    });
  }

  void toggleSign() {
    setState(() {
      if (_screenText.indexOf("-") >= 0) {
        _screenText = _screenText.substring(1);
      } else {
        _screenText = "-" + _screenText;
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
                                onTap: () {
                                  resetScreen();
                                },
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
                                onTap: () {
                                  toggleSign();
                                },
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
                                onTap: () {
                                  // TODO
                                },
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
                                  color: _selectedOps[0]
                                      ? Colors.white
                                      : orangeColor,
                                  shape: BoxShape.circle),
                              child: InkWell(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                onTap: () {
                                  setSelectedFunction(0);
                                },
                                child: Center(
                                  child: Text(
                                    "÷",
                                    style: TextStyle(
                                        color: _selectedOps[0]
                                            ? orangeColor
                                            : Colors.white,
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
                                  color: _selectedOps[1]
                                      ? Colors.white
                                      : orangeColor,
                                  shape: BoxShape.circle),
                              child: InkWell(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                onTap: () {
                                  setSelectedFunction(1);
                                },
                                child: Center(
                                  child: Text(
                                    "X",
                                    style: TextStyle(
                                        color: _selectedOps[1]
                                            ? orangeColor
                                            : Colors.white,
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
                                  color: _selectedOps[2]
                                      ? Colors.white
                                      : orangeColor,
                                  shape: BoxShape.circle),
                              child: InkWell(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                onTap: () {
                                  setSelectedFunction(2);
                                },
                                child: Center(
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        color: _selectedOps[2]
                                            ? orangeColor
                                            : Colors.white,
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
                                  color: _selectedOps[3]
                                      ? Colors.white
                                      : orangeColor,
                                  shape: BoxShape.circle),
                              child: InkWell(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                onTap: () {
                                  setSelectedFunction(3);
                                },
                                child: Center(
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        color: _selectedOps[3]
                                            ? orangeColor
                                            : Colors.white,
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
                                onTap: () {
                                  getResult();
                                },
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
