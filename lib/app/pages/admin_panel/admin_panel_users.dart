import 'package:flutter/material.dart';

class AdminPanelUsers extends StatefulWidget {
  const AdminPanelUsers({Key? key}) : super(key: key);

  @override
  _AdminPanelUsersState createState() => _AdminPanelUsersState();
}

class _AdminPanelUsersState extends State<AdminPanelUsers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height-56.2,
      padding: EdgeInsets.zero,
      child: const Center(
        child: Text('Users'),
      ),
    );
  }
}
