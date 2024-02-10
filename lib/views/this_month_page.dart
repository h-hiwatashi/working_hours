import 'package:flutter/material.dart';
import 'package:working_hours/utils/content.dart';

class ThisMonthPage extends StatelessWidget {
  final String pageName;

  const ThisMonthPage(this.pageName, {Key? key}) : super(key: key);

  static const _unitName = '時間';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [Content(title: '今月の稼働時間',text:_unitName)]),
    );
  }
}



