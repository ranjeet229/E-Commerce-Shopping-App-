import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/ProductList.dart';
import 'components/categoryList.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'E-Commerce ',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {
              // Add your cart functionality here
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(kDefaultPaddin),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search for products',
                hintStyle: TextStyle(color: Colors.grey[500]),
                prefixIcon: Icon(Icons.search, color: Colors.grey[500]),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
              ),
            ),
            SizedBox(height: 10),
            CategoryList(),
            SizedBox(height: 10),
            Expanded(child: ProductList()),
          ],
        ),
      ),
    );
  }
}



