import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int, String) onItemSelected;

  CustomNavigationBar({
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    List<String> labels = ['Home', 'Tax Calculator', 'Services', 'Resources', 'Blog', 'Contact'];
    List<String> routes = ['/home', '/tax-calculator', '/services', '/resources', '/blog', '/contact'];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(labels.length, (index) {
        return InkWell(
          onTap: () => onItemSelected(index, routes[index]),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              labels[index],
              style: TextStyle(
                fontSize: 22,
                color: selectedIndex == index ? Colors.blue : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      }),
    );
  }
}