import 'package:flutter/material.dart';
import 'package:helloworld/pages/weekly_page.dart';
import 'package:helloworld/pages/monthly_page.dart';
import 'package:helloworld/pages/daily_page.dart';

class TabPage extends StatelessWidget {
  final _tab = <Tab>[
    Tab(text: 'daily', icon: Icon(Icons.calendar_today)),
    Tab(text: 'weekly', icon: Icon(Icons.calendar_view_week)),
    Tab(text: 'monthly', icon: Icon(Icons.calendar_view_month)),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tab.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TO DO LIST"),
          bottom: TabBar(
            tabs: _tab,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            DailyPage(),
            WeeklyPage(),
            MonthlyPage(),
          ],
        ),
      ),
    );
  }
}
