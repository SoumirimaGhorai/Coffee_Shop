import 'package:coffee_shop/core/themes/app_colors.dart';
import 'package:coffee_shop/view_models/get_provider_app_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HotCoffeeInformationPage extends StatelessWidget {
  const HotCoffeeInformationPage(
      {super.key, required this.path, required this.name});
  final String path;
  final String name;

  @override
  Widget build(BuildContext context) {
    final getProvider = Provider.of<GetProvider>(context);
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(top: 30.0, left: 15, right: 15),

                //---------------------------spacing all side-------------------------------------------------------------//

                child: Column(children: [
                  Hero(
                    tag: 'dash',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(35),
                          child: Image.asset(path),
                        ),

                        //-------------------------------hero image-----------------------------------------------------------------

                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              textAlign: TextAlign.start,
                              name,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w800),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.star, color: Colors.yellow,),
                                  Text('4.5 (2,330)'),
                                ],
                              ),
                            )
                            // Icon(
                            //   Icons.star,
                            //   color: Colors.yellow,
                            // ),
                            // Text('4.5 (2,330)'),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //----------------------------------icon and text-----------------------------------------------------------------------

                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Description',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 15),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                'The drink consists of a single shot of  mixed with added water. Typically about 120 millilitres – 180 millilitres  of hot water mixed with the espresso.The hot water can be drawn directly from the machine used to brew the espresso, as water or steam, or from a separate water heater or kettle.'),
                          ),

                          //------------------------------------------description-------------------------------------------------------------------------

                          Text(
                            'Size',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 15),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Consumer<GetProvider>(
                              builder: (context, getProvider, child) {
                                return Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () => getProvider.selectSize('S'),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(13),
                                          color: getProvider.selectedSize == 'S'
                                              ? Colors.brown
                                              : Colors.brown[50],
                                        ),
                                        width: 90,
                                        height: 40,
                                        child: Center(
                                          child: Text(
                                            'S',
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: getProvider.selectedSize ==
                                                      'S'
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    GestureDetector(
                                      onTap: () => getProvider.selectSize('M'),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(13),
                                          color: getProvider.selectedSize == 'M'
                                              ? Colors.brown
                                              : Colors.brown[50],
                                        ),
                                        width: 90,
                                        height: 40,
                                        child: Center(
                                          child: Text(
                                            'M',
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: getProvider.selectedSize ==
                                                      'M'
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    GestureDetector(
                                      onTap: () => getProvider.selectSize('L'),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(13),
                                          color: getProvider.selectedSize == 'L'
                                              ? Colors.brown
                                              : Colors.brown[50],
                                        ),
                                        width: 90,
                                        height: 40,
                                        child: Center(
                                          child: Text(
                                            'L',
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: getProvider.selectedSize ==
                                                      'L'
                                                  ? Colors.white
                                                  : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),

                          //------------------------------------------size-------------------------------------------------------------------------//

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Additional',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15),
                            ),
                          ),

                          //---------------------------------------additional----------------------------------------------------------------//
                    Consumer<GetProvider>(
                      builder: (context, provider, child) {
                       return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                "Choose one:",
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            RadioListTile<String>(
                              title: const Text("Oat Milk (₹200)"),
                              value: 'oat',
                              groupValue: getProvider.selectedMilk,
                              onChanged:getProvider.selectMilk,
                              activeColor: Colors.teal,
                              tileColor: Colors.transparent,
                            ),
                            RadioListTile<String>(
                              title: const Text("Fat Milk (₹275)"),
                              value: 'fat',
                              groupValue: getProvider.selectedMilk,
                              onChanged: getProvider.selectMilk,
                              activeColor: Colors.teal,
                              tileColor: Colors.transparent,
                            ),
                            RadioListTile<String>(
                              title: const Text("Heavy Cream (₹300)"),
                              value: 'cream',
                              groupValue: getProvider.selectedMilk,
                              onChanged: getProvider.selectMilk,
                              activeColor: Colors.teal,
                              tileColor: Colors.transparent,
                            ),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Total:",
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "₹${getProvider.totalPayment}",
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.teal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),

  // Milk box widget
                          // Consumer<GetProvider>(
                          //   builder: (context, provider, child) {
                          //     return Column(
                          //       children: [
                          //         Row(
                          //           children: [
                          //             Transform.scale(
                          //               scale: 0.7,
                          //               child: Switch(
                          //                 value: provider.isOatMilkSelected,
                          //                 onChanged: provider.toggleOatMilk,
                          //                 activeColor: AppColors.buttonColor,
                          //               ),
                          //             ),
                          //             Text('Oat Milk'),
                          //             SizedBox(
                          //               width: 180,
                          //             ),
                          //             Text('\u20B9200')
                          //           ],
                          //         ),
                          //         Row(
                          //           children: [
                          //             Transform.scale(
                          //               scale: 0.7,
                          //               child: Switch(
                          //                 value: getProvider.isFatMilkSelected,
                          //                 onChanged: provider.toggleFatMilk,
                          //                 activeColor: AppColors.buttonColor,
                          //               ),
                          //             ),
                          //             Text('Fat Milk'),
                          //             SizedBox(
                          //               width: 180,
                          //             ),
                          //             Text('\u20B9275')
                          //           ],
                          //         ),
                          //         Row(
                          //           children: [
                          //             Transform.scale(
                          //               scale: 0.7,
                          //               child: Switch(
                          //                 value: provider.isCreamSelected,
                          //                 onChanged: provider.toggleCream,
                          //                 activeColor: AppColors.buttonColor,
                          //               ),
                          //             ),
                          //             Text('Heavy Cream'),
                          //             SizedBox(
                          //               width: 145,
                          //             ),
                          //             Text('\u20B9300')
                          //           ],
                          //         ),
                          //       ],
                          //     );
                          //   },
                          // ),
                  //---------------------------------------split and buy now -------------------------------------------------------------------------------
                  Row(children: [
                    Text(
                      'Split',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 135,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          // Decrement Button
                          Expanded(
                            child: InkWell(
                              onTap: getProvider.selectedMilk != null ? getProvider.decrement : null,
                              //getProvider.decrement,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.buttonColor,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '-',
                                    style: TextStyle(
                                      fontSize: 28,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // Count
                          Expanded(
                            child: Center(
                              child: Text(
                                '${getProvider.count}',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ),

                          // Increment Button
                          Expanded(
                            child: InkWell(
                              onTap:  getProvider.selectedMilk != null ? getProvider.increment
                                : null,
                              //getProvider.increment,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.buttonColor,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12),
                                    bottomRight: Radius.circular(12),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                      fontSize: 28,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.buttonColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: Text(
                          'Buy Now',
                          style: TextStyle(color: Colors.white),
                        )),

                    //------------------------------------------buy now-------------------------------------------------------------------------
                  ])
                ]))]
                )
        )
    )
    );
  }
}
