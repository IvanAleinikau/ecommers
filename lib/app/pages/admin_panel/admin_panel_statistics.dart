import 'package:flutter/material.dart';

class AdminPanelStatistics extends StatefulWidget {
  const AdminPanelStatistics({Key? key}) : super(key: key);

  @override
  _AdminPanelStatisticsState createState() => _AdminPanelStatisticsState();
}

class _AdminPanelStatisticsState extends State<AdminPanelStatistics> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height-56.2,
      padding: EdgeInsets.zero,
      child: const Center(
        child: Text('Statistics'),
      ),
    );
  }
}
