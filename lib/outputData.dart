import 'package:flutter/cupertino.dart';

class outputData extends StatelessWidget {
  const outputData({
    Key key,
    @required double result,
  })  : _result = result,
        super(key: key);

  final double _result;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Hasil"),
          Text(
            '$_result',
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }
}
