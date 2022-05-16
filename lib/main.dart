import 'package:counter_cubit/logic/counter/counter_cubit.dart';
import 'package:counter_cubit/screens/counter_page.dart';
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
    return BlocProvider(

      // CounterCubit function is responsible for the UI Change
      // The Counter page that we are creating is depend on the CounterCubit 
      create: (context) => CounterCubit(),

      //now all the widget under the material app has the access to the instance via BlocProvider.of(context)
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.purple),
        home: const CounterPage(),
      ),
    );
  }
}
