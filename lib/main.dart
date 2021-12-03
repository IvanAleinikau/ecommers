import 'package:ecommers/app/pages/main_page.dart';
import 'package:ecommers/core/blocs/consultation_bloc/consultation_bloc.dart';
import 'package:ecommers/core/blocs/consultation_bloc/consultation_state.dart';
import 'package:ecommers/core/service/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

void main() async {
  runApp(const Ecommers());
}

class Ecommers extends StatelessWidget {
  const Ecommers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ConsultationBloc>(
          create: (context) => ConsultationBloc(ConsultationState.initState()),
        ),
      ],
      child: GetMaterialApp(
        title: 'Vinyl Collection',
        initialRoute: '/',
        getPages: NavigationService().getPages(),
        home: FutureBuilder(
          future: Firebase.initializeApp(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {}
            if (snapshot.connectionState == ConnectionState.done) {
              return const MainPage();
            }
            return const CircularProgressIndicator();
          },
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
