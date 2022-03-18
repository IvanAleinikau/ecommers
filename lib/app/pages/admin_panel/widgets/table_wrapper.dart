import 'package:flutter/material.dart';

class TableWrapper extends StatelessWidget {
  final double height;
  final List<Widget> tableElements;
  final Widget child;

  const TableWrapper({
    Key? key,
    required this.height,
    required this.tableElements,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            flex: 1,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(5)),
              child: Container(
                color: Colors.grey.shade300,
                child: Row(
                  children: tableElements,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 10,
            child: child,
          ),
        ],
      ),
    );
  }
}
