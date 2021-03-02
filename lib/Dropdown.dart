import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dropdown extends StatelessWidget {
  const Dropdown({
    Key key,
    this.listItem,
    this.newValue,
    this.stateMethod,
  }) : super(key: key);
  final List<String> listItem;
  final String newValue;
  final Function stateMethod;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: listItem.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      value: newValue,
      onChanged: stateMethod,
    );
  }
}
