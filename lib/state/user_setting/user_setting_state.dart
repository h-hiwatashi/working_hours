// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_setting_state.freezed.dart';

@freezed
class UserSettingSate with _$UserSettingSate {
  const factory UserSettingSate({
    @Default(1) int? month, //今月
    @Default(TimeOfDay(hour: 8, minute: 0)) TimeOfDay? dailyAverage, //1日の平均労働時間
    @Default(TimeOfDay(hour: 140, minute: 0)) TimeOfDay? lowerLimit, //下限の時間
    @Default(TimeOfDay(hour: 180, minute: 0)) TimeOfDay? upperLimit, //上限の時間
    @Default(0) int? personalLeaveNum, //休みの日数
  }) = _UserSettingSate;
}
