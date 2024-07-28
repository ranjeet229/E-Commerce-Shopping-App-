import 'package:flutter/material.dart';

import '../../../Mens/content/mensCategoryItem.dart';
import '../../../Mens/content/mensCategoryList.dart';

class MensSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        title: Text('Men\'s Section', style: TextStyle(color: Colors.white),),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search,color: Colors.white,),
            onPressed: () {
              // Add search functionality here
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart,color: Colors.white,),
            onPressed: () {
              // Add cart functionality here
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.grey[200],
        child: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3/ 3,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (ctx, index) => CategoryItem(
            categories[index].id,
            categories[index].title,
            categories[index].imageUrl,
          ),
        ),
      ),
    );
  }
}





