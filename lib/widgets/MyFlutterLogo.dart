import 'package:flutter/material.dart';

class MyFlutterLogo extends StatelessWidget {
  MyFlutterLogo({super.key, required this.width});
  double width;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/1024px-Google-flutter-logo.svg.png",
      width: width,
    );
  }
}