import 'package:ecommers/app/theme/text_style.dart';
import 'package:flutter/material.dart';

class OrderButton extends StatelessWidget {
  final VoidCallback onTap;

  const OrderButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Text(
          'Оформить заказ',
          style: Style.montserrat14w400.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
