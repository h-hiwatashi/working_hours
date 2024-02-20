import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:working_hours/component/content.dart';
import 'package:working_hours/state/user_setting/user_setting_notifier.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({Key? key}) : super(key: key);
  static const _unitName = '時間';

  @override
  Widget build(BuildContext contex, WidgetRef ref) {
    final userSettingNotifier = ref.watch(userSettingProvider.notifier);

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //TODO: 実装予定
          // CustomMonthTextField(
          //   title: '月を指定する',
          //   text: _unitName,
          //   controller: userSettingNotifier.monthController,
          // ),
          const SizedBox(height: 20),
          CustomTextField(
            title: '1日の作業時間（平均）',
            text: _unitName,
            hController: userSettingNotifier.dailyAverageHourController,
            mController: userSettingNotifier.dailyAverageMinController,
          ),
          const SizedBox(height: 20),
          CustomTextField(
            title: '契約の上限時間',
            text: _unitName,
            hController: userSettingNotifier.upperLimitHController,
            mController: userSettingNotifier.upperLimitMController,
          ),
          const SizedBox(height: 20),
          CustomTextField(
            title: '契約の最低時間',
            text: _unitName,
            hController: userSettingNotifier.lowerLimitHController,
            mController: userSettingNotifier.lowerLimitMController,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              ref.read(userSettingProvider.notifier).changeSetting(
                    //TODO: 実装予定
                    // month: int.parse(
                    //     userSettingNotifier.monthController.value.text == ''
                    //         ? '0'
                    //         : userSettingNotifier.monthController.value.text),
                    dailyAverage: stringToTimeOfDayConverter(
                      userSettingNotifier.dailyAverageHourController.text,
                      userSettingNotifier.dailyAverageMinController.text,
                    ),
                    lowerLimit: stringToTimeOfDayConverter(
                      userSettingNotifier.lowerLimitHController.text,
                      userSettingNotifier.lowerLimitMController.text,
                    ),
                    upperLimit: stringToTimeOfDayConverter(
                      userSettingNotifier.upperLimitHController.text,
                      userSettingNotifier.upperLimitMController.text,
                    ),
                  );
            },
            child: const Text('設定を保存'),
          ),
        ],
      ),
    );
  }

  TimeOfDay stringToTimeOfDayConverter(String hourText, String minText) {
    final intHour = int.parse(hourText == '' ? "0" : hourText);
    final intMin = int.parse(minText == '' ? "0" : minText);
    final allMin = intHour * 60 + intMin;
    final h = allMin ~/ 60;
    final m = allMin % 60;

    return TimeOfDay(hour: h, minute: m);
  }
}
