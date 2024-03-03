
import 'package:flutter/material.dart';

class BlogCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace with your image paths and data
    String imagePath = 'images/blog2.png';
    String date = '20 Feb';

    return Column(
      children: [
        Image.asset(
          imagePath,
          width: 300,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Text(date),
              ElevatedButton(
                onPressed: () {},
                child: Text('Read More'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Button background color
                  onPrimary: Colors.white, // Button text color
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}