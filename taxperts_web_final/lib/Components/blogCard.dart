import 'package:flutter/material.dart';

import '../colors.dart';

class BlogCard extends StatelessWidget {
  final String imagePath;
  final String date;
  final String topic;

  const BlogCard({
    Key? key,
    required this.imagePath,
    required this.date,
    required this.topic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image.asset(
              imagePath,
              width: 300,
              height: 200, // Set a fixed height for the image
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom:
                  0, // Align bottom edge of triangle with bottom edge of image
              right: 0, // Align right edge of triangle with right edge of image
              child: ClipPath(
                clipper: TriangleClipper(), // Use the custom clipper
                child: Container(
                  margin: EdgeInsets.only(bottom: 10, right: 10),
                  width: 135,
                  height: 75,
                  color: AppColor.appTeal,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        date,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              width: 350,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Text(
                  topic,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 16),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle button tap
              },
              child: Row(
                children: [
                  Text(
                    'Read More',
                    style: TextStyle(fontSize: 14),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Icon(
                      Icons.keyboard_double_arrow_right_rounded,
                      color:
                      Colors.white, // Icon color green
                      size: 22,
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: 30, vertical: 15),
                // fixedSize: const Size(
                //     220, 45), // Set the width and height
                primary: AppColor
                    .appOrange, // Set the background color to green
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      30), // Set the border radius
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    // Start from the bottom left
    path.moveTo(0, size.height);
    // Line to the bottom right
    path.lineTo(size.width, size.height);
    // Line to the top right
    path.lineTo(size.width, 0.0);
    // Close the path to form a triangle
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
