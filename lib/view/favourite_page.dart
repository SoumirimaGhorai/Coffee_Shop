import 'package:coffee_shop/view/hot_coffee_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_models/get_provider_app_controller.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key,});

  @override
  Widget build(BuildContext context) {
    final getProvider = Provider.of<GetProvider>(context);

    if (getProvider.favTitles.isEmpty) {
      return const Center(child: Text(' No favourites yet'));
    }

    return ListView.builder(
      itemCount: getProvider.favTitles.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.all(8),
          child: ListTile(
            leading: Image.asset(getProvider.favImages[index], width: 50),
            title: Text(getProvider.favTitles[index]),
            trailing: IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () {
               getProvider.removeFromFavourite(getProvider.favTitles[index]);
              },
            ),
          ),
        );
      },
    );
  }
}
