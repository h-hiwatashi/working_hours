// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_setting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserSettingSate {
  int? get month => throw _privateConstructorUsedError; //今月
  TimeOfDay? get dailyAverage => throw _privateConstructorUsedError; //1日の平均労働時間
  TimeOfDay? get lowerLimit => throw _privateConstructorUsedError; //下限の時間
  TimeOfDay? get upperLimit => throw _privateConstructorUsedError; //上限の時間
  int? get personalLeaveNum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserSettingSateCopyWith<UserSettingSate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSettingSateCopyWith<$Res> {
  factory $UserSettingSateCopyWith(
          UserSettingSate value, $Res Function(UserSettingSate) then) =
      _$UserSettingSateCopyWithImpl<$Res, UserSettingSate>;
  @useResult
  $Res call(
      {int? month,
      TimeOfDay? dailyAverage,
      TimeOfDay? lowerLimit,
      TimeOfDay? upperLimit,
      int? personalLeaveNum});
}

/// @nodoc
class _$UserSettingSateCopyWithImpl<$Res, $Val extends UserSettingSate>
    implements $UserSettingSateCopyWith<$Res> {
  _$UserSettingSateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = freezed,
    Object? dailyAverage = freezed,
    Object? lowerLimit = freezed,
    Object? upperLimit = freezed,
    Object? personalLeaveNum = freezed,
  }) {
    return _then(_value.copyWith(
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyAverage: freezed == dailyAverage
          ? _value.dailyAverage
          : dailyAverage // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      lowerLimit: freezed == lowerLimit
          ? _value.lowerLimit
          : lowerLimit // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      upperLimit: freezed == upperLimit
          ? _value.upperLimit
          : upperLimit // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      personalLeaveNum: freezed == personalLeaveNum
          ? _value.personalLeaveNum
          : personalLeaveNum // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSettingSateImplCopyWith<$Res>
    implements $UserSettingSateCopyWith<$Res> {
  factory _$$UserSettingSateImplCopyWith(_$UserSettingSateImpl value,
          $Res Function(_$UserSettingSateImpl) then) =
      __$$UserSettingSateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? month,
      TimeOfDay? dailyAverage,
      TimeOfDay? lowerLimit,
      TimeOfDay? upperLimit,
      int? personalLeaveNum});
}

/// @nodoc
class __$$UserSettingSateImplCopyWithImpl<$Res>
    extends _$UserSettingSateCopyWithImpl<$Res, _$UserSettingSateImpl>
    implements _$$UserSettingSateImplCopyWith<$Res> {
  __$$UserSettingSateImplCopyWithImpl(
      _$UserSettingSateImpl _value, $Res Function(_$UserSettingSateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = freezed,
    Object? dailyAverage = freezed,
    Object? lowerLimit = freezed,
    Object? upperLimit = freezed,
    Object? personalLeaveNum = freezed,
  }) {
    return _then(_$UserSettingSateImpl(
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      dailyAverage: freezed == dailyAverage
          ? _value.dailyAverage
          : dailyAverage // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      lowerLimit: freezed == lowerLimit
          ? _value.lowerLimit
          : lowerLimit // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      upperLimit: freezed == upperLimit
          ? _value.upperLimit
          : upperLimit // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      personalLeaveNum: freezed == personalLeaveNum
          ? _value.personalLeaveNum
          : personalLeaveNum // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$UserSettingSateImpl implements _UserSettingSate {
  const _$UserSettingSateImpl(
      {this.month = 1,
      this.dailyAverage = const TimeOfDay(hour: 8, minute: 0),
      this.lowerLimit = const TimeOfDay(hour: 140, minute: 0),
      this.upperLimit = const TimeOfDay(hour: 180, minute: 0),
      this.personalLeaveNum = 0});

  @override
  @JsonKey()
  final int? month;
//今月
  @override
  @JsonKey()
  final TimeOfDay? dailyAverage;
//1日の平均労働時間
  @override
  @JsonKey()
  final TimeOfDay? lowerLimit;
//下限の時間
  @override
  @JsonKey()
  final TimeOfDay? upperLimit;
//上限の時間
  @override
  @JsonKey()
  final int? personalLeaveNum;

  @override
  String toString() {
    return 'UserSettingSate(month: $month, dailyAverage: $dailyAverage, lowerLimit: $lowerLimit, upperLimit: $upperLimit, personalLeaveNum: $personalLeaveNum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSettingSateImpl &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.dailyAverage, dailyAverage) ||
                other.dailyAverage == dailyAverage) &&
            (identical(other.lowerLimit, lowerLimit) ||
                other.lowerLimit == lowerLimit) &&
            (identical(other.upperLimit, upperLimit) ||
                other.upperLimit == upperLimit) &&
            (identical(other.personalLeaveNum, personalLeaveNum) ||
                other.personalLeaveNum == personalLeaveNum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, month, dailyAverage, lowerLimit,
      upperLimit, personalLeaveNum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSettingSateImplCopyWith<_$UserSettingSateImpl> get copyWith =>
      __$$UserSettingSateImplCopyWithImpl<_$UserSettingSateImpl>(
          this, _$identity);
}

abstract class _UserSettingSate implements UserSettingSate {
  const factory _UserSettingSate(
      {final int? month,
      final TimeOfDay? dailyAverage,
      final TimeOfDay? lowerLimit,
      final TimeOfDay? upperLimit,
      final int? personalLeaveNum}) = _$UserSettingSateImpl;

  @override
  int? get month;
  @override //今月
  TimeOfDay? get dailyAverage;
  @override //1日の平均労働時間
  TimeOfDay? get lowerLimit;
  @override //下限の時間
  TimeOfDay? get upperLimit;
  @override //上限の時間
  int? get personalLeaveNum;
  @override
  @JsonKey(ignore: true)
  _$$UserSettingSateImplCopyWith<_$UserSettingSateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
