import 'package:ecommers/app/theme/text_style.dart';
import 'package:flutter/material.dart';

class AdminPanelButton extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final String buttonName;
  final void Function()? onPressed;
  final IconData? icon;
  final double width;

  const AdminPanelButton({
    Key? key,
    required this.padding,
    required this.buttonName,
    required this.onPressed,
    required this.icon,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          fixedSize: Size(width, 45),
          alignment: Alignment.centerLeft,
          elevation: 0,
        ),
        onPressed: onPressed,
        icon: Icon(icon, color: Colors.grey.shade700),
        label: Text(
          buttonName,
          style: Style.adminPanelButton,
        ),
      ),
    );
  }
}
