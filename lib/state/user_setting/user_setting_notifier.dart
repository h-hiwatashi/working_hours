import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:working_hours/state/user_setting/user_setting_state.dart';

class UserSettingNotifier extends StateNotifier<UserSettingSate> {
  UserSettingNotifier() : super(const UserSettingSate());

  final TextEditingController monthController =
      TextEditingController(); //TODO: 実装予定
  final TextEditingController dailyAverageHourController =
      TextEditingController(text: '8');
  final TextEditingController dailyAverageMinController =
      TextEditingController(text: '0');
  final TextEditingController upperLimitHController =
      TextEditingController(text: '180');
  final TextEditingController upperLimitMController =
      TextEditingController(text: '0');

  final TextEditingController lowerLimitHController =
      TextEditingController(text: '140');
  final TextEditingController lowerLimitMController =
      TextEditingController(text: '0');

  void changeSetting({
    // required int month,//TODO: 実装予定
    required TimeOfDay dailyAverage,
    required TimeOfDay lowerLimit,
    required TimeOfDay upperLimit,
  }) {
    // state = state.copyWith(
    //   // month: month,//TODO: 実装予定
    //   dailyAverage: dailyAverage,
    //   lowerLimit: lowerLimit,
    //   upperLimit: upperLimit,
    // );
    state = UserSettingSate(
      //   // month: month,//TODO: 実装予定
      dailyAverage: dailyAverage,
      lowerLimit: lowerLimit,
      upperLimit: upperLimit,
    );
  }
}

final userSettingProvider =
    StateNotifierProvider.autoDispose<UserSettingNotifier, UserSettingSate>(
  (ref) => UserSettingNotifier(),
);
