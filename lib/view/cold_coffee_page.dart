import 'package:coffee_shop/core/widgets/app_widgets.dart';
import 'package:coffee_shop/view_models/get_provider_app_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ColdCoffeePage extends StatelessWidget {
  const ColdCoffeePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String,dynamic>> coldCoffees=[
      {
        'name': 'Affgato',
        'image': 'lib/images/affogato.png',
        'nav': (BuildContext context) =>
            Provider.of<GetProvider>(context, listen: false)
                .affNav(context),
      },

      {
        'name': 'Coldbrew',
        'image': 'lib/images/coldbrew.png',
        'nav': (BuildContext context) =>
            Provider.of<GetProvider>(context, listen: false)
                .coldBrewNav(context),
      },
      {
        'name': 'Classic cold coffee',
        'image': 'lib/images/classiccoldcoffee.png',
        'nav': (BuildContext context) =>
            Provider.of<GetProvider>(context, listen: false)
                .classicColdNav(context),
      },
      {
        'name': 'Cortado',
        'image': 'lib/images/cortado.png',
        'nav': (BuildContext context) =>
            Provider.of<GetProvider>(context, listen: false)
                .corNav(context),
      },
      {
        'name': 'Mazagran',
        'image': 'lib/images/mazagran.png',
        'nav': (BuildContext context) =>
            Provider.of<GetProvider>(context, listen: false)
                .mazNav(context),
      },
      {
        'name': 'Vanilla iced coffee',
        'image': 'lib/images/vanillaicedcoffee.png',
        'nav': (BuildContext context) =>
            Provider.of<GetProvider>(context, listen: false)
                .vanniNav(context),
      },
      {
        'name': 'Vietnamese coconut coffee',
        'image': 'lib/images/vietnamesecoconutcoffee.png',
        'nav': (BuildContext context) =>
            Provider.of<GetProvider>(context, listen: false)
                .vietCocoNav(context),
      },
      {
        'name': 'Vietnamese cold coffee',
        'image': 'lib/images/vietnamesecoldcoffee.png',
        'nav': (BuildContext context) =>
            Provider.of<GetProvider>(context, listen: false)
                .vietColdNav(context),
      }
    ];
    return Scaffold(
        body: SingleChildScrollView(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            crossAxisSpacing: 7,
            mainAxisSpacing: 7),
          shrinkWrap: true,
           physics: NeverScrollableScrollPhysics(),
        itemCount: coldCoffees.length,
        itemBuilder: (BuildContext context, int index) {
          final coffee = coldCoffees[index];
          return InkWell(
              onTap: () {
                coldCoffees[index]['nav'](context);
              },
              child: AppWidgets.allColdCoffee(
                coffee['name'],
                coffee['image'],
              ));
        },






          ),
    ));
  }
}
