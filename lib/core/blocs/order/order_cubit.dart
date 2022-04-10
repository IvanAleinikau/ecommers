import 'package:ecommers/app/common/enums/label.dart';
import 'package:ecommers/core/blocs/order/order_state.dart';
import 'package:ecommers/core/model/order_model.dart';
import 'package:ecommers/data/repository/order_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit() : super(const OrderState()) {
    onInit();
  }

  final _repository = GetIt.instance<OrderRepository>();

  void onInit() {
    _fetchOrder();
  }

  void isLoading() {
    emit(state.copyWith(isLoading: true));
  }

  void onCreateOrder({required Order order}) async {
    emit(state.copyWith(isLoading: true, orderCreated: false));
    final result = await _repository.create(order: order);
    if (result == Label.successfully) {
      _fetchOrder();
      emit(state.copyWith(isLoading: false, orderCreated: true));
    }
  }

  void onDeleteOrder({required Order order}) async {
    emit(state.copyWith(isLoading: true, orderCreated: false));
    await _repository.delete(order.id ?? '');
    _fetchOrder();
    emit(state.copyWith(isLoading: false, orderCreated: true));
  }

  void _fetchOrder() async {
    emit(state.copyWith(isLoading: true));
    final result = await _repository.read();
    if (result.isNotEmpty) {
      emit(state.copyWith(isLoading: false, orderList: result));
    } else {
      emit(state.copyWith(isLoading: false));
    }
  }
}
