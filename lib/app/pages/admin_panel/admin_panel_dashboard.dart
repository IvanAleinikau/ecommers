import 'package:flutter/material.dart';

class AdminPanelDashboard extends StatefulWidget {
  const AdminPanelDashboard({Key? key}) : super(key: key);

  @override
  _AdminPanelDashboardState createState() => _AdminPanelDashboardState();
}

class _AdminPanelDashboardState extends State<AdminPanelDashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height-56.2,
      padding: EdgeInsets.zero,
      child: const Center(
        child: Text('Dashboard'),
      ),
    );
  }
}
