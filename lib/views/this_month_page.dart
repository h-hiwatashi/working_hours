import 'package:flutter/material.dart';

class TabSamplePage extends StatelessWidget {
  final String pageName;

  const TabSamplePage(this.pageName, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(pageName,
          style: const TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}