import 'package:dashboard/widgets/dashboard.dart';
import 'package:dashboard/widgets/menu.dart';
import 'package:dashboard/widgets/profile.dart';
import 'package:dashboard/widgets/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routName = "/";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
            Expanded(
            flex: 1,
            child: MenuWidget(),
          ),
          Expanded(
            flex: 4,
            child: DashBoard(),
          ),
            Expanded(
            flex: 2,
            child: SideBar(),
          ),
        ],
      ),
    );
  }
}
