import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  CategoryItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        switch (id) {
          case 'c1':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => JacketsScreen(),
              ),
            );
            break;
          case 'c2':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ShoesScreen(),
              ),
            );
            break;
          case 'c3':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ShirtsScreen(),
              ),
            );
            break;
          case 'c4':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PantsScreen(),
              ),
            );
            break;

          case 'c5':
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>WatchesScreen(),
                ),
            );
          default:
            break;
        }
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          ),
          footer: Container(
            height: 30, // Set the height of the footer to be smaller
            color: Colors.black.withOpacity(0.7), // Set the transparent black color
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class JacketsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.7),
        title: Text('Jackets'),
      ),
      body: Center(
        child: Text(
          'Jackets Section',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class ShoesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.7),
        title: Text('Shoes'),
      ),
      body: Center(
        child: Text(
          'Shoes Section',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class ShirtsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.7),
        title: Text('Shirts'),
      ),
      body: Center(
        child: Text(
          'Shirts Section',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class PantsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.7),
        title: Text('Pants'),
      ),
      body: Center(
        child: Text(
          'Pants Section',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class WatchesScreen extends StatelessWidget {
  const WatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.7),
        title: Text("Watches"),
      ),
      body: Center(
        child: Text(
          'Watch section',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
