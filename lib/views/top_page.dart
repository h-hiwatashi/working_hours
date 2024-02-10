import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:working_hours/views/this_month_page.dart';

final _tabProvider = StateProvider((ref) => 0);

class TopPage extends ConsumerWidget {
   TopPage({Key? key}) : super(key: key);

  final _pages = [
    const ThisMonthPage('Total'),
    const ThisMonthPage('Average'),
    const ThisMonthPage('Settings')
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Bottom Tab Bar Sample"),
      // ),
      body: _pages.elementAt(ref.watch(_tabProvider)),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.access_time_outlined), label: 'Total'),
          BottomNavigationBarItem(icon: Icon(Icons.av_timer), label: 'Average'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
        currentIndex: ref.watch(_tabProvider),
        onTap: (int index) {
          ref.read(_tabProvider.notifier).state = index;
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        backgroundColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}