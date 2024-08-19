import 'package:flutter/material.dart';
import 'package:getx_ui_kit_property/app/data/bottom_bar_item.dart';
import 'package:getx_ui_kit_property/app/utils/constants.dart';

class AppBottomNavigation extends StatefulWidget {
  @override
  _AppBottomNavigationState createState() => _AppBottomNavigationState();
}

class _AppBottomNavigationState extends State<AppBottomNavigation> {
  String activePage = "home"; // Track active page

  void setActivePage(String page) {
    setState(() {
      activePage = page;
    });
  }

  //LEts create a model for the items on the bar
  List<BottomBarItem> items = [];

  @override
  void initState() {
    items = [
      BottomBarItem(
        icon: Icons.home,
        onPressed: () {
          setActivePage("home");
        },
        key: "home",
      ),
      BottomBarItem(
        icon: Icons.heart_broken,
        onPressed: () {
          setActivePage("favorites");
        },
        key: "favorites",
      ),
      BottomBarItem(
        icon: Icons.grid_3x3,
        onPressed: () {
          setActivePage("menu");
        },
        key: "menu",
      ),
      BottomBarItem(
        icon: Icons.mail,
        onPressed: () {
          setActivePage("messages");
        },
        key: "messages",
      ),
      BottomBarItem(
        icon: Icons.verified_user,
        onPressed: () {
          setActivePage("profile");
        },
        key: "profile",
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 12.0,
        bottom: 12.0,
        right: 12.0,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 4.0,
      ),
      height: 65.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items
            .map(
              (BottomBarItem item) =>
                  getBottomWidgetItem(item, activePage == item.key),
            )
            .toList(),
      ),
    );
  }
}

Widget getBottomWidgetItem(BottomBarItem item, bool isActive) {
  return Container(
    height: 62.0,
    width: 62.0,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: isActive ? Constants.primaryColor : Colors.transparent,
    ),
    child: AnimatedSwitcher(
      duration: Duration(milliseconds: 450),
      child: isActive
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 5.0,
                  width: 5.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                )
              ],
            )
          : Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: IconButton(
                icon: Icon(
                  item.icon,
                  color: Color.fromRGBO(156, 166, 201, 1),
                ),
                onPressed: item.onPressed,
              ),
            ),
    ),
  );
}
