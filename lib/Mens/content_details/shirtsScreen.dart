

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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