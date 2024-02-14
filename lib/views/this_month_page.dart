import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:working_hours/model/arguments/arguments_model.dart';
import 'package:working_hours/state/holidays/holidays_notifier.dart';
import 'package:working_hours/state/passed_time/passed_time_notifier.dart';
import 'package:working_hours/state/user_setting/user_setting_notifier.dart';
import 'package:working_hours/component/content.dart';

class ThisMonthPage extends ConsumerWidget {
  ThisMonthPage({Key? key}) : super(key: key);

  static const _unitName = '時間';
  final _now = DateTime.now();
  String minText = "";
  String hourText = "";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userSettingState = ref.read(userSettingProvider);
    final passedTimeNotifier = ref.read(passedTimeProvider.notifier);
    final asyncValue = ref.watch(workdayProvider(WorkdayArgs(
      year: _now.year,
      month: _now.month,
    )));
    int _workday = 20;
    final display = asyncValue.when(
      data: (data) {
        _workday = data.workday ?? 20;
        Text(_workday.toString());
      },
      loading: () => const CircularProgressIndicator(),
      error: (error, _) => Text(error.toString()),
    );
    final _workHourInThisMonth = _workday * userSettingState.dailyAverage!;

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
            Content(
                title: '${_now.month}月の稼働予定時間',
                text: '$_workHourInThisMonth $_unitName'),
            const SizedBox(height: 20),
            Column(
              children: [
                const Text('今日までの作業時間'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      child: TextField(
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
                      ),
                    ),
                    const Text('時間'),
                    SizedBox(
                      width: 100,
                      child: TextField(
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
                      ),
                    ),
                    const Text('分'),
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
              child: const Text('残りの作業時間を計算'),
            ),
            const Text('下限まであと'),
            Text(
              durationFromTimeOfDay(
                ref.watch(passedTimeProvider).workingHours,
                TimeOfDay(hour: userSettingState.lowerLimit!, minute: 00),
              ),
            ),
            const SizedBox(height: 10),
            const Text('上限まであと'),
            Text(
              durationFromTimeOfDay(
                ref.watch(passedTimeProvider).workingHours,
                TimeOfDay(hour: userSettingState.upperLimit!, minute: 00),
              ),
            ),
            const SizedBox(height: 10),
            ..._workingDay(
              ref.watch(passedTimeProvider).workingHours,
              TimeOfDay(hour: userSettingState.lowerLimit!, minute: 00),
              _workday,
              userSettingState.dailyAverage,
            )
          ],
        ),
      ),
    );
  }

  String durationFromTimeOfDay(TimeOfDay? start, TimeOfDay? end) {
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
    int? averageHour,
  ) {
    if (passedTime == null || lowerLimit == null || workday == null) {
      return [
        const Text('必要稼働日数'),
        const SizedBox(height: 5),
        const Text(''),
      ];
    }
    if (workday == 0) {
      return [
        const Text('下限はクリアしています。'),
      ];
    }
    if (averageHour == 0 || averageHour == null) {
      return [
        const Text('平均稼働時間が正しくありません。'),
      ];
    }
    final passedTimeAllMin = passedTime.hour * 60 + passedTime.minute;
    final lowerLimitAllMin = lowerLimit.hour * 60 + lowerLimit.minute;
    final diffMin = lowerLimitAllMin - passedTimeAllMin;
    if (diffMin <= 0) {
      return [
        const Text('下限はクリアしています。'),
      ];
    }
    final needDay = diffMin ~/ (averageHour * 60);
    final needTime = diffMin % (averageHour * 60);
    final needHour = needTime ~/ 60;
    final needMinute = needTime % 60;

    return [
      const Text('必要稼働日数'),
      const SizedBox(height: 5),
      Text('あと $needDay日間$needHour時間$needMinute分'),
    ];
  }
}
