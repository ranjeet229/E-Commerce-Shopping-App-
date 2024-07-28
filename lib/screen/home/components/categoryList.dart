import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voice/modals/product.dart';
import 'package:voice/screen/HomeCategory/component/MensSection.dart';
import 'package:voice/screen/home/home_screen.dart';

import '../../HomeCategory/component/ClothingPage.dart';
import '../../HomeCategory/component/Electronics.dart';
import '../../HomeCategory/component/ToysPage.dart';

class CategoryList extends StatelessWidget {
  final List<String> categories = ['Sections', 'Clothing', 'Electronics', 'Toys'];

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
            child: index == 0
                ? PopupMenuButton<String>(
              onSelected: (value) {
                switch (value) {
                  case 'Men':
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>MensSection()));
                    break;
                  case 'Women':
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>HomeScreen()));
                    break;
                }
              },
              itemBuilder: (BuildContext context) {
                return ['Men', 'Women'].map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
              child: Chip(
                label: Text(
                  categories[index],
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.deepPurple,
              ),
            )
                : InkWell(
              onTap: () {
                switch (index) {
                  case 1:
                    _navigateToClothing(context);
                    break;
                  case 2:
                    _navigateToElectonics(context);
                    break;
                  case 3:
                    _navigateToToys(context);
                    break;
                }
              },
              child: Chip(
                label: Text(
                  categories[index],
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.deepPurple,
              ),
            ),
          );
        },
      ),
    );
  }

  void _navigateToClothing(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ClothingPage()),
    );
  }

  void _navigateToElectonics(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Elecrtronics()),
    );
  }

  void _navigateToToys(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ToysPage()),
    );
  }
}





