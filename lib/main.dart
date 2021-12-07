import 'package:ecommers/core/blocs/consultation_bloc/consultation_bloc.dart';
import 'package:ecommers/core/blocs/consultation_bloc/consultation_state.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/router.gr.dart';

void main() async {
  runApp(Ecommers());
}

class Ecommers extends StatelessWidget {
  final _appRouter = AppRouter();

  Ecommers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {}
        if (snapshot.connectionState == ConnectionState.done) {
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
        return const CircularProgressIndicator();
      },
    );
  }
}
