import 'package:flutter/material.dart';
import 'package:working_hours/utils/compornent.dart';

class SettingPage extends StatelessWidget {
  final String pageName;

  const SettingPage(this.pageName, {Key? key}) : super(key: key);

  static const _unitName = '時間';

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomTextField(title: '月を指定する', text: _unitName),
          SizedBox(height: 20),
          CustomTextField(title: '1日の作業時間（平均）', text: _unitName),
          SizedBox(height: 20),
          CustomTextField(title: '上限', text: _unitName),
          SizedBox(height: 20),
          CustomTextField(title: '下限', text: _unitName),
        ],
      ),
    );
  }
}
