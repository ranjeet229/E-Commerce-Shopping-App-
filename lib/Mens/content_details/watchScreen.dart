



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
