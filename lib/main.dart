import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_bloc/feature/home/bloc/home_bloc.dart';
import 'package:test_app_bloc/feature/home/ui/home.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => HomeBloc(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Homepage(),
    );
  }
}
