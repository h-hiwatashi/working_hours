import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:working_hours/views/this_month_page.dart';

final counterProvider = StateProvider((ref) => 0);

class TopPage extends ConsumerWidget {
   TopPage({Key? key}) : super(key: key);

  final _pages = [
    const TabSamplePage('Home'),
    const TabSamplePage('Chat'),
    const TabSamplePage('Search'),
    const TabSamplePage('Settings')
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Tab Bar Sample"),
      ),
      body: _pages.elementAt(ref.watch(counterProvider)),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
        currentIndex: ref.watch(counterProvider),
        onTap: (int index) {
          ref.read(counterProvider);
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        backgroundColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}