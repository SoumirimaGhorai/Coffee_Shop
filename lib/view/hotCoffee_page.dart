import 'package:coffee_shop/core/widgets/app_widgets.dart';
import 'package:coffee_shop/view_models/get_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class HotCoffeePage extends StatelessWidget {
  const HotCoffeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 7,
          mainAxisSpacing: 7,
           shrinkWrap: true,
           physics: NeverScrollableScrollPhysics(),
          children: [
            InkWell(
                onTap: () {
                  Provider.of<GetProvider>(context, listen: false)
                      .americanoNav(context);
                },
                child: AppWidgets.allHotCoffee(
                    'Americano', 'lib/images/americano.png')),

            //---------------------first coffee-----------------------------------------//

            InkWell(
                onTap: () {
                  Provider.of<GetProvider>(context, listen: false)
                      .caffeNav(context);
                },
                child: AppWidgets.allHotCoffee(
                    'Caffee Macchiato', 'lib/images/caffeemacchiato.png')),

            //---------------------second coffee-----------------------------------------//

            InkWell(
                onTap: () {
                  Provider.of<GetProvider>(context, listen: false)
                      .cappuccinoNav(context);
                },
                child: AppWidgets.allHotCoffee(
                    'Cappuccino', 'lib/images/cappuccino.png')),

            //---------------------third coffee-----------------------------------------//

            InkWell(
                onTap: () {
                  Provider.of<GetProvider>(context, listen: false)
                      .espressoNav(context);
                },
                child: AppWidgets.allHotCoffee(
                    'Espresso', 'lib/images/espresso.png')),

            //---------------------forth coffee-----------------------------------------//

            InkWell(
                onTap: () {
                  Provider.of<GetProvider>(context, listen: false)
                      .americanoNav(context);
                },
                child: AppWidgets.allHotCoffee(
                    'Flat white', 'lib/images/flatwhite.png')),

            //---------------------fifth coffee-----------------------------------------//

            InkWell(
                onTap: () {
                  Provider.of<GetProvider>(context, listen: false)
                      .latteNav(context);
                },
                child:
                    AppWidgets.allHotCoffee('Latte', 'lib/images/latte.png')),

            //---------------------sixth coffee-----------------------------------------//

            InkWell(
                onTap: () {
                  Provider.of<GetProvider>(context, listen: false)
                      .longBlackNav(context);
                },
                child: AppWidgets.allHotCoffee(
                    'Long black', 'lib/images/longblack.png')),

            //---------------------seventh coffee-----------------------------------------//

            InkWell(
                onTap: () {
                  Provider.of<GetProvider>(context, listen: false)
                      .mochaNav(context);
                },
                child:
                    AppWidgets.allHotCoffee('Mocha', 'lib/images/mocha.png')),

            //---------------------eighth coffee-----------------------------------------//

          ]),
    ));
  }
}
