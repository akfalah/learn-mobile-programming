import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
        name: 'Cupcake',
        price: 16000,
        image: 'assets/products/cupcake.jpg',
        stock: 15,
        rating: 5.0,
      ),
      Item(
        name: 'Donut',
        price: 7000,
        image: 'assets/products/donut.jpg',
        stock: 50,
        rating: 4.5,
      ),
      Item(
        name: 'Cookie',
        price: 9000,
        image: 'assets/products/cookie.jpg',
        stock: 25,
        rating: 5.0,
      ),
      Item(
        name: 'Croissant',
        price: 20000,
        image: 'assets/products/croissant.jpg',
        stock: 5,
        rating: 4.8,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Belanja App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            return InkWell(
              onTap: () => context.push('/item', extra: item),
              child: Hero(
                tag: item.image,
                child: ProductCard(item: item),
              ),
            );
          },
        ),
      ),
    );
  }
}
