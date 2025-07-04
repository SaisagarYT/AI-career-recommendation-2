import 'package:flutter/material.dart';

class Prebutton extends StatelessWidget {
  final String text;
  final Color bgcolor;
  const Prebutton({super.key, required this.bgcolor, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18),
      width: MediaQuery.of(context).size.width *  0.9,
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
