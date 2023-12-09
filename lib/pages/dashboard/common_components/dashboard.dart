import 'package:flutter/material.dart';
import 'package:flutter_app/pages/dashboard/common_components/category.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('All Compliments'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Received'),
              Tab(text: 'Sent'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Category(category: 'Received'),
            Category(category: 'Sent'),
          ],
        ),
      ),
    );
  }
}
