import 'dart:core';

import 'package:flutter/material.dart';
import 'package:mobile/components/navBar.dart';
import 'package:provider/provider.dart';

import 'navBar.dart';

class navBar extends StatelessWidget {
  //final Function()? onTap;
  const navBar({
    super.key,
    //required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    final screenindexProvider = Provider.of<screenIndexProvider>(context);
    int currentScreenIndex = screenIndexProvider().fetchCurentIndex;
    return Builder(builder: (context) {
      return BottomNavigationBar(
        elevation: 1,
        type: BottomNavigationBarType.shifting,
        showSelectedLabels: false,
        currentIndex: currentScreenIndex,
        onTap: (value) => screenIndexProvider().updateScreenIndex(value),
        items: const [
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.home,
                size: 30,
                color: Colors.blue,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.blue,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.music_note,
                size: 30,
                color: Colors.blue,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.settings,
                size: 30,
                color: Colors.blue,
              )),
        ],
      );
    });
  }
}

class screenIndexProvider extends ChangeNotifier {
  int screenIndex = 0;
  int get fetchCurentIndex {
    return screenIndex;
  }

  void updateScreenIndex(int newIndex) {
    screenIndex = newIndex;
    notifyListeners();
  }
}
