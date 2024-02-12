import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Content extends StatelessWidget {
  const Content({
    super.key,
    required this.title,
    required this.text,
    this.color = const Color(0xFF2DBD3A),
  });

  final String title;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        // color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(text),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.title,
    required this.text,
    this.color = const Color(0xFF2DBD3A),
  });

  final String title;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(8),
                  FilteringTextInputFormatter.allow(
                    RegExp(r'[0-9]'),
                  ),
                ],
              ),
            ),
            const Text('時間'),
            SizedBox(
              width: 100,
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(2),
                  FilteringTextInputFormatter.allow(
                    RegExp(r'[0-9]'),
                  ),
                ],
              ),
            ),
            const Text('分'),
          ],
        ),
      ],
    );
  }
}
