import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:working_hours/utils/font.dart';

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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
              fontSize: 24,
            ),
          ),
          Text(
            text,
            style: CustomTextFont.result,
          ),
        ],
      ),
    );
  }
}

class CustomMonthTextField extends StatelessWidget {
  const CustomMonthTextField({
    super.key,
    required this.title,
    required this.text,
    required this.controller,
    this.color = const Color(0xFF2DBD3A),
  });

  final String title;
  final String text;
  final TextEditingController controller;
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
              child: TextFormField(
                controller: controller,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(8),
                  FilteringTextInputFormatter.allow(
                    RegExp(r'[0-12]'),
                  ),
                ],
              ),
            ),
            const Text('月'),
          ],
        ),
      ],
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.title,
    required this.text,
    required this.hController,
    required this.mController,
    this.color = const Color(0xFF2DBD3A),
  });

  final String title;
  final String text;
  final TextEditingController hController;
  final TextEditingController mController;
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
              child: TextFormField(
                controller: hController,
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
              child: TextFormField(
                controller: mController,
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
