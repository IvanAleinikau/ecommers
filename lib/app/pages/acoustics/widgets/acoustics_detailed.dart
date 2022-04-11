import 'package:auto_route/auto_route.dart';
import 'package:ecommers/app/common/empty_widget.dart';
import 'package:ecommers/app/theme/color_palette.dart';
import 'package:ecommers/app/theme/text_style.dart';
import 'package:ecommers/app/widgets/back_button.dart';
import 'package:ecommers/app/widgets/general_input.dart';
import 'package:ecommers/app/widgets/order_button.dart';
import 'package:ecommers/core/blocs/order/order_cubit.dart';
import 'package:ecommers/core/blocs/order/order_state.dart';
import 'package:ecommers/core/model/acoustics_model.dart';
import 'package:ecommers/core/model/order_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

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
  late OrderCubit _cubit;

  @override
  void initState() {
    _cubit = OrderCubit();
    super.initState();
  }

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
                            OrderButton(
                              onTap: () => _showDialog(context),
                            ),
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

  @override
  void dispose() {
    _name.dispose();
    _phone.dispose();
    _email.dispose();
    _city.dispose();
    _address.dispose();
    super.dispose();
  }

  final TextEditingController _city = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _email = TextEditingController();

  Future<void> _showDialog(BuildContext context) async {
    await showGeneralDialog(
      context: context,
      pageBuilder: (_, __, ___) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Ваш заказ',
                style: Style.montserrat18w400.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () => context.router.pop(),
                icon: const Icon(
                  CupertinoIcons.clear,
                  size: 20,
                ),
              ),
            ],
          ),
          content: SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(color: Colors.grey.shade300, height: 1),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: NetworkImage(
                              widget.acoustics.imageUrl,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                widget.acoustics.title,
                                style: Style.montserrat18w400.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                widget.acoustics.hashCode.toString(),
                                style: Style.montserrat14w400.copyWith(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Expanded(child: EmptyWidget()),
                      Text(
                        '${widget.acoustics.cost} руб.',
                        style: Style.montserrat16w400.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      const SizedBox(width: 40),
                    ],
                  ),
                ),
                Container(color: Colors.grey.shade300, height: 1),
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Сумма: ${widget.acoustics.cost} руб.',
                    style: Style.montserrat18w400.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
                const SizedBox(height: 20),
                GeneralInput(
                  hintText: 'Имя',
                  controller: _name,
                ),
                const SizedBox(height: 15),
                GeneralInput(
                  hintText: 'Телефон',
                  controller: _phone,
                ),
                const SizedBox(height: 15),
                GeneralInput(
                  hintText: 'Email',
                  controller: _email,
                ),
                const SizedBox(height: 15),
                GeneralInput(
                  hintText: 'Город',
                  controller: _city,
                ),
                const SizedBox(height: 15),
                GeneralInput(
                  hintText: 'Адресс доставки',
                  controller: _address,
                ),
                const SizedBox(height: 25),
                const Text(
                  'Оплата',
                  style: Style.montserrat14w400,
                ),
                const SizedBox(height: 5),
                BlocConsumer<OrderCubit, OrderState>(
                    bloc: _cubit,
                    listener: (context, state) {
                      if (state.orderCreated) {
                        _name.clear();
                        _phone.clear();
                        _email.clear();
                        _city.clear();
                        _address.clear();
                        context.router.pop();
                        context.router.pop();
                      }
                    },
                    builder: (context, state) {
                      return Column(
                        children: [
                          CardField(
                            onCardChanged: (card) {},
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.zero,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                          ),
                          const SizedBox(height: 25),
                          InkWell(
                            onTap: () => _getPayment(),
                            child: Container(
                              height: 50,
                              color: Colors.black,
                              child: Center(
                                child: state.isLoading
                                    ? const CircularProgressIndicator(
                                        color: Colors.white,
                                      )
                                    : Text(
                                        'Заказать',
                                        style: Style.montserrat16w400.copyWith(color: Colors.white),
                                      ),
                              ),
                            ),
                          )
                        ],
                      );
                    }),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _getPayment() async {
    _cubit.isLoading();
    _cubit.onCreateOrder(
      order: Order(
        customerName: _name.text,
        customerPhone: _phone.text,
        customerEmail: _email.text,
        customerCity: _city.text,
        customerAddress: _address.text,
        orderTitle: widget.acoustics.title,
        vendorCode: widget.acoustics.hashCode.toString(),
      ),
    );
    await Stripe.instance.createPaymentMethod(const PaymentMethodParams.card());
  }
}
