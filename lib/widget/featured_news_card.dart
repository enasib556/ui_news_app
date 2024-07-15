import 'package:flutter/material.dart';

class FeaturedNewsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240.0,
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Stack(
        children: [
          Image.asset(
            'assets/images/man.png',
            width: double.infinity,
            height: 240.0,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'by Ryan Browne                    ',
                  style: TextStyle(
                    fontFamily: 'NewYorkSmall',
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 16),
                Text(
                  ' Crypto investors should be prepared to lose all their money, BOE governor says',
                  style: TextStyle(
                    fontFamily: 'NewYorkSmall',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: Text(
              '    “I’m going to say this very bluntly again,”  he added. “Buy them only  if  you’re  prepared  to  lose  all  your  money.”',
              style: TextStyle(
                fontFamily: 'NewYorkSmall',
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
