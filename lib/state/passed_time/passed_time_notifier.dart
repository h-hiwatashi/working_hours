import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:working_hours/state/passed_time/passed_time_state.dart';

class PsssedTimeNotifier extends StateNotifier<PsssedTimeSate> {
  PsssedTimeNotifier() : super(const PsssedTimeSate());
  final TextEditingController hourController = TextEditingController();
  final TextEditingController minuteController = TextEditingController();

  void setHour(int hour) {
    state = state.copyWith(hour: hour);
  }

  void setMin(int min) {
    state = state.copyWith(min: min);
  }

  void setWorkingHours(TimeOfDay workingHours) {
    state = state.copyWith(workingHours: workingHours);
  }
}

final passedTimeProvider =
    StateNotifierProvider.autoDispose<PsssedTimeNotifier, PsssedTimeSate>(
  (ref) => PsssedTimeNotifier(),
);
