import 'package:coffee_shop/core/widgets/app_widgets.dart';
import 'package:coffee_shop/view_models/get_provider_app_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HotCoffeePage extends StatelessWidget {
  const HotCoffeePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final List<Map<String,dynamic>> hotCoffees=[
    //   {
    //     'name': 'Americano',
    //     'image': 'lib/images/americano.png',
    //     'nav': (BuildContext context) =>
    //         Provider.of<GetProvider>(context, listen: false)
    //             .americanoNav(context),
    //   },
    //   {
    //     'name': 'Caffee Macchiato',
    //     'image': 'lib/images/caffeemacchiato.png',
    //     'nav': (BuildContext context) =>
    //         Provider.of<GetProvider>(context, listen: false)
    //             .caffeNav(context),
    //   },
    //   {
    //     'name': 'Cappuccino',
    //     'image': 'lib/images/cappuccino.png',
    //     'nav': (BuildContext context) =>
    //         Provider.of<GetProvider>(context, listen: false)
    //             .cappuccinoNav(context),
    //   },
    //   {
    //     'name': 'Espresso',
    //     'image': 'lib/images/espresso.png',
    //     'nav': (BuildContext context) =>
    //         Provider.of<GetProvider>(context, listen: false)
    //             .espressoNav(context),
    //   },
    //   {
    //     'name': 'Flat white',
    //     'image': 'lib/images/flatwhite.png',
    //     'nav': (BuildContext context) =>
    //         Provider.of<GetProvider>(context, listen: false)
    //             .americanoNav(context),
    //   },
    //   {
    //     'name': 'Latte',
    //     'image': 'lib/images/latte.png',
    //     'nav': (BuildContext context) =>
    //         Provider.of<GetProvider>(context, listen: false)
    //             .latteNav(context),
    //   },
    //   {
    //     'name': 'Long black',
    //     'image': 'lib/images/longblack.png',
    //     'nav': (BuildContext context) =>
    //         Provider.of<GetProvider>(context, listen: false)
    //             .longBlackNav(context),
    //   },
    //   {
    //     'name': 'Mocha',
    //     'image': 'lib/images/mocha.png',
    //     'nav': (BuildContext context) =>
    //         Provider.of<GetProvider>(context, listen: false)
    //             .mochaNav(context),
    //   }
    // ];

    final getProvider = Provider.of<GetProvider>(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: GridView.builder(
          itemCount:getProvider.coffeeList.length,
          //hotCoffees.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(
          ),
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          mainAxisSpacing: 7,
          crossAxisSpacing: 7,
          ),
          itemBuilder: (BuildContext context, int index) {
            // final coffee = hotCoffees[index];
        return
            InkWell(
                onTap: () {
                // hotCoffees[index]['nav'](context);
                },
                child: AppWidgets.allHotCoffee(
                  context,
                  // coffee['name'] ,
                  // coffee['image'],
                    getProvider.coffeeList[index]
                ));
          }),

            //---------------------first coffee-----------------------------------------//


            )



    );
  }
}
