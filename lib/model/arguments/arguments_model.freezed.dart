// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arguments_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WorkdayArgs {
  int get year => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkdayArgsCopyWith<WorkdayArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkdayArgsCopyWith<$Res> {
  factory $WorkdayArgsCopyWith(
          WorkdayArgs value, $Res Function(WorkdayArgs) then) =
      _$WorkdayArgsCopyWithImpl<$Res, WorkdayArgs>;
  @useResult
  $Res call({int year, int month});
}

/// @nodoc
class _$WorkdayArgsCopyWithImpl<$Res, $Val extends WorkdayArgs>
    implements $WorkdayArgsCopyWith<$Res> {
  _$WorkdayArgsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
  }) {
    return _then(_value.copyWith(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkdayArgsImplCopyWith<$Res>
    implements $WorkdayArgsCopyWith<$Res> {
  factory _$$WorkdayArgsImplCopyWith(
          _$WorkdayArgsImpl value, $Res Function(_$WorkdayArgsImpl) then) =
      __$$WorkdayArgsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int year, int month});
}

/// @nodoc
class __$$WorkdayArgsImplCopyWithImpl<$Res>
    extends _$WorkdayArgsCopyWithImpl<$Res, _$WorkdayArgsImpl>
    implements _$$WorkdayArgsImplCopyWith<$Res> {
  __$$WorkdayArgsImplCopyWithImpl(
      _$WorkdayArgsImpl _value, $Res Function(_$WorkdayArgsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
  }) {
    return _then(_$WorkdayArgsImpl(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WorkdayArgsImpl with DiagnosticableTreeMixin implements _WorkdayArgs {
  const _$WorkdayArgsImpl({required this.year, required this.month});

  @override
  final int year;
  @override
  final int month;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkdayArgs(year: $year, month: $month)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkdayArgs'))
      ..add(DiagnosticsProperty('year', year))
      ..add(DiagnosticsProperty('month', month));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkdayArgsImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month));
  }

  @override
  int get hashCode => Object.hash(runtimeType, year, month);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkdayArgsImplCopyWith<_$WorkdayArgsImpl> get copyWith =>
      __$$WorkdayArgsImplCopyWithImpl<_$WorkdayArgsImpl>(this, _$identity);
}

abstract class _WorkdayArgs implements WorkdayArgs {
  const factory _WorkdayArgs(
      {required final int year, required final int month}) = _$WorkdayArgsImpl;

  @override
  int get year;
  @override
  int get month;
  @override
  @JsonKey(ignore: true)
  _$$WorkdayArgsImplCopyWith<_$WorkdayArgsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
