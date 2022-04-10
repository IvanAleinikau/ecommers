import 'package:ecommers/app/pages/admin_panel/widgets/order_widget.dart';
import 'package:ecommers/core/blocs/order/order_cubit.dart';
import 'package:ecommers/core/blocs/order/order_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminPanelStatistics extends StatefulWidget {
  const AdminPanelStatistics({Key? key}) : super(key: key);

  @override
  _AdminPanelStatisticsState createState() => _AdminPanelStatisticsState();
}

class _AdminPanelStatisticsState extends State<AdminPanelStatistics> {
  late OrderCubit _cubit;

  @override
  void initState() {
    _cubit = OrderCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 56.2,
      padding: const EdgeInsets.all(20),
      child: BlocConsumer<OrderCubit, OrderState>(
        bloc: _cubit,
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, state) {
          if (state.isLoading) {
            return Container(
              height: MediaQuery.of(context).size.height - 105,
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.lightBlue.shade700,
                ),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: state.orderList.length,
              itemBuilder: (context, index) {
                return OrderWidget(order: state.orderList[index]);
              },
            );
          }
        },
      ),
    );
  }
}
