import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:working_hours/model/arguments/arguments_model.dart';
import 'package:working_hours/state/holidays/holidays_notifier.dart';
import 'package:working_hours/state/passed_time/passed_time_notifier.dart';
import 'package:working_hours/state/user_setting/user_setting_notifier.dart';
import 'package:working_hours/component/content.dart';
import 'package:working_hours/utils/font.dart';

class ThisMonthPage extends ConsumerWidget {
  const ThisMonthPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String minText = "";
    final now = DateTime.now();
    final userSettingState = ref.watch(userSettingProvider);
    final passedTimeNotifier = ref.read(passedTimeProvider.notifier);
    final asyncValue = ref.watch(workdayProvider(WorkdayArgs(
      year: now.year,
      month: now.month,
    )));
    int workday = 20;
    final display = asyncValue.when(
      data: (data) {
        workday = data.workday ?? 20;
        Text(workday.toString());
      },
      loading: () => const CircularProgressIndicator(),
      error: (error, _) => Text(error.toString()),
    );
    final workAllMinInThisMonth =
        workday * userSettingState.dailyAverage!.hour * 60 +
            userSettingState.dailyAverage!.minute;
    final workHourInThisMonth = workAllMinInThisMonth ~/ 60;
    final workMinInThisMonth = workAllMinInThisMonth % 60;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            display ?? Container(),
            //TODO: 不要かもしれない
            // Content(
            //     title: '${now.month}月の稼働予定時間',
            //     text: '$workHourInThisMonth 時間 $workMinInThisMonth 分'),
            // const SizedBox(height: 20),
            Column(
              children: [
                Text(
                  '今日までの作業時間',
                  style: CustomTextFont.title,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      child: TextFormField(
                        controller: passedTimeNotifier.hourController,
                        onChanged: (value) {
                          final v = value == '' ? '0' : value;
                          ref
                              .read(passedTimeProvider.notifier)
                              .setHour(int.parse(v));
                        },
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(8),
                          FilteringTextInputFormatter.allow(
                            RegExp(r'[0-9]'),
                          ),
                        ],
                        style: CustomTextFont.content,
                      ),
                    ),
                    Text(
                      '時間',
                      style: CustomTextFont.content,
                    ),
                    SizedBox(
                      width: 100,
                      child: TextFormField(
                        controller: passedTimeNotifier.minuteController,
                        onChanged: (value) {
                          minText = value;
                          final v = value == '' ? '0' : value;
                          ref
                              .read(passedTimeProvider.notifier)
                              .setMin(int.parse(v));
                        },
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(2),
                          FilteringTextInputFormatter.allow(
                            RegExp(r'[0-9]'),
                          ),
                        ],
                        style: CustomTextFont.content,
                      ),
                    ),
                    Text(
                      '分',
                      style: CustomTextFont.content,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final tpassedTime = TimeOfDay(
                  hour: ref.read(passedTimeProvider).hour!,
                  minute: ref.read(passedTimeProvider).min!,
                );
                ref
                    .read(passedTimeProvider.notifier)
                    .setWorkingHours(tpassedTime);
              },
              child: Text(
                '残りの作業時間を計算',
                style: CustomTextFont.title,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '下限まであと',
              style: CustomTextFont.title,
            ),
            Text(
              _durationFromTimeOfDay(
                ref.watch(passedTimeProvider).workingHours,
                userSettingState.lowerLimit!,
              ),
              style: CustomTextFont.result,
            ),
            const SizedBox(height: 10),
            Text(
              '上限まであと',
              style: CustomTextFont.title,
            ),
            Text(
              _durationFromTimeOfDay(
                ref.watch(passedTimeProvider).workingHours,
                userSettingState.upperLimit!,
              ),
              style: CustomTextFont.result,
            ),
            const SizedBox(height: 10),
            ..._workingDay(
              ref.watch(passedTimeProvider).workingHours,
              userSettingState.lowerLimit!,
              workday,
              userSettingState.dailyAverage,
            )
          ],
        ),
      ),
    );
  }

  String _durationFromTimeOfDay(TimeOfDay? start, TimeOfDay? end) {
    if (start == null || end == null) return '';

    final startAllMin = start.hour * 60 + start.minute;
    final endAllMin = end.hour * 60 + end.minute;

    final diffMin = endAllMin - startAllMin;
    final h = diffMin ~/ 60;
    final m = diffMin % 60;

    return '$h時間$m分';
  }

  List<Widget> _workingDay(
    TimeOfDay? passedTime,
    TimeOfDay? lowerLimit,
    int? workday,
    TimeOfDay? averageTime,
  ) {
    if (passedTime == null || lowerLimit == null || workday == null) {
      return [
        Text(
          '必要稼働日数',
          style: CustomTextFont.title,
        ),
        const SizedBox(height: 5),
        const Text(''),
      ];
    }
    if (workday == 0) {
      return [
        Text(
          '下限はクリアしています。',
          style: CustomTextFont.result,
        ),
      ];
    }
    if (averageTime == const TimeOfDay(hour: 0, minute: 0) ||
        averageTime == null) {
      return [
        const Text('平均稼働時間が正しくありません。'),
      ];
    }
    final passedTimeAllMin = passedTime.hour * 60 + passedTime.minute;
    final lowerLimitAllMin = lowerLimit.hour * 60 + lowerLimit.minute;
    final diffMin = lowerLimitAllMin - passedTimeAllMin;
    if (diffMin <= 0) {
      return [
        Text(
          '下限はクリアしています。',
          style: CustomTextFont.result,
        ),
      ];
    }
    final averageAllMin = averageTime.hour * 60 + averageTime.minute;
    // final needDay = diffMin ~/ (averageHour * 60);
    // final needTime = diffMin % (averageHour * 60);
    final needDay = diffMin ~/ averageAllMin;
    final needTime = diffMin % averageAllMin;
    final needHour = needTime ~/ 60;
    final needMinute = needTime % 60;

    return [
      Text(
        '最低必要稼働日数',
        style: CustomTextFont.title,
      ),
      Text(
        style: CustomTextFont.result,
        '$needDay日間$needHour時間$needMinute分',
      ),
    ];
  }
}
