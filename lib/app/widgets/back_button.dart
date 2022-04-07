import 'package:ecommers/app/theme/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      onTap: () => context.router.pop(),
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: Row(
          children: const [
            Icon(
              CupertinoIcons.arrow_left,
              size: 16,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'В магазин',
              style: Style.montserrat12w400,
            ),
          ],
        ),
      ),
    );
  }
}
