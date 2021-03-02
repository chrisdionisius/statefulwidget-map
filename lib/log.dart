import 'package:flutter/material.dart';

class log extends StatelessWidget {
  const log({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Riwayat Konversi",
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
