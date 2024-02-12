// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'passed_time_state.freezed.dart';

@freezed
class PsssedTimeSate with _$PsssedTimeSate {
  const factory PsssedTimeSate({
    @Default(0) int? hour,
    @Default(0) int? min,
    @Default(TimeOfDay(hour: 00, minute: 00)) TimeOfDay? workingHours,
  }) = _PsssedTimeSate;
}
