import 'package:auto_route/auto_route.dart';
import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/core/model/acoustics_model.dart';
import 'package:ecommers/core/router/router.gr.dart';
import 'package:flutter/material.dart';

class AcousticsWidget extends StatefulWidget {
  final Acoustics acoustics;

  const AcousticsWidget({
    Key? key,
    required this.acoustics,
  }) : super(key: key);

  @override
  State<AcousticsWidget> createState() => _AcousticsWidgetState();
}

class _AcousticsWidgetState extends State<AcousticsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: () => context.router.navigate(AcousticsDetailedRoute(acoustics: widget.acoustics)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    widget.acoustics.imageUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  widget.acoustics.title,
                  style: Style.montserrat16w400.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  widget.acoustics.subtitle,
                  style: Style.montserrat12w400.copyWith(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                Text(
                  '${widget.acoustics.cost} руб.',
                  style: Style.montserrat16w400.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
              ],
            )
          ],
        ),
      ),
    );
  }
}
