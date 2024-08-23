

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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