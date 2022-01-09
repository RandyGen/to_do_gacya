import 'package:flutter/material.dart';
import 'package:helloworld/tab/pages/weekly_todo/weekly_todo_list_page.dart';
import 'package:helloworld/tab/pages/daily_todo/daily_todo_list_page.dart';
import 'package:helloworld/tab/pages/monthly_todo/monthly_todo_list_page.dart';

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
            DailyTodoPage(),
            WeeklyTodoPage(),
            MonthlyTodoPage(),
          ],
        ),
      ),
    );
  }
}
