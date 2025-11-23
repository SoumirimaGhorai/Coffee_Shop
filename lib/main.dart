import 'package:coffee_shop/view/splash_page.dart';
import 'package:coffee_shop/view_models/get_provider_app_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view/get_started.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //final getProvider = GetProvider();
 // await getProvider.loadCart();
  //await getProvider.loadFavourites();// Load saved cart
  runApp(ChangeNotifierProvider(create: (context)=>GetProvider(),

      child: const MyApp())
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final getProvider = Provider.of<GetProvider>(context);
    return MaterialApp(debugShowCheckedModeBanner: false,
      //title: 'Flutter Demo',
      themeMode: getProvider.themeMode,
        //theme: ThemeData.light(), // Light theme
       // darkTheme: ThemeData.dark(), // Dark theme

      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        cardColor: Colors.grey[200],
        iconTheme: const IconThemeData(color: Colors.black87),
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
      ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: const Color(0xFF0E2233),
          cardColor: const Color(0xFF152D40),
          iconTheme: const IconThemeData(color: Colors.white70),
          textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
        ),

      home:SplashPage());
  }
}


