import 'package:flutter/material.dart';
import 'package:nav_rail_bottom_nav_reponsive/screen/add_screen.dart';
import 'package:nav_rail_bottom_nav_reponsive/widgets/widget_data_provider.dart';

class BottomNav extends StatefulWidget with AddScreen {
   BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: widgetDataProviders
            .map((item) =>
                BottomNavigationBarItem(icon: item.icon, label: item.label))
            .toList(),
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: widget.screens[selectedIndex],
    );
  }
}
