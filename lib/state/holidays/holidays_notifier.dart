import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:working_hours/model/arguments/arguments_model.dart';
import 'package:working_hours/model/workday_response/workday_response_model.dart';
import 'package:working_hours/repository/holidays_repository.dart';

final repositoryProvider = Provider((ref) => WorkdayRepository());

final workdayProvider =
    FutureProvider.family<Workday, WorkdayArgs>((ref, args) async {
  final repository = ref.read(repositoryProvider);
  return await repository.fetch(args);
});
