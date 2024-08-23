

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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