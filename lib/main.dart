import 'package:ecommers/app/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  runApp(Ecommers());
}

class Ecommers extends StatelessWidget {
  const Ecommers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Play Vinyl',
      home: FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context,snapshot){
          if(snapshot.hasError){

          }
          if(snapshot.connectionState==ConnectionState.done){
            return MainPage();
          }
          return const CircularProgressIndicator();
        },
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
