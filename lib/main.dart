import 'package:flutter/material.dart';
import 'package:termometer2/Dropdown.dart';

import 'inputData.dart';
import 'log.dart';
import 'logData.dart';
import 'outputData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController etinputUser = new TextEditingController();
  List<String> listViewItem = List<String>();

  var listItem = ["Kelvin", "Reamur"];

  double _inputUser = 0;

  final inputController = TextEditingController();

  String _newValue = "Kelvin";

  double _result = 0;

  void perhitunganSuhu() {
    setState(() {
      _inputUser = double.parse(inputController.text);

      if (_newValue == "Kelvin") {
        _result = _inputUser + 273;
        listViewItem.add("Kelvin : " + _result.toString());
      } else {
        _result = (4 / 5) * _inputUser;
        listViewItem.add("Reamur : " + _result.toString());
      }
    });
  }

  void stateMethod(String changeValue) {
    setState(() {
      _newValue = changeValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              inputData(inputController: inputController),
              SizedBox(
                width: double.infinity,
                child: Dropdown(
                  listItem: listItem,
                  stateMethod: stateMethod,
                  newValue: _newValue,
                ),
              ),
              outputData(result: _result),
              SizedBox(
                width: double.infinity,
                child: Container(
                  child: RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text(
                      "Konversi Suhu",
                    ),
                    onPressed: perhitunganSuhu,
                  ),
                ),
              ),
              log(),
              logData(listViewItem: listViewItem),
            ],
          ),
        ),
      ),
    );
  }
}
