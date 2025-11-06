import 'package:coffee_shop/data/model/cold_coffee_details.dart';
import 'package:coffee_shop/data/model/hot_coffee_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../view_models/get_provider_app_controller.dart';

class AppWidgets {
  static Widget allHotCoffee(BuildContext context,HotCoffeeDetails hotCoffeeDetails,) {
    //this is function that return widget as you know.
    // Now you know break points means hold execution hold in debugging model.
    //fisrt i set break points ''
    return Consumer<GetProvider>(
      builder: ( context,  provider,  child) {
        bool isFav = provider.isFav(hotCoffeeDetails.coffeeName??'No name');
        bool inCart = provider.isAdded(hotCoffeeDetails.coffeeName??'');
        return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                  boxShadow: [BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(2, 4),
                  )]
              ),
          margin:  EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              child: Column(mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Padding(
                     padding:  EdgeInsets.only(top: 8.0,left: 8,right: 8),
                     child: Stack(alignment: Alignment.topRight,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(hotCoffeeDetails.imagePath??'lib/images/latte.png',
                                fit: BoxFit.cover,
                              ),
                            ),

                            //---------------------image in container-----------------------------------------//
                            IconButton(
                                     icon: Icon(isFav ? Icons.favorite : Icons.favorite_border,color: isFav ? Colors.red : Colors.grey,),
                              style: IconButton.styleFrom(
                                backgroundColor: Colors.white.withOpacity(0.8),
                                shadowColor: Colors.brown.withOpacity(0.3),
                                elevation: 3,
                                shape: CircleBorder(),
                              ),
                                      onPressed: () {
                                       if (isFav) {provider.removeFromFavourite(hotCoffeeDetails.coffeeName??'No Name');
                                       } else {
                                         provider.addToFavourite(hotCoffeeDetails.coffeeName??'No Name', hotCoffeeDetails.imagePath??'lib/images/latte.png');
                                        // switch to FAV tab
                                       }
                                       },
                            ) ]),
                   ),


                  //---------------------icon-----------------------------------------//

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                              hotCoffeeDetails.coffeeName??'No Name',
                              style: TextStyle(fontSize: 12),
                              overflow: TextOverflow.ellipsis,
                            )),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.star,
                          size: 16,
                          color: Colors.yellow,
                        ),
                        Text(' 4.8')

                        //---------------------icon and text-----------------------------------------//
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 4, bottom: 8),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(5, 50),
                          backgroundColor: inCart ? Colors.grey : Colors.brown,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        if (!inCart) {
                          provider.addToCart(hotCoffeeDetails.coffeeName??'No Name', hotCoffeeDetails.imagePath??'');
                        }
                        },
                      child: Text(
                        inCart ? 'Added ' : 'Add to Cart',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ),


                  //---------------------elevated button----------------------------------------//

                ],
              ),



        );
      }
    );
  }
  static Widget allColdCoffee(BuildContext context,ColdCoffeeDetails coldCoffeeDetails) {
    return Consumer<GetProvider>(
        builder: (context, provider, child) {
          bool isFav = provider.isFav(coldCoffeeDetails.coffeeName??'No name');
          bool inCart = provider.isAdded(coldCoffeeDetails.coffeeName??'');
          return Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(2, 4),
                  )
                  ]
              ),
              child: Column(mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                      child: Stack(alignment: Alignment.topRight,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(coldCoffeeDetails.imagePath??'lib/images/latte.png',
                                fit: BoxFit.cover,
                              ),
                            ),

                            //---------------------image in container-----------------------------------------//

                            IconButton(
                              icon:  Icon(isFav ? Icons.favorite : Icons.favorite_border,color: isFav ? Colors.red : Colors.grey,),
                              style: IconButton.styleFrom(
                                backgroundColor: Colors.white.withOpacity(0.8),
                                shadowColor: Colors.brown.withOpacity(0.3),
                                elevation: 3,
                                shape: CircleBorder(),
                              ),
                              onPressed: () {
                                if (isFav) {provider.removeFromFavourite(coldCoffeeDetails.coffeeName??'No Name');
                                } else {
                                  provider.addToFavourite(coldCoffeeDetails.coffeeName??'No Name', coldCoffeeDetails.imagePath??'lib/images/latte.png');
                                  // switch to FAV tab
                                }
                              },
                            ),

                            //---------------------favourite button-----------------------------------------//
                          ])),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 5, left: 10, right: 10),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                              coldCoffeeDetails.coffeeName??'No Name',
                              style: TextStyle(fontSize: 12),
                              overflow: TextOverflow.ellipsis,
                            )),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.star,
                          size: 14,
                          color: Colors.yellow,
                        ),
                        Text(' 4.8')
                      ],
                    ),
                  ),

                  //---------------------icon and text-----------------------------------------//
                  Padding(
                      padding: const EdgeInsets.only(top: 10.0,left: 20,bottom: 10),
                      child:
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:inCart? Colors.grey:Colors.brown,
                          minimumSize: Size(5, 40),
                          foregroundColor: Colors.white,),
                        onPressed: () {
                          if (!inCart) {
                            provider.addToCart(coldCoffeeDetails.coffeeName??'No Name', coldCoffeeDetails.imagePath??'');
                            // switch to Cart tab
                          }
                        },
                        child: Text(
                          inCart ? 'Added ' : 'Add to Cart',
                          style: const TextStyle(color: Colors.white),
                        ),
                        //---------------------elevated button-----------------------------------------//
                      )
                  )
                ],
              )
          );
        }
    );
  }
}
