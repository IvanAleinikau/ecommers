import 'package:ecommers/app/theme/text_style.dart';
import 'package:flutter/material.dart';

class GestureContainer extends StatelessWidget {
  final String image;
  final String name;

  const GestureContainer({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: AspectRatio(
        aspectRatio: 1,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  name,
                  style: Style.nameProduct,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
