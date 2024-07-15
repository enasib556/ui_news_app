import 'package:flutter/material.dart';

class NewsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Latest News",
            style: TextStyle(
              fontFamily: 'NewYorkSmall', // Specify the font family here
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "See All",
                  style: TextStyle(
                    fontFamily:
                        'NewYorkSmall', // Apply the same font family here
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                color: Colors.blue,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
