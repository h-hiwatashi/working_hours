// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passed_time_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PsssedTimeSate {
  int? get hour => throw _privateConstructorUsedError;
  int? get min => throw _privateConstructorUsedError;
  TimeOfDay? get workingHours => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PsssedTimeSateCopyWith<PsssedTimeSate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PsssedTimeSateCopyWith<$Res> {
  factory $PsssedTimeSateCopyWith(
          PsssedTimeSate value, $Res Function(PsssedTimeSate) then) =
      _$PsssedTimeSateCopyWithImpl<$Res, PsssedTimeSate>;
  @useResult
  $Res call({int? hour, int? min, TimeOfDay? workingHours});
}

/// @nodoc
class _$PsssedTimeSateCopyWithImpl<$Res, $Val extends PsssedTimeSate>
    implements $PsssedTimeSateCopyWith<$Res> {
  _$PsssedTimeSateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = freezed,
    Object? min = freezed,
    Object? workingHours = freezed,
  }) {
    return _then(_value.copyWith(
      hour: freezed == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int?,
      workingHours: freezed == workingHours
          ? _value.workingHours
          : workingHours // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PsssedTimeSateImplCopyWith<$Res>
    implements $PsssedTimeSateCopyWith<$Res> {
  factory _$$PsssedTimeSateImplCopyWith(_$PsssedTimeSateImpl value,
          $Res Function(_$PsssedTimeSateImpl) then) =
      __$$PsssedTimeSateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? hour, int? min, TimeOfDay? workingHours});
}

/// @nodoc
class __$$PsssedTimeSateImplCopyWithImpl<$Res>
    extends _$PsssedTimeSateCopyWithImpl<$Res, _$PsssedTimeSateImpl>
    implements _$$PsssedTimeSateImplCopyWith<$Res> {
  __$$PsssedTimeSateImplCopyWithImpl(
      _$PsssedTimeSateImpl _value, $Res Function(_$PsssedTimeSateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = freezed,
    Object? min = freezed,
    Object? workingHours = freezed,
  }) {
    return _then(_$PsssedTimeSateImpl(
      hour: freezed == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int?,
      workingHours: freezed == workingHours
          ? _value.workingHours
          : workingHours // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
    ));
  }
}

/// @nodoc

class _$PsssedTimeSateImpl implements _PsssedTimeSate {
  const _$PsssedTimeSateImpl(
      {this.hour = 0,
      this.min = 0,
      this.workingHours = const TimeOfDay(hour: 00, minute: 00)});

  @override
  @JsonKey()
  final int? hour;
  @override
  @JsonKey()
  final int? min;
  @override
  @JsonKey()
  final TimeOfDay? workingHours;

  @override
  String toString() {
    return 'PsssedTimeSate(hour: $hour, min: $min, workingHours: $workingHours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PsssedTimeSateImpl &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.workingHours, workingHours) ||
                other.workingHours == workingHours));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hour, min, workingHours);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PsssedTimeSateImplCopyWith<_$PsssedTimeSateImpl> get copyWith =>
      __$$PsssedTimeSateImplCopyWithImpl<_$PsssedTimeSateImpl>(
          this, _$identity);
}

abstract class _PsssedTimeSate implements PsssedTimeSate {
  const factory _PsssedTimeSate(
      {final int? hour,
      final int? min,
      final TimeOfDay? workingHours}) = _$PsssedTimeSateImpl;

  @override
  int? get hour;
  @override
  int? get min;
  @override
  TimeOfDay? get workingHours;
  @override
  @JsonKey(ignore: true)
  _$$PsssedTimeSateImplCopyWith<_$PsssedTimeSateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
