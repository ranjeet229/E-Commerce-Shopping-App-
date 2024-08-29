import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JacketsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.7),
        title: Text(
          'Jackets',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.blue,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.blue, // Change this to the desired color
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jackets Section',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.8),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.75,
                ),
                itemCount: jackets.length,
                itemBuilder: (context, index) {
                  return JacketItem(jacket: jackets[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Jacket {
  final String name;
  final String imageUrl;
  final double price;

  Jacket({required this.name, required this.imageUrl, required this.price});
}

class JacketItem extends StatelessWidget {
  final Jacket jacket;

  JacketItem({required this.jacket});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.network(
              jacket.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jacket.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '\$${jacket.price.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Sample data
final List<Jacket> jackets = [
  Jacket(
    name: 'Leather Jacket',
    imageUrl: 'https://m.media-amazon.com/images/I/71O74TBGwgL._AC_UY1100_.jpg',
    price: 199.99,
  ),
  Jacket(
    name: 'Denim Jacket',
    imageUrl: 'https://5.imimg.com/data5/NR/ON/MY-57009823/men-27s-denim-jackets.jpg',
    price: 89.99,
  ),
  Jacket(
    name: 'Winter Coat',
    imageUrl: 'https://oc.kosha.co/journal/wp-content/uploads/2022/07/winter-jacket-for-men.jpeg',
    price: 149.99,
  ),
  Jacket(
    name: 'Bomber Jacket',
    imageUrl: 'https://m.media-amazon.com/images/I/71VFs2XrDVL._AC_UY350_.jpg',
    price: 129.99,
  ),
  Jacket(
    name: 'Zipper Jacket',
    imageUrl: 'https://m.media-amazon.com/images/I/61YDptuF8eL._AC_UY350_.jpg',
    price: 120.99,
  ),
  Jacket(
    name: 'Hoodie',
    imageUrl: 'https://5.imimg.com/data5/EQ/UN/FA/ANDROID-47293987/product-jpeg.jpg',
    price: 115.99,
  ),
  Jacket(
    name: 'Sweatshirt',
    imageUrl: 'https://assets.ajio.com/medias/sys_master/root/20230926/P8M4/6512979eafa4cf41f50b6423/-473Wx593H-441775642-denimblue-MODEL.jpg',
    price: 59.99,
  ),
  Jacket(
    name: 'Fleece zipper jacket',
    imageUrl: 'https://m.media-amazon.com/images/I/61E5erAzIsL._AC_UY1100_.jpg',
    price: 79.99,
  ),

];
