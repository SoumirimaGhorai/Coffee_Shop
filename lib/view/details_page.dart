
import 'package:coffee_shop/core/themes/app_colors.dart';
import 'package:coffee_shop/core/widgets/bottomNavigationBar_page.dart';
import 'package:coffee_shop/core/widgets/gridview_page.dart';
import 'package:coffee_shop/view/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_models/get_provider.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final getProvider = Provider.of<GetProvider>(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: BottomNavigationBarPage(
        selectedIndex: getProvider.selectedIndex,
        onItemTapped: getProvider.setPage,
      ),

      //---------------------bottom navigation-----------------------------------------//

      body: Stack(children: [
        // Background color layers
        Column(
          children: [
            Expanded(
              child: Container(color: Colors.black), // Top half
            ),

            //---------------------half color black-----------------------------------------//

            Expanded(
              child: Container(color: Colors.white), // Bottom half
            ),

            //---------------------another half white-----------------------------------------//

          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60.0, left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                spacing: 200,
                children: [
                  Text(
                    'Wanna Coffee',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.white),
                  ),

                  //---------------------text-----------------------------------------//

                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'lib/images/human.png',
                      width: 35,
                      height: 35,
                    ),
                  ),

                  //---------------------image-----------------------------------------//

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Here are some best taste coffee',
                    style: TextStyle(color: Colors.white70),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),

              //---------------------text-----------------------------------------//

              Padding(
                padding: const EdgeInsets.all(13.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.tune),
                    filled: true,
                    fillColor: Colors.grey[50],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none),
                    hintText: ('Search your favourite coffee'),
                  ),
                ),
              ),

              //----------------------------search-----------------------------------------//

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                    width: 500,
                    height: 220,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(
                              'lib/images/coffeeLike.png',
                            ),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.white24, BlendMode.lighten)))),
              ),

              //---------------------image-----------------------------------------//

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  spacing: 7,
                  children: [
                    ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: AppColors.buttonColor),
                        onPressed: () {},
                        child: Text(
                          'Popular',style: TextStyle(color: Colors.white),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          Provider.of<GetProvider>(context, listen: false)
                              .hCoffeeNav(context);
                        },
                        child: Text('Hot coffee')),
                    ElevatedButton(
                        onPressed: () {
                          Provider.of<GetProvider>(context, listen: false)
                              .cCoffeeNav(context);
                        },
                        child: Text('Cold coffee')),
                  ],
                ),
              ),

              //----------------------------all elevated button name-----------------------------------------//


              GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  shrinkWrap:true,
                  physics:BouncingScrollPhysics(),
                  children: [
                    GridPage(
                      path: 'lib/images/cappuccino.png',
                      name: 'Cappuccino',
                      text: '\u20B9175',
                    ),

                    //---------------------first coffee-----------------------------------------//

                    GridPage(
                      path: 'lib/images/espresso.png',
                      name: 'Espresso',
                      text: '\u20B9150',
                    ),

                    //---------------------first coffee-----------------------------------------//

                    GridPage(
                      path: 'lib/images/americano.png',
                      name: 'Americano',
                      text: '\u20B9100',
                    ),

                    //---------------------third coffee-----------------------------------------//

                    GridPage(
                      path: 'lib/images/flatwhite.png',
                      name: 'Flat white',
                      text: '\u20B9110',
                    ),

                    // ]
                    // )
                    // ),
                  ])
            ]),
          ),

          //-----------------------------forth coffee--------------------------------------------------//
        )
      ]),
    );
  }
}
