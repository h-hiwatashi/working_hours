import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:working_hours/views/setting_page.dart';
import 'package:working_hours/views/this_month_page.dart';

final _tabProvider = StateProvider((ref) => 0);

class TopPage extends ConsumerWidget {
  TopPage({Key? key}) : super(key: key);

  final _pages = [ThisMonthPage(), ThisMonthPage(), SettingPage()];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: _pages.elementAt(ref.watch(_tabProvider)),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time_outlined), label: 'Total'),
          BottomNavigationBarItem(icon: Icon(Icons.av_timer), label: 'Average'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        currentIndex: ref.watch(_tabProvider),
        onTap: (int index) {
          ref.read(_tabProvider.notifier).state = index;
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Theme.of(context).colorScheme.outline,
        backgroundColor: Theme.of(context).colorScheme.primary,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
