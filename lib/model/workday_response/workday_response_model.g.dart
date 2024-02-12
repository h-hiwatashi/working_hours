// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workday_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkdayImpl _$$WorkdayImplFromJson(Map<String, dynamic> json) =>
    _$WorkdayImpl(
      day: json['day'] as int?,
      weekendday: json['weekendday'] as int?,
      holiday: json['holiday'] as int?,
      weekend_and_holiday: json['weekend_and_holiday'] as int?,
      weekday: json['weekday'] as int?,
      workday: json['workday'] as int?,
      estimated: json['estimated'] as String?,
    );

Map<String, dynamic> _$$WorkdayImplToJson(_$WorkdayImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'weekendday': instance.weekendday,
      'holiday': instance.holiday,
      'weekend_and_holiday': instance.weekend_and_holiday,
      'weekday': instance.weekday,
      'workday': instance.workday,
      'estimated': instance.estimated,
    };
