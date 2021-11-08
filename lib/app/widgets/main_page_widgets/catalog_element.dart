import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/app/widgets/main_page_widgets/stick.dart';
import 'package:flutter/material.dart';

class CatalogElement extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const CatalogElement({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              margin: const EdgeInsets.fromLTRB(100, 30, 35, 70),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              color: Colors.lime.shade50,
              margin: const EdgeInsets.fromLTRB(35, 30, 100, 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(100, 170, 0, 50),
                    child: Text(
                      title,
                      style: Style.catalogName,
                    ),
                  ),
                  const Stick(),
                  Container(
                    padding: const EdgeInsets.fromLTRB(100, 30, 80, 50),
                    child: Text(
                      subtitle,
                      style: Style.catalogInfo,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(100, 30, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'В магазин',
                        style: Style.catalogButton,
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          fixedSize: const Size(200, 50)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
