import 'package:ecommers/core/blocs/acoustics_bloc/acoustics_cubit.dart';
import 'package:ecommers/core/blocs/consultation_bloc/consultation_bloc.dart';
import 'package:ecommers/core/blocs/dashboard/dashboard_cubit.dart';
import 'package:ecommers/core/blocs/vinyl/vinyl_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import '.env.dart';
import 'core/blocs/news_bloc/news_cubit.dart';
import 'core/blocs/order/order_cubit.dart';
import 'core/di/get_it.dart';
import 'core/router/router.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SetupGetIt.setup();
  Stripe.publishableKey = stripePublishableKey;
  runApp(Ecommers());
}

class Ecommers extends StatelessWidget {
  final _appRouter = AppRouter();

  Ecommers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ConsultationBloc>(
          create: (context) => ConsultationBloc(),
        ),
        BlocProvider<NewsCubit>(
          create: (context) => NewsCubit(),
        ),
        BlocProvider<VinylCubit>(
          create: (context) => VinylCubit(),
        ),
        BlocProvider<AcousticsCubit>(
          create: (context) => AcousticsCubit(),
        ),
        BlocProvider<OrderCubit>(
          create: (context) => OrderCubit(),
        ),
        BlocProvider<DashboardCubit>(
          create: (context) => DashboardCubit(),
        ),
      ],
      child: MaterialApp.router(
        scrollBehavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        title: 'Vinyl Collection',
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
