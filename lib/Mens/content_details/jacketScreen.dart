import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
