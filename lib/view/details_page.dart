import 'package:coffee_shop/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../core/widgets/app_widgets.dart';
import '../data/model/cold_coffee_details.dart';
import '../data/model/hot_coffee_details.dart';
import '../view_models/get_provider_app_controller.dart';


class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}
int selectedCategoryIndex = 0;
class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final getProvider = Provider.of<GetProvider>(context);
    final selectedTab = getProvider.selectedTab;


    List<dynamic> displayList=[];

    if (selectedTab == 0) {
      final hotPopular = getProvider.hotCoffeeList.take(2).toList();  // first 2 hot coffees
      final coldPopular = getProvider.coldCoffeeList.take(2).toList(); // first 2 cold coffees

      displayList = [
        if (hotPopular.isNotEmpty) hotPopular[0],
        if (coldPopular.isNotEmpty) coldPopular[0],
        if (hotPopular.length > 1) hotPopular[1],
        if (coldPopular.length > 1) coldPopular[1],
      ];
    } else if (selectedTab == 1) {
      displayList = getProvider.hotCoffeeList;
    } else {
      displayList = getProvider.coldCoffeeList;
    }

    return SafeArea(
      child: Scaffold(
        body:
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
              padding: const EdgeInsets.only(top: 30.0, left: 10, right: 10),
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
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 1,            //  smaller height
                        horizontal: 10,         //  controls left-right padding
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      hintText: ('Search your favourite coffee'),
                    ),
                  ),
                ),
        
                //----------------------------search-----------------------------------------//
        
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 500,
                      height: 170,
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
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Flexible(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: selectedTab == 0 ? AppColors
                                  .buttonColor : Colors.grey[300],
                            ),
                            onPressed: () {
                              getProvider.setSelectedTab(0);
                            //  getProvider.hCoffeeNav(context);
                            },
                            child: Text(
                              'Popular',
                              style: TextStyle(color: Colors.white,
                                fontSize: MediaQuery
                                    .of(context)
                                    .size
                                    .width *
                                    0.03,),
                            )),
                      ),
                      SizedBox(width: 7,),
                      Flexible(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: selectedTab == 1 ? AppColors
                                  .buttonColor : Colors.grey[300],
                            ),
                            onPressed: () {
                              getProvider.setSelectedTab(1);
                              //getProvider.hCoffeeNav(context);
                            },
                            child: Text(
                              'Hot coffee',
                              style: TextStyle(
                                fontSize: MediaQuery
                                    .of(context)
                                    .size
                                    .width *
                                    0.03, // Example: 5% of screen width
                              ),
                            )),
                      ),
                      SizedBox(width: 7,),
                      Flexible(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: selectedTab == 2 ? AppColors
                                  .buttonColor : Colors.grey[300],
                            ),
                            onPressed: () {
                              getProvider.setSelectedTab(2);
                             // getProvider.cCoffeeNav(context);
                            },
                            child: Text('Cold coffee', style: TextStyle(
                              fontSize: MediaQuery
                                  .of(context)
                                  .size
                                  .width *
                                  0.03, // Example: 5% of screen width
                            ))),
                      ),
                    ],
                  ),
                ),
        
                //==================== three button ====================//
                Expanded(
                  child: GridView.builder(
                      padding: const EdgeInsets.all(10),
                      itemCount: displayList.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.75,
                      ),
                            itemBuilder: (context, index) {
                            final coffee = displayList[index];
                            final topPadding = index.isOdd ? 0.0 : 10.0; // alternate padding
                            if (coffee is HotCoffeeDetails) {
                              return AppWidgets.allHotCoffee(context, coffee);
                            } else if (coffee is ColdCoffeeDetails) {
                              return AppWidgets.allColdCoffee(context, coffee);
                            } else {
                              return const SizedBox.shrink();
                            }
                            },
                    ),
                )
                //==================== COFFEE GRID ====================//
              ])
            )
            ])
      
      
      
      
      
      
      
      
      
      
      
      ),
    );
  }

  }
