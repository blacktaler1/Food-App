import 'package:flutter/material.dart';
import 'package:foodapp/models/food.dart';

class MyTapBar extends StatelessWidget {
  const MyTapBar({
    super.key,
    required this.tapBarController,
  });
  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }
  final TabController tapBarController;

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: TabBar(
        tabs: _buildCategoryTabs(),
        controller: tapBarController,
      ),
    );
  }
}
