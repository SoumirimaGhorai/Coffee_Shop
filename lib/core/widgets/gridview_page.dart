import 'package:coffee_shop/view/details_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_models/get_provider_app_controller.dart';

class GridPage extends StatelessWidget {
  const GridPage(
      {super.key, required this.path, required this.name, required this.text});
  final String path;
  final String name;
  final String text;

  // Map coffee names to navigation functions

  @override
  Widget build(BuildContext context) {
    final getProvider = Provider.of<GetProvider>(context, listen: false);
    final Map<String, Function(BuildContext)> navMap = {
      'Americano': getProvider.americanoNav,
      'Caffee Macchiato': getProvider.caffeNav,
      'Cappuccino': getProvider.cappuccinoNav,
      'Espresso': getProvider.espressoNav,
      'Flat white': getProvider.flatWhiteNav,
      'Latte': getProvider.latteNav,
      'Long black': getProvider.longBlackNav,
      'Mocha': getProvider.mochaNav,
    };
    return

     GestureDetector(
      onTap: () {
        // Call the correct navigation function based on coffee name
        if (navMap.containsKey(name)) {
          navMap[name]!(context);
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: const Offset(2, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(path, height: 80),
            const SizedBox(height: 10),
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              text,
              style: const TextStyle(color: Colors.brown),
            ),
          ],
        ),
      ),
    );
  }
}
      /*Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset: Offset(2, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(path, height: 80),
          const SizedBox(height: 10),
          Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          Text(text, style: TextStyle(color: Colors.brown)),
        ],
      ),
    );*/

      /*Container(
      width: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(alignment: Alignment.topRight, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    path,
                    width:175,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.0, top: 18.0),
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 12,
                ),
              ),
            ]),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  name,style: TextStyle(fontSize: 13),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              Icon(
                Icons.star,
                size: 18,
                color: Colors.yellow,
              ),
              Text(
                ' 4.8',
                style: TextStyle(fontSize: 14),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0,right: 12,bottom: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(fontSize: 14),
              ),
              Icon(
                Icons.add_box_rounded,
                size: 28,
                color: Colors.orange,
              )
            ],
          ),
        )
      ]),
    );
  }*/

