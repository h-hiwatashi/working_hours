// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workday_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Workday _$WorkdayFromJson(Map<String, dynamic> json) {
  return _Workday.fromJson(json);
}

/// @nodoc
mixin _$Workday {
  int? get day => throw _privateConstructorUsedError;
  int? get weekendday => throw _privateConstructorUsedError;
  int? get holiday =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int? get weekend_and_holiday => throw _privateConstructorUsedError;
  int? get weekday => throw _privateConstructorUsedError;
  int? get workday => throw _privateConstructorUsedError;
  String? get estimated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkdayCopyWith<Workday> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkdayCopyWith<$Res> {
  factory $WorkdayCopyWith(Workday value, $Res Function(Workday) then) =
      _$WorkdayCopyWithImpl<$Res, Workday>;
  @useResult
  $Res call(
      {int? day,
      int? weekendday,
      int? holiday,
      int? weekend_and_holiday,
      int? weekday,
      int? workday,
      String? estimated});
}

/// @nodoc
class _$WorkdayCopyWithImpl<$Res, $Val extends Workday>
    implements $WorkdayCopyWith<$Res> {
  _$WorkdayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? weekendday = freezed,
    Object? holiday = freezed,
    Object? weekend_and_holiday = freezed,
    Object? weekday = freezed,
    Object? workday = freezed,
    Object? estimated = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      weekendday: freezed == weekendday
          ? _value.weekendday
          : weekendday // ignore: cast_nullable_to_non_nullable
              as int?,
      holiday: freezed == holiday
          ? _value.holiday
          : holiday // ignore: cast_nullable_to_non_nullable
              as int?,
      weekend_and_holiday: freezed == weekend_and_holiday
          ? _value.weekend_and_holiday
          : weekend_and_holiday // ignore: cast_nullable_to_non_nullable
              as int?,
      weekday: freezed == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as int?,
      workday: freezed == workday
          ? _value.workday
          : workday // ignore: cast_nullable_to_non_nullable
              as int?,
      estimated: freezed == estimated
          ? _value.estimated
          : estimated // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkdayImplCopyWith<$Res> implements $WorkdayCopyWith<$Res> {
  factory _$$WorkdayImplCopyWith(
          _$WorkdayImpl value, $Res Function(_$WorkdayImpl) then) =
      __$$WorkdayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? day,
      int? weekendday,
      int? holiday,
      int? weekend_and_holiday,
      int? weekday,
      int? workday,
      String? estimated});
}

/// @nodoc
class __$$WorkdayImplCopyWithImpl<$Res>
    extends _$WorkdayCopyWithImpl<$Res, _$WorkdayImpl>
    implements _$$WorkdayImplCopyWith<$Res> {
  __$$WorkdayImplCopyWithImpl(
      _$WorkdayImpl _value, $Res Function(_$WorkdayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? weekendday = freezed,
    Object? holiday = freezed,
    Object? weekend_and_holiday = freezed,
    Object? weekday = freezed,
    Object? workday = freezed,
    Object? estimated = freezed,
  }) {
    return _then(_$WorkdayImpl(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      weekendday: freezed == weekendday
          ? _value.weekendday
          : weekendday // ignore: cast_nullable_to_non_nullable
              as int?,
      holiday: freezed == holiday
          ? _value.holiday
          : holiday // ignore: cast_nullable_to_non_nullable
              as int?,
      weekend_and_holiday: freezed == weekend_and_holiday
          ? _value.weekend_and_holiday
          : weekend_and_holiday // ignore: cast_nullable_to_non_nullable
              as int?,
      weekday: freezed == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as int?,
      workday: freezed == workday
          ? _value.workday
          : workday // ignore: cast_nullable_to_non_nullable
              as int?,
      estimated: freezed == estimated
          ? _value.estimated
          : estimated // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkdayImpl with DiagnosticableTreeMixin implements _Workday {
  const _$WorkdayImpl(
      {required this.day,
      required this.weekendday,
      required this.holiday,
      required this.weekend_and_holiday,
      required this.weekday,
      required this.workday,
      required this.estimated});

  factory _$WorkdayImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkdayImplFromJson(json);

  @override
  final int? day;
  @override
  final int? weekendday;
  @override
  final int? holiday;
// ignore: non_constant_identifier_names
  @override
  final int? weekend_and_holiday;
  @override
  final int? weekday;
  @override
  final int? workday;
  @override
  final String? estimated;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Workday(day: $day, weekendday: $weekendday, holiday: $holiday, weekend_and_holiday: $weekend_and_holiday, weekday: $weekday, workday: $workday, estimated: $estimated)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Workday'))
      ..add(DiagnosticsProperty('day', day))
      ..add(DiagnosticsProperty('weekendday', weekendday))
      ..add(DiagnosticsProperty('holiday', holiday))
      ..add(DiagnosticsProperty('weekend_and_holiday', weekend_and_holiday))
      ..add(DiagnosticsProperty('weekday', weekday))
      ..add(DiagnosticsProperty('workday', workday))
      ..add(DiagnosticsProperty('estimated', estimated));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkdayImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.weekendday, weekendday) ||
                other.weekendday == weekendday) &&
            (identical(other.holiday, holiday) || other.holiday == holiday) &&
            (identical(other.weekend_and_holiday, weekend_and_holiday) ||
                other.weekend_and_holiday == weekend_and_holiday) &&
            (identical(other.weekday, weekday) || other.weekday == weekday) &&
            (identical(other.workday, workday) || other.workday == workday) &&
            (identical(other.estimated, estimated) ||
                other.estimated == estimated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, weekendday, holiday,
      weekend_and_holiday, weekday, workday, estimated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkdayImplCopyWith<_$WorkdayImpl> get copyWith =>
      __$$WorkdayImplCopyWithImpl<_$WorkdayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkdayImplToJson(
      this,
    );
  }
}

abstract class _Workday implements Workday {
  const factory _Workday(
      {required final int? day,
      required final int? weekendday,
      required final int? holiday,
      required final int? weekend_and_holiday,
      required final int? weekday,
      required final int? workday,
      required final String? estimated}) = _$WorkdayImpl;

  factory _Workday.fromJson(Map<String, dynamic> json) = _$WorkdayImpl.fromJson;

  @override
  int? get day;
  @override
  int? get weekendday;
  @override
  int? get holiday;
  @override // ignore: non_constant_identifier_names
  int? get weekend_and_holiday;
  @override
  int? get weekday;
  @override
  int? get workday;
  @override
  String? get estimated;
  @override
  @JsonKey(ignore: true)
  _$$WorkdayImplCopyWith<_$WorkdayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
