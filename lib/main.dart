import 'package:coffee_shop/view_models/get_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view/get_started.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context)=>GetProvider(),

      child: const MyApp())
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(


      ),
      home: CoffeePage());
  }
}


