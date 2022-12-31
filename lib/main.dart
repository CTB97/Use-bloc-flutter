import 'package:bloc_app/Pages/Home.dart';
import 'package:bloc_app/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>CounterBloc())
      ], 
      child: MaterialApp(

        routes: {
          '/':(context)=> Home()
        },

      ));
  }
}


