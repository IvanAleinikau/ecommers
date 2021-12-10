import 'package:flutter/material.dart';

class AdminPanelProducts extends StatefulWidget {
  const AdminPanelProducts({Key? key}) : super(key: key);

  @override
  _AdminPanelProductsState createState() => _AdminPanelProductsState();
}

class _AdminPanelProductsState extends State<AdminPanelProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height-56.2,
      padding: EdgeInsets.zero,
      child: const Center(
        child: Text('Products'),
      ),
    );
  }
}
