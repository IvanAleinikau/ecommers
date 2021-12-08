import 'package:flutter/material.dart';

class AdminPanelAppBar extends StatelessWidget {
  const AdminPanelAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 56.2,
          margin: const EdgeInsets.only(left: 1.8),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                spreadRadius: 0,
                blurRadius: 5,
                offset: const Offset(0, 7),
              ),
            ],
          ),
          child: Row(
            children: const [],
          ),
        ),
      ],
    );
  }
}
