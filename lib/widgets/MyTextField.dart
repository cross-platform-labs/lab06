import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  MyTextField({super.key, required this.label});

  String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$label: ', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
        TextField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            filled: true,
            fillColor: Colors.grey[100],
          ),
        )
      ],
    );
  }
}