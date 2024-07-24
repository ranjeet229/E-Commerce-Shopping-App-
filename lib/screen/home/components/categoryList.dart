


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final List<String> categories = ['Electronics', 'Clothing', 'Home', 'Toys'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Chip(
              label: Text(
                categories[index],
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.deepPurple,
            ),
          );
        },
      ),
    );
  }
}