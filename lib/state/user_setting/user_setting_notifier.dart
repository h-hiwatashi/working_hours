import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:working_hours/state/user_setting/user_setting_state.dart';

class UserSettingNotifier extends StateNotifier<UserSettingSate> {
  UserSettingNotifier() : super(const UserSettingSate());

  void changeSetting({
    required int month,
    required int dailyAverage,
    required int lowerLimit,
    required int upperLimit,
  }) {
    state = state.copyWith(
      month: month,
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
