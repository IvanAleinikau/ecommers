import 'package:flutter/material.dart';

class AdminPanelSettings extends StatefulWidget {
  const AdminPanelSettings({Key? key}) : super(key: key);

  @override
  _AdminPanelSettingsState createState() => _AdminPanelSettingsState();
}

class _AdminPanelSettingsState extends State<AdminPanelSettings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height-56.2,
      padding: EdgeInsets.zero,
      child: const Center(
        child: Text('Settings'),
      ),
    );
  }
}
