import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/core/model/order_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderWidget extends StatefulWidget {
  final Order order;

  const OrderWidget({
    Key? key,
    required this.order,
  }) : super(key: key);

  @override
  State<OrderWidget> createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Container(
                    width: 200,
                    child: Text(
                      'Заказчик: ',
                      style: Style.montserrat16w400.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    widget.order.customerName,
                    style: Style.montserrat16w400,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    widget.order.customerPhone,
                    style: Style.montserrat16w400,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    widget.order.customerEmail,
                    style: Style.montserrat16w400,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 200,
                    child: Text(
                      'Заказ: ',
                      style: Style.montserrat16w400.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    widget.order.orderTitle,
                    style: Style.montserrat16w400,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    widget.order.vendorCode,
                    style: Style.montserrat16w400,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 200,
                    child: Text(
                      'Адресс доставки: ',
                      style: Style.montserrat16w400.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    widget.order.customerCity,
                    style: Style.montserrat16w400,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    widget.order.customerAddress,
                    style: Style.montserrat16w400,
                  )
                ],
              ),
            ],
          ),
          const SizedBox(width: 100),
          Row(
            children: [
              const Icon(
                CupertinoIcons.checkmark_alt_circle_fill,
                size: 28,
                color: Colors.green,
              ),
              const SizedBox(width: 5),
              Text(
                'Оплачено',
                style: Style.montserrat18w400.copyWith(color: Colors.green),
              ),
            ],
          ),
          const SizedBox(width: 25),
          Row(
            children: [
              const Icon(
                CupertinoIcons.cart,
                size: 28,
                color: Colors.red,
              ),
              const SizedBox(width: 5),
              Text(
                'Доставлено',
                style: Style.montserrat18w400.copyWith(color: Colors.red),
              ),
            ],
          )
        ],
      ),
    );
  }
}
