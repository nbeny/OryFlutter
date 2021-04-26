import 'package:blog/pages/history/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:blog/pages/account/view.dart';
import 'package:blog/pages/alerts/view.dart';
import 'package:blog/pages/home/view.dart';
import 'package:blog/pages/blog/view.dart';

import 'controller.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<IndexController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomePage(),
                BlogPage(),
                AlertsPage(),
                AccountPage(),
                HistoryPage(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.redAccent,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            items: [
              _bottomNavigationBarItem(
                icon: CupertinoIcons.house_fill,
                label: 'Home',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.book_fill,
                label: 'Blog',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.flag_fill,
                label: 'Alerts',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.person,
                label: 'Account',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.archivebox_fill,
                label: 'History',
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
