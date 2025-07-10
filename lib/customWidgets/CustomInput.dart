import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final String placeholder;
  final TextEditingController controller;
  const CustomInput({
    super.key,
    required this.label,
    required this.placeholder,
    required this.controller,
  });

  Icon _getIcon() {
    final lower = label.toLowerCase();
    if (lower.contains('name') || lower.contains('username')) {
      return Icon(Icons.person);
    } else if (lower.contains('email')) {
      return Icon(Icons.email);
    } else if (lower.contains('password')) {
      return Icon(Icons.lock);
    }
    return Icon(Icons.text_fields);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        Focus(
          child: Builder(
            builder: (context) {
              final isFocused = Focus.of(context).hasFocus;
              return AnimatedContainer(
                duration: Duration(milliseconds: 200),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow:
                      isFocused
                          ? [
                            BoxShadow(
                              color: Colors.green.withOpacity(0.25),
                              blurRadius: 12,
                              spreadRadius: 2,
                              offset: Offset(0, 0),
                            ),
                          ]
                          : [],
                ),
                child: TextFormField(
                  controller: controller,
                  obscureText: label.toLowerCase().contains('password'),
                  validator: (value) {
                    if (value == "" || value == null) {
                      return "Please enter $label";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 2),
                    ),
                    prefixIcon: _getIcon(),
                    hintText: placeholder,
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
