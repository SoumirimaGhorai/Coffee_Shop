import 'package:flutter/material.dart';

class AppWidget2 {
  static Widget allColdCoffee(String title, String path) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),

      //---------------------spacing all side-----------------------------------------//

      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[400],
        ),
        child: Column(
          children: [
            Stack(alignment: Alignment.topRight, children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Image.asset(
                  path,
                  width: 125,
                  height: 99,
                ),
              ),

              //---------------------image in container-----------------------------------------//

              Padding(
                padding:
                    const EdgeInsets.only(right: 8.0, left: 12.0, top: 15.0),
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 12,
                ),
              ),
            ]),

            //---------------------favourite button-----------------------------------------//

            Padding(
              padding: const EdgeInsets.only(bottom: 5, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      child: Text(
                    title,
                    style: TextStyle(fontSize: 12),
                  )),
                  SizedBox(
                    width: 40,
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

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown, minimumSize: Size(5, 40)),
              onPressed: () {},
              child: Text(
                'Add to Cart',
                style: TextStyle(color: Colors.white),
              ),
            ),

            //---------------------elevated button-----------------------------------------//

          ],
        ),
      ),
    );
  }
}
