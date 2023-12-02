import 'package:flutter/material.dart';

class EmoticonFace extends StatefulWidget {
  EmoticonFace({Key? key, required this.EmoticonText}) : super(key: key);

  String EmoticonText;

  @override
  State<EmoticonFace> createState() => _EmoticonFaceState();
}

class _EmoticonFaceState extends State<EmoticonFace> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),

      ),
      padding: EdgeInsets.all(12),
      child: Center(
        child: Text(
          widget.EmoticonText,
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}


