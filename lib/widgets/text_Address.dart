import 'package:flutter/material.dart';

class TextAddress extends StatelessWidget {
  final String textOne;
  final String textTwo;

  const TextAddress({Key key, this.textOne, this.textTwo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textOne ?? '',
            style: TextStyle(fontSize: 14, color: Colors.black),
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
          ),
          Text(
            textTwo ?? '',
            style: TextStyle(fontSize: 14, color: Colors.black),
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}
