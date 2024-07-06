import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:working_hours/model/arguments/arguments_model.dart';
import 'package:working_hours/state/holidays/holidays_notifier.dart';
import 'package:working_hours/state/user_setting/user_setting_notifier.dart';
import 'package:working_hours/utils/font.dart';

class HomePagePage extends ConsumerWidget {
  const HomePagePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final now = DateTime.now();
    final userSettingState = ref.watch(userSettingProvider);
    final asyncValue = ref.watch(workdayProvider(WorkdayArgs(
      year: now.year,
      month: now.month,
    )));

    /// 初期値20日
    int workday = 20;
    final display = asyncValue.when(
      data: (data) {
        workday = data.workday ?? 20;
        return Text(workday.toString(), style: CustomTextFont.result);
      },
      loading: () => const CircularProgressIndicator(),
      error: (error, _) => Text(error.toString()),
    );

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('今月の稼働日数: ', style: CustomTextFont.title),
                display,
                Text('日', style: CustomTextFont.title),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              '今月は',
              style: CustomTextFont.title,
            ),
            const SizedBox(height: 5),
            Text(
              _offDays(
                workday: workday,
                lowerLimit: userSettingState.lowerLimit!,
                dailyAverageHour: userSettingState.dailyAverage!.hour,
                dailyAverageMin: userSettingState.dailyAverage!.minute,
              ),
              style: CustomTextFont.result,
            ),
            const SizedBox(height: 5),
            Text(
              '休めます！',
              style: CustomTextFont.title,
            )
          ],
        ),
      ),
    );
  }

  String _offDays({
    required int workday,
    TimeOfDay? lowerLimit,
    int dailyAverageHour = 8,
    int dailyAverageMin = 0,
  }) {
    if (lowerLimit == null) return '';

    final lowerLimitDays =
        lowerLimit.hour / (dailyAverageHour + dailyAverageMin / 60);
    final diffDays = workday - lowerLimitDays.ceil();

    return '$diffDays日';
  }
}
