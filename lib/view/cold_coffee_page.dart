import 'package:coffee_shop/core/widgets/app_widgets.dart';
import 'package:coffee_shop/view_models/get_provider_app_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ColdCoffeePage extends StatelessWidget {
  const ColdCoffeePage({super.key});

  @override
  Widget build(BuildContext context) {
    final getProvider=Provider.of<GetProvider>(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            crossAxisSpacing: 7,
            mainAxisSpacing: 7),
          shrinkWrap: true,
           physics: NeverScrollableScrollPhysics(),
        itemCount: getProvider.coldCoffeeList.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              onTap: () {
                getProvider.goToColdCoffeeDetails(context,
                getProvider.coldCoffeeList1[index].imagePath??'',
                getProvider.coldCoffeeList1[index].coffeeName??'');
              },
              child: AppWidgets.allColdCoffee(
                  context,getProvider.coldCoffeeList1[index])
              );
        },






          ),
    ));
  }
}
