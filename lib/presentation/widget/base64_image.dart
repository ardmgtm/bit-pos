import 'dart:convert';

import 'package:flutter/material.dart';

class Base64Image extends StatelessWidget {
  final String base64String;
  final double height;
  final double width;
  const Base64Image({
    Key? key,
    required this.base64String,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.memory(
      base64Decode(base64String),
      fit: BoxFit.cover,
      height: height,
      width: width,
    );
  }
}
