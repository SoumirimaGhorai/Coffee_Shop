import 'package:coffee_shop/core/widgets/app_widget2.dart';
import 'package:coffee_shop/view_models/get_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ColdCoffeePage extends StatelessWidget {
  const ColdCoffeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 7,
          mainAxisSpacing: 7,
          // shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          children: [
            InkWell(
                onTap: () {
                  Provider.of<GetProvider>(context, listen: false)
                      .affNav(context);
                },
                child: AppWidget2.allColdCoffee(
                    'Affgato', 'lib/images/affogato.png')),

            //---------------------first coffee-----------------------------------------//

            InkWell(
                onTap: () {
                  Provider.of<GetProvider>(context, listen: false)
                      .coldBrewNav(context);
                },
                child: AppWidget2.allColdCoffee(
                    'Coldbrew', 'lib/images/coldbrew.png')),

            //--------------------second coffee-----------------------------------------//

            InkWell(
                onTap: () {
                  Provider.of<GetProvider>(context, listen: false)
                      .classicColdNav(context);
                },
                child: AppWidget2.allColdCoffee(
                    'Classic cold coffee', 'lib/images/classiccoldcoffee.png')),

            //---------------------third coffee-----------------------------------------//

            InkWell(
                onTap: () {
                  Provider.of<GetProvider>(context, listen: false)
                      .corNav(context);
                },
                child: AppWidget2.allColdCoffee(
                    'Cortado', 'lib/images/cortado.png')),

            //---------------------forth coffee-----------------------------------------//

            InkWell(
                onTap: () {
                  Provider.of<GetProvider>(context, listen: false)
                      .mazNav(context);
                },
                child: AppWidget2.allColdCoffee(
                    'Mazagran', 'lib/images/mazagran.png')),

            //---------------------fifth coffee-----------------------------------------//

            InkWell(
                onTap: () {
                  Provider.of<GetProvider>(context, listen: false)
                      .vanniNav(context);
                },
                child: AppWidget2.allColdCoffee(
                    'Vanilla iced coffee', 'lib/images/vanillaicedcoffee.png')),

            //---------------------sixth coffee-----------------------------------------//

            InkWell(
                onTap: () {
                  Provider.of<GetProvider>(context, listen: false)
                      .vietCocoNav(context);
                },
                child: AppWidget2.allColdCoffee('Vietnamese coconut coffee',
                    'lib/images/vietnamesecoconutcoffee.png')),

            //---------------------seventh coffee-----------------------------------------//

            InkWell(
                onTap: () {
                  Provider.of<GetProvider>(context, listen: false)
                      .vietColdNav(context);
                },
                child: AppWidget2.allColdCoffee('Vietnamese cold coffee',
                    'lib/images/vietnamesecoldcoffee.png')),

            //---------------------eighth coffee-----------------------------------------//
          ]),
    ));
  }
}
