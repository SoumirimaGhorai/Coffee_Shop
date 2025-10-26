import 'package:coffee_shop/core/constant/constant.dart';
import 'package:coffee_shop/view/details_page.dart';
import 'package:coffee_shop/view_models/get_provider_app_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/themes/app_colors.dart';
import 'login_page.dart';

class CoffeePage extends StatelessWidget {
  final bool isLoggedIn;
  const CoffeePage({super.key,  required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),

        //------------------------------spacing all side------------------------------------------------------------//

        child: SizedBox(
            child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('lib/images/coffee.png',
                      width: double.infinity, height: 420),

                  //-----------------------------------image------------------------------------------------------------//

                  Positioned(
                      bottom: 0.0,
                      left: 15,
                      right: 12,
                      child: Column(
                        children: [
                          Text(
                            overflow: TextOverflow.visible,
                            getStartedText1,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w800),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            getStartedText2,
                            style:
                                TextStyle(color: Colors.white54, fontSize: 13),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ))

                  //---------------------------------two text-----------------------------------------------//

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.buttonColor),
                child: InkWell(
                  onTap: () {
                    if (isLoggedIn) {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) =>
                          DetailsPage()));
                    } else {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) =>
                          LoginPage()));
                    }
                  },
                child: Center(child: Text("Get Started",style: TextStyle(color: Colors.white),)),
              ),
            ),


            //----------------------------------get started------------------------------------------------//
            )
          ],
        )),
      ),
    );
  }
}
