import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//import '../../view_models/get_provider_app_controller.dart';
import '../../view_models/get_provider_app_controller.dart';
import '../themes/app_colors.dart';

class ColdCoffeeInformationPage extends StatelessWidget {
  const ColdCoffeeInformationPage(
      {super.key, required this.title, required this.path});
  final String title;
  final String path;

  @override
  Widget build(BuildContext context) {
    final getProvider = Provider.of<GetProvider>(context);
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(30.0),

                //-------------------------------spacing all side--------------------------------------------------------//

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

                        Row(
                          children: [
                            Text(
                              textAlign: TextAlign.start,
                              title,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text('4.5 (2,330)'),
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
                                'The drink consists of a single shot of espresso mixed with added water. Typically about 120 millilitres – 180 millilitres  of hot water mixed with the espresso.The hot water can be drawn directly from the machine used to brew the espresso, as water or steam, or from a separate water heater or kettle.'),
                          ),

                          //------------------------------------------description-------------------------------------------------------------------------

                          Text(
                            'Size',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 15),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              spacing: 15,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: Colors.brown[50]),
                                  width: 90,
                                  height: 40,
                                  child: Center(
                                      child: Text(
                                    'S',
                                  )),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: Colors.brown[50]),
                                  width: 90,
                                  height: 40,
                                  child: Center(
                                      child: Text(
                                    'M',
                                  )),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: Colors.brown[50]),
                                  width: 90,
                                  height: 40,
                                  child: Center(
                                      child: Text(
                                    'L',
                                  )),
                                ),
                              ],
                            ),
                          ),

                          //------------------------------------------size------------------------------------------------------------//

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Additional',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15),
                            ),
                          ),

                          //-----------------------additional---------------------------------------------------//

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


                          //------------------------------switch button ,text and rate-----------------------------------------------------//

                        ]),
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

                  //------------------------------------------buy now-------------------------------------------------------------------------//

                ]))));
  }
}
