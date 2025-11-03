import 'package:flutter/material.dart';

class EmotioconFace extends StatelessWidget {
  final String emotioconFace;

  const EmotioconFace({
    super.key,
   required this.emotioconFace
  });

  @override
  Widget build(BuildContext context) {
    return 
    Container(
        decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.all(12),
        child: Text(emotioconFace,
        style: TextStyle(
          fontSize: 28
        ),),
        );
  }
}