import 'package:facebook_clone/page/account/main_account.dart';
import 'package:facebook_clone/page/friend/friend_main_page.dart';
import 'package:facebook_clone/page/home/home_page.dart';

import 'package:facebook_clone/page/notification/main_page_notification.dart';
import 'package:facebook_clone/page/video/main_video.dart';
import 'package:facebook_clone/page/workplace/main_workplace.dart';
import 'package:flutter/material.dart';

class MyButonNavication extends StatefulWidget {
  const MyButonNavication({super.key});

  @override
  State<MyButonNavication> createState() => _MyButonNavicationState();
}

class _MyButonNavicationState extends State<MyButonNavication> {
  int _seletedIndex = 0;
  void _navigationButtonBar(int index) {
    setState(() {
      _seletedIndex = index;
    });
  }

  final List<Widget> _page = [
    const MyHomePage(),
    const FriendPage(),
    const MainVideo(),
    const MainWorkplace(),
    const MainNotification(),
    const MyMainAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_seletedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _seletedIndex,
        onTap: _navigationButtonBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_4_rounded), label: 'Friend'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library_sharp), label: 'Video'),
          BottomNavigationBarItem(
              icon: Icon(Icons.storefront_outlined), label: 'Workplace'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined),
              label: 'Notification'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_sharp), label: 'Account'),
        ],
      ),
    );
  }
}
