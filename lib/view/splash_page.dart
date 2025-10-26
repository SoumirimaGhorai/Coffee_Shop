
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../view_models/get_provider_app_controller.dart';
import 'get_started.dart';
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});


  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<GetProvider>(context, listen: false)
          .checkLoginAndNavigate(context);
    });
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
            Text('Welcome to Cofee Shop',style:TextStyle(color: Colors.black,fontStyle: FontStyle.italic,fontSize: 17,fontWeight: FontWeight.w700),)
          ],
        ),
      )
      );
  }
}
