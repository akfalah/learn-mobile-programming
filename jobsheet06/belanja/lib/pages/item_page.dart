import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key, required this.itemArgs});

  final Item itemArgs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name,
            style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: ListView(
        children: [
          Expanded(
            child: Hero(
              tag: itemArgs.image,
              child: Image.asset(
                itemArgs.image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.black26,
          ),
          Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Text(
                  itemArgs.name,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          itemArgs.rating.toString(),
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      width: 1.5,
                      height: 16,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Stock(s): ${itemArgs.stock}',
                      style: TextStyle(
                        color: itemArgs.stock > 10 ? Colors.black : Colors.red,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Rp${itemArgs.price}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.black26,
          ),
          Container(
            padding: const EdgeInsets.all(12),
            child: const Text(
              'Lorem ipsum odor amet, consectetuer adipiscing elit. '
              'Leo pellentesque dolor fusce integer volutpat bibendum. '
              'Habitant purus semper viverra convallis sodales tempus? '
              'Iaculis id ridiculus curabitur enim urna euismod. '
              'Mollis etiam finibus velit phasellus tellus imperdiet nascetur blandit. '
              'Ullamcorper non auctor dis rutrum consequat porttitor luctus magnis. '
              'Ad inceptos pharetra etiam dignissim maecenas magna. '
              'Nisi sollicitudin magnis dictum neque sapien curabitur. '
              'Nulla rutrum tellus commodo ligula euismod mattis.',
              textAlign: TextAlign.justify,
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
