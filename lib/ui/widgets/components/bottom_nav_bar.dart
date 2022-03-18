import 'package:credit_clan_task/ui/screens/bottom_nav_container/chat/chat_screen.dart';
import 'package:credit_clan_task/ui/screens/bottom_nav_container/home/home_screen.dart';
import 'package:credit_clan_task/ui/screens/bottom_nav_container/notification/notification_screen.dart';
import 'package:credit_clan_task/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  static const String id = 'bottom_nav_bar';
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  final screens = [
    const HomeScreen(),
    const NotificationScreen(),
    const ChatScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: scaffoldBackgroundTheme,
        elevation: 0.0,
        selectedItemColor: tabBarTheme,
        unselectedItemColor: unselectedNavBarTheme,
        iconSize: 30.0,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.video_label_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.notifications),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.chat_bubble_outline_sharp),
          ),
        ],
      ),
    );
  }
}
