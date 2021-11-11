import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/app/widgets/main_page_widgets/section_name.dart';
import 'package:flutter/material.dart';

class Brands extends StatelessWidget {
  final _border = BorderSide(
    color: Colors.grey.shade300,
    width: 2,
  );

  Brands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: Column(
        children: [
          const SectionName(
            name: 'Официальный представитель брендов:',
            style: Style.catalog,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 50, 100, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(bottom: _border, right: _border),
                  ),
                  child: Image.asset('asset/brands/audio_technica.jpg'),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(bottom: _border, right: _border),
                  ),
                  child: Image.asset('asset/brands/monitor_audio.jpg'),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(bottom: _border, right: _border),
                  ),
                  child: Image.asset(
                    'asset/brands/pro_ject.jpg',
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(bottom: _border),
                  ),
                  child: Image.asset('asset/brands/cambridge_audio.jpg'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 0, 100, 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(right: _border),
                  ),
                  child: Image.asset('asset/brands/yamaha.jpg'),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(right: _border),
                  ),
                  child: Image.asset('asset/brands/klipsch.jpg'),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(right: _border),
                  ),
                  child: Image.asset('asset/brands/tannoy.jpg'),
                ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(),
                  ),
                  child: Image.asset('asset/brands/jamo.jpg'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
