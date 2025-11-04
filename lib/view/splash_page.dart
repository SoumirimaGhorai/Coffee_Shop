
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../view_models/get_provider_app_controller.dart';
import '../core/widgets/Pageview_page.dart';
import 'get_started.dart';
import 'login_page.dart';
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  Future<void> checkLoginAndNavigate(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    final isLoggedIn = prefs.getBool('logged_in') ?? false;

    await Future.delayed(const Duration(seconds: 2)); // splash delay

    if (isLoggedIn) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const PageViewPage()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const CoffeePage(isLoggedIn: false)),
      );
    }
  }



  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) =>  Provider.of<GetProvider>(context, listen: false)
        .checkLoginAndNavigate(context),

    );
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.yellow,Colors.lightGreenAccent])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('lib/images/splash.png'),minRadius: 40,maxRadius: 70,),
            SizedBox(height: 20,),
            Text('Welcome to Coffee Shop',style:TextStyle(color: Colors.black,fontStyle: FontStyle.italic,fontSize: 17,fontWeight: FontWeight.w700),)
          ],
        ),
      )
      );
  }
}
