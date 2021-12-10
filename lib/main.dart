import 'package:ecommers/core/blocs/consultation_bloc/consultation_bloc.dart';
import 'package:ecommers/core/blocs/consultation_bloc/consultation_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/get_it.dart';
import 'core/router.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SetupGetIt.setup();
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
          create: (context) =>
              ConsultationBloc(ConsultationState.initState()),
        ),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        title: 'Vinyl Collection',
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
