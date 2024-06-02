import 'package:flutter/material.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
// ignore: prefer_const_constructors
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_constructors, prefer_const_literals_to_create_immutables
            children: [CircleAvatar()]));
  }
}
