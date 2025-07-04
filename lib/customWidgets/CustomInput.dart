import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final String placeholder;
  final Icon icon;
  const CustomInput({
    super.key,
    required this.icon,
    required this.label,
    required this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Email/Username"),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: placeholder,
          ),
        ),
      ],
    );
  }
}
