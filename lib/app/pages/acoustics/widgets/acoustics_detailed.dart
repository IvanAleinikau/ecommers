import 'package:ecommers/app/common/empty_widget.dart';
import 'package:ecommers/app/theme/color_palette.dart';
import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/app/widgets/back_button.dart';
import 'package:ecommers/app/widgets/order_button.dart';
import 'package:ecommers/core/model/acoustics_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AcousticsDetailed extends StatefulWidget {
  final Acoustics acoustics;

  const AcousticsDetailed({
    Key? key,
    required this.acoustics,
  }) : super(key: key);

  @override
  State<AcousticsDetailed> createState() => _AcousticsDetailedState();
}

class _AcousticsDetailedState extends State<AcousticsDetailed> {
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
                              widget.acoustics.imageUrl,
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
                              widget.acoustics.title,
                              style: Style.montserrat22w400.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              '${widget.acoustics.cost} руб.',
                              style: Style.montserrat18w400,
                            ),
                            const SizedBox(height: 30),
                            const OrderButton(),
                            const SizedBox(height: 40),
                            Text(
                              widget.acoustics.description,
                              style: Style.montserrat16w400,
                            ),
                            const SizedBox(height: 20),
                            const Expanded(child: EmptyWidget()),
                            Text(
                              'Артикул: ${widget.acoustics.hashCode}',
                              style: Style.montserrat12w400.copyWith(color: Colors.grey),
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
