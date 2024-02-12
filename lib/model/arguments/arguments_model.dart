import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'arguments_model.freezed.dart';

@freezed
class WorkdayArgs with _$WorkdayArgs {
  const factory WorkdayArgs({
    required int year,
    required int month,
  }) = _WorkdayArgs;
}
