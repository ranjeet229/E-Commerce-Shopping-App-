

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MensSection extends StatefulWidget {
  const MensSection({super.key});

  @override
  State<MensSection> createState() => _MensSectionState();
}

class _MensSectionState extends State<MensSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mens')),
      body: Center(child: Text('Cloths')),
    );
  }
}
