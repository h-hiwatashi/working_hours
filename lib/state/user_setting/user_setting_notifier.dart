import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:working_hours/state/user_setting/user_setting_state.dart';

class UserSettingNotifier extends StateNotifier<UserSettingSate> {
  UserSettingNotifier() : super(const UserSettingSate());

  void changeSetting(
      int month, int dailyAverage, int lowerLimit, int upperLimit) {
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
