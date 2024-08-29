import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JacketsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.7),
        title: Text('Jackets',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,
        color: Colors.blue),),
      ),
      body: Center(
        child: Row(
          children: [
            Text(
              'Jackets Section',
              style: TextStyle(fontSize: 24),
            ),

          ],
        ),
      ),
    );
  }
}
