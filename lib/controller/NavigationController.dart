import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:random_cat/view/LikeScreen.dart';
import 'package:random_cat/view/MainScreen.dart';

class NavigationController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return PersistentTabView(context,
      screens: _screens(),
      items: navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      navBarStyle: NavBarStyle.style9,
    );

  }

  List<Widget> _screens() {
    return [
      MainScreen(title: "Main"),
      LikeScreen(title: "Gallery")
    ];
  }

  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
        activeColor: Colors.pink,
        inactiveColor: Colors.pinkAccent,
      ),
      PersistentBottomNavBarItem(icon: Icon(Icons.photo_album),
        title: ("Mes likes"),
        activeColor: Colors.blue,
        inactiveColor: Colors.blueAccent
      )
    ];
  }


}