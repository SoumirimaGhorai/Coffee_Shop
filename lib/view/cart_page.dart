import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_models/get_provider_app_controller.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<GetProvider>(context);

    if (provider.cartTitles.isEmpty) {
      return const Center(child: Text(' Cart is empty'));
    }

    return ListView.builder(
      itemCount: provider.cartTitles.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.all(8),
          child: ListTile(
            leading: Image.asset(provider.cartImages[index], width: 50),
            title: Text(provider.cartTitles[index]),
            trailing: IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                provider.removeFromCart(provider.cartTitles[index]);
              },
            ),
          ),
        );
      },
    );
  }
}
