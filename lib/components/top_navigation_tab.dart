import 'package:base_widgets/models/tab_item.dart';
import 'package:flutter/material.dart';

class TopNavigationTab extends StatelessWidget {
  final String title;
  final List<TabItem> tabItems;
  final List<Widget> screens;

  const TopNavigationTab({
    Key? key,
    required this.title,
    required this.tabItems,
    required this.screens,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabItems.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: tabItems.map((item) => Icon(IconData(item.icon, fontFamily: 'MaterialIcons'))).toList(),
          ),
          title: Text(title),
        ),
        body: TabBarView(
          children: screens,
        ),
      ),
    );
  }
}