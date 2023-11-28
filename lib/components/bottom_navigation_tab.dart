import 'package:base_widgets/models/tab_item.dart';
import 'package:flutter/material.dart';

class BottomNavigationTab extends StatefulWidget {
  final String title;
  final List<TabItem> tabItems;
  final List<Widget> screens;

  const BottomNavigationTab({
    Key? key,
    required this.title,
    required this.tabItems,
    required this.screens,
  }) : super(key: key);

  @override
  State<BottomNavigationTab> createState() => _BottomNavigationTabState();
}

class _BottomNavigationTabState extends State<BottomNavigationTab> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: widget.tabItems.map((item) => BottomNavigationBarItem(
          icon: Icon(IconData(item.icon, fontFamily: 'MaterialIcons')),
          label: item.name,
        )).toList(),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}