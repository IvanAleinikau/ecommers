import 'package:auto_route/auto_route.dart';
import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/core/model/accessories_model.dart';
import 'package:ecommers/core/router/router.gr.dart';
import 'package:flutter/material.dart';

class AccessoriesWidget extends StatefulWidget {
  final Accessories accessories;

  const AccessoriesWidget({
    Key? key,
    required this.accessories,
  }) : super(key: key);

  @override
  State<AccessoriesWidget> createState() => _AccessoriesWidgetState();
}

class _AccessoriesWidgetState extends State<AccessoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: () =>
            context.router.navigate(AccessoriesDetailedRoute(accessories: widget.accessories)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    widget.accessories.imageUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  widget.accessories.title,
                  style: Style.montserrat16w400.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  widget.accessories.subtitle,
                  style: Style.montserrat12w400.copyWith(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                Text(
                  '${widget.accessories.cost} руб.',
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
