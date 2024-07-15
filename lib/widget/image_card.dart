import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String imagePath;
  final String mainText;
  final String leftBottomText;
  final String rightBottomText;

  ImageCard({
    required this.imagePath,
    required this.mainText,
    required this.leftBottomText,
    required this.rightBottomText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              width: double.infinity,
              height: 128,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            child: Text(
              leftBottomText,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            right: 8,
            child: Text(
              rightBottomText,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 8,
            left: 8,
            child: Text(
              mainText,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
