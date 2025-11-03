import 'package:flutter/material.dart';

class Messagepage extends StatelessWidget {
  const Messagepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Message',
        style: TextStyle(
          color: Colors.white,
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}