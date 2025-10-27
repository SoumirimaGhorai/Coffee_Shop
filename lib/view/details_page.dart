import 'package:coffee_shop/core/themes/app_colors.dart';
import 'package:coffee_shop/core/widgets/gridview_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/widgets/bottom_navigation_bar_page.dart';
import '../view_models/get_provider_app_controller.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});


  @override
  Widget build(BuildContext context) {
    final getProvider = Provider.of<GetProvider>(context);
    final selectedTab = getProvider.selectedTab;
    // final coffeeList = getProvider.filteredCoffees;

    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: BottomNavigationBarPage(
        selectedIndex:getProvider.selectedIndex,
        onItemTapped:(index,context) {
          getProvider.setPage(index);
        }
      ),
      
        //---------------------bottom navigation-----------------------------------------//
      body:
          Column(children: [
        PageView(
          controller: getProvider.pageController,
          onPageChanged: getProvider.onPageChanged, // Defined in GetProvider
          children:   getProvider.page,
        ),
         Stack(children: [
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
                          // onChanged: getProvider.updateQuery,
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
                          children: [
                            Flexible(
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: selectedTab == 0 ? AppColors.buttonColor : Colors.grey[300],
                        ),
                                  onPressed: () {
                                    getProvider.setSelectedTab(0);
                                   getProvider.hCoffeeNav(context);
                                  },
                                  child: Text(
                                    'Popular',
                                    style: TextStyle(color: Colors.white,
                                      fontSize: MediaQuery.of(context).size.width *
                                        0.03,),
                                  )),
                            ),
                            SizedBox(width: 7,),
                            Flexible(
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: selectedTab == 1 ? AppColors.buttonColor : Colors.grey[300],
                                  ),
                                  onPressed: () {
                                    getProvider.setSelectedTab(1);
                                   getProvider.hCoffeeNav(context);
                                  },
                                  child: Text(
                                    'Hot coffee',
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width *
                                          0.03, // Example: 5% of screen width
                                    ),
                                  )),
                            ),
                            SizedBox(width: 7,),
                            Flexible(
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: selectedTab == 2 ? AppColors.buttonColor : Colors.grey[300],
                                  ),
                                  onPressed: () {
                                    getProvider.setSelectedTab(2);
                                    getProvider.cCoffeeNav(context);
                                  },
                                  child: Text('Cold coffee',   style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width *
                                        0.03, // Example: 5% of screen width
                                  ))),
                            ),
                          ],
                        ),
                      ),

                      //----------------------------all elevated button name-----------------------------------------//

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                          // itemCount: coffeeList.length,
                          itemBuilder: (context, index) {
                            // final coffee = coffeeList[index];
                            return GestureDetector(
                              onTap: () {
                                // getProvider.openCoffeeDetails(context, coffee);
                              },
                              // child: GridPage(
                                // path: coffee['image']!,
                                // name: coffee['name']!,
                                // text: '₹${coffee['price']}',
                            //   ),
                            // );
                          // },
                      //   ),
                      // ),
                //==================== COFFEE GRID ====================//

                  //-----------------------------forth coffee--------------------------------------------------//
              // ]
              );}
                )
              )
              ]
                   )
              ))]),
        ])

    );




  }


}