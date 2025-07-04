import 'package:flutter/material.dart';

class Nextbutton extends StatelessWidget {
  final String text;
  final Color borderColor;
  const Nextbutton({super.key, required this.borderColor, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18),
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2, color: Color(0xff2c7743)),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, color: borderColor),
        ),
      ),
    );
  }
}
