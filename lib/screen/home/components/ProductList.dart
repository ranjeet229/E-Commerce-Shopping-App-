

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  final List<String> products = ['Product 1', 'Product 2', 'Product 3', 'Product 4'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListTile(
            title: Text(
              products[index],
              style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Description of ${products[index]}',
              style: TextStyle(color: Colors.grey[600]),
            ),
            trailing: Icon(Icons.add_shopping_cart, color: Colors.deepPurple),
            onTap: () {
              // Add your product detail functionality here
            },
          ),
        );
      },
    );
  }
}
