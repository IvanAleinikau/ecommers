import 'package:ecommers/app/pages/admin_panel/admin_panel_vinyl.dart';
import 'package:flutter/material.dart';

class AdminPanelProducts extends StatefulWidget {
  const AdminPanelProducts({Key? key}) : super(key: key);

  @override
  _AdminPanelProductsState createState() => _AdminPanelProductsState();
}

class _AdminPanelProductsState extends State<AdminPanelProducts> {
  @override
  Widget build(BuildContext context) {
    return const AdminPanelVinyl();
  }
}
