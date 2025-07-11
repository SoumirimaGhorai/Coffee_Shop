import 'package:coffee_shop/core/constant/constant.dart';
import 'package:coffee_shop/view_models/get_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/themes/app_colors.dart';

class CoffeePage extends StatelessWidget {
  const CoffeePage({super.key});

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
              padding: const EdgeInsets.all(25.0),
              child: Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.buttonColor), //A a = new A();
                child: InkWell(
                    onTap: () {
                      Provider.of<GetProvider>(context, listen: false)
                          .nav(context);
                    },
                    child: Center(
                        child: Text(
                      'Get started',
                      style: TextStyle(color: Colors.white),
                    ))),
              ),
            ),

            //----------------------------------get started------------------------------------------------//

          ],
        )),
      ),
    );
  }
}
