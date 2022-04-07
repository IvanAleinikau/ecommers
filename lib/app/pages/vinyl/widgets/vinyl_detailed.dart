import 'package:ecommers/app/common/empty_widget.dart';
import 'package:ecommers/app/theme/color_palette.dart';
import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/app/widgets/back_button.dart';
import 'package:ecommers/app/widgets/order_button.dart';
import 'package:ecommers/core/model/vinyl_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VinylDetailed extends StatefulWidget {
  final Vinyl vinyl;

  const VinylDetailed({
    Key? key,
    required this.vinyl,
  }) : super(key: key);

  @override
  State<VinylDetailed> createState() => _VinylDetailedState();
}

class _VinylDetailedState extends State<VinylDetailed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: ColorPalette.authBackground),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: MyBackButton(),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 150),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: MediaQuery.of(context).size.width / 2.5,
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              widget.vinyl.imageUrl,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 50),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: MediaQuery.of(context).size.width / 2.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            Text(
                              widget.vinyl.title,
                              style: Style.montserrat22w400.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              '${widget.vinyl.cost} руб.',
                              style: Style.montserrat18w400,
                            ),
                            const SizedBox(height: 30),
                            const OrderButton(),
                            const SizedBox(height: 40),
                            Text(
                              widget.vinyl.description,
                              style: Style.montserrat16w400,
                            ),
                            const SizedBox(height: 20),
                            const Expanded(child: EmptyWidget()),
                            Text(
                              'Год релиза: ${widget.vinyl.year}',
                              style: Style.montserrat14w400,
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
