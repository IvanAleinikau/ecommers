import 'package:ecommers/app/theme/text_style.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              height: 1000,
              color: Colors.white70,
              padding: const EdgeInsets.fromLTRB(70, 0, 70, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'О нас',
                    style: Style.info,
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: const Text(
                      'Vinyl Collection является официальным представителем бренда Crosley, Audio-Technica, Pro-Ject, Yamaha, Klipsch, Jamo, Dali, Marantz, Denon, Thorens в Беларуси.',
                      style: Style.info2,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: const Text(
                      'Большой выбор проигрывателей винила, пластинок и предметов интерьера.',
                      style: Style.info2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/image/proig2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
