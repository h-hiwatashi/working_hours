import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'workday_response_model.freezed.dart';
part 'workday_response_model.g.dart';

@freezed
class Workday with _$Workday {
  const factory Workday({
    required int? day,
    required int? weekendday,
    required int? holiday,
    // ignore: non_constant_identifier_names
    required int? weekend_and_holiday,
    required int? weekday,
    required int? workday,
    required String? estimated,
  }) = _Workday;

  /// JSONオブジェクトを[Workday]インスタンスに変換する
  /// これにより、APIレスポンスのタイプセーフな読み込みが可能になる
  factory Workday.fromJson(Map<String, dynamic> json) =>
      _$WorkdayFromJson(json);
}
