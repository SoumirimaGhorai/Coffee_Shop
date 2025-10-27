import 'package:coffee_shop/data/model/coffee_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../view_models/get_provider_app_controller.dart';

class AppWidgets {
  static Widget allHotCoffee(BuildContext context,CoffeeDetails coffeeDetails,) {
    return Consumer<GetProvider>(
      builder: ( context,  provider,  child) {
        bool isFav = provider.isFav(coffeeDetails.coffeeName??'No name');
        bool inCart = provider.isAdded(coffeeDetails.imagePath??'lib/images/latte.png');
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
              child: Column(mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 10.0,left: 30,right: 10),
                     child: Stack(alignment: Alignment.topRight,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(coffeeDetails.imagePath??'lib/images/latte.png',
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),

                            //---------------------image in container-----------------------------------------//
                            Padding(
                              padding:  EdgeInsets.only(
                                  right: 8, left: 10.0, top: 10.0),
                              child:IconButton(
                                       icon: Icon(isFav ? Icons.favorite : Icons.favorite_border,color: isFav ? Colors.red : Colors.grey,),
                                        onPressed: () {
                                         if (isFav) {provider.removeFromFavourite(coffeeDetails.coffeeName??'No Name');
                                         } else {
                                           provider.addToFavourite(coffeeDetails.coffeeName??'No Name', coffeeDetails.imagePath??'lib/images/latte.png');
                                          // switch to FAV tab
                                         }
                                         },
                                // Icons.favorite_border,
                                // color: Colors.white,
                                // size: 15,
                              ),


                            //---------------------favourite icon-----------------------------------------//

                            ) ]),
                   ),


                  //---------------------icon-----------------------------------------//

                  Padding(
                    padding: EdgeInsets.only(bottom:5, left: 10, right: 10),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                              coffeeDetails.coffeeName??'No Name',
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
                    padding: const EdgeInsets.only(left: 20.0,top: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(5, 40),
                          backgroundColor: inCart ? Colors.grey : Colors.brown,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        if (!inCart) {
                          provider.addToCart(coffeeDetails.coffeeName??'No Name', coffeeDetails.imagePath??'lib/images/latte.png');
                        }
                        },
                      child: Text(
                        inCart ? 'Added ' : 'Add to Cart',
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
  static Widget allColdCoffee(String title, String path) {
    return Consumer<GetProvider>(
        builder: (context, provider, child) {
          bool isFav = provider.isFav(title);
          bool inCart = provider.isAdded(title);
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
                              child: Image.asset(path,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),

                            //---------------------image in container-----------------------------------------//

                            Padding(
                              padding:
                              EdgeInsets.only(
                                  right: 8.0, left: 12.0, top: 15.0),
                              child: IconButton(
                                icon:  Icon(isFav ? Icons.favorite : Icons.favorite_border,color: isFav ? Colors.red : Colors.grey,),
                                onPressed: () {
                                  if (isFav) {provider.removeFromFavourite(title);
                                  } else {
                                    provider.addToFavourite(title, path);
                                    // switch to FAV tab
                                  }
                                },
                              ),
                              //Icons.favorite_border,
                              //color: Colors.white,
                              //size: 15,
                              //),
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
                              title,
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
                      padding: const EdgeInsets.only(top: 10.0,left: 20),
                      child:
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:inCart? Colors.grey:Colors.brown,
                          minimumSize: Size(5, 40),
                          foregroundColor: Colors.white,),
                        onPressed: () {
                          if (!inCart) {
                            provider.addToCart(title, path);
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
