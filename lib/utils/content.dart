import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  const Content({super.key, 
    required this.title,
    required this.text,
    this.color = const Color(0xFF2DBD3A),
  });

  final String title;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(title),
      Text(text),
    ],);
  }
}