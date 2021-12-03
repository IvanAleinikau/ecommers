import 'package:ecommers/app/theme/text_style.dart';
import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('asset/image/proig5.jpg'),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          margin: const EdgeInsets.fromLTRB(350, 130, 350, 130),
          color: Colors.white,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 70),
                child: const Text(
                  'Контакты:',
                  style: Style.contacts,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 50),
                child: const Text(
                  'Брест, ул. Дзержинского 3, ТЦ "Общага", 1 этаж, пав. 107',
                  style: Style.info2,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 30),
                child: const Text(
                  '+375(33)672-90-86',
                  style: Style.info2,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 30),
                child: const Text(
                  'vinylcollection@gmail.com',
                  style: Style.info2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
