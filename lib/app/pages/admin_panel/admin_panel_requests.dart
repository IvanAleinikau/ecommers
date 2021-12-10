import 'package:flutter/material.dart';

class AdminPanelRequests extends StatefulWidget {
  const AdminPanelRequests({Key? key}) : super(key: key);

  @override
  _AdminPanelRequestsState createState() => _AdminPanelRequestsState();
}

class _AdminPanelRequestsState extends State<AdminPanelRequests> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height-56.2,
      padding: EdgeInsets.zero,
      child: const Center(
        child: Text('Requests'),
      ),
    );
  }
}
