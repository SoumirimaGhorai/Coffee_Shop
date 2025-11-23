import 'package:coffee_shop/core/widgets/app_widgets.dart';
import 'package:coffee_shop/view_models/get_provider_app_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HotCoffeePage extends StatelessWidget {
  const HotCoffeePage({super.key});

  @override
  Widget build(BuildContext context) {
    final getProvider = Provider.of<GetProvider>(context);
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: GridView.builder(
            itemCount:getProvider.hotCoffeeList.length,
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
                  getProvider.goToHotCoffeeDetails(
                      context,
                      getProvider.hotCoffeeList[index].imagePath??'',
                      getProvider.hotCoffeeList[index].coffeeName??'');
                  },
                  child: AppWidgets.allHotCoffee(
                    context,getProvider.hotCoffeeList[index])
              );
            }),

              //---------------------first coffee-----------------------------------------//


              )



      ),
    );
  }
}
