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
    // Define your colors, font sizes, and other styles.
    double screenWidth = MediaQuery.of(context).size.width;
    double p30 = screenWidth / 56;
    double p60 = screenWidth / 28;
    double p15 = screenWidth / 112;

    Color activeColor = Colors.blue;
    Color inactiveColor = Colors.black;
    Color startNowColor = Colors.orange; // Color for "Start Now" text when inactive.
    double fontSize = 18;
    FontWeight fontWeight = FontWeight.bold;

    // Define labels and routes.
    List<String> labels = ['Home', 'Tax Calculator', 'Services', 'Resources', 'Blog', 'Contact'];
    List<String> routes = ['/home', '/tax-calculator', '/services', '/resources', '/blog', '/contact'];

    // Build the navigation bar items except "Start Now".
    List<Widget> navItems = [];
    for (int i = 0; i < labels.length; i++) {
      navItems.add(
        InkWell(
          onTap: () => onItemSelected(i, routes[i]),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: p15),
            child: Text(
              labels[i],
              style: TextStyle(
                fontSize: fontSize,
                color: selectedIndex == i ? activeColor : inactiveColor,
                fontWeight: fontWeight,
              ),
            ),
          ),
        ),
      );

      // Add vertical dividers with specified height except after the last item
      if (i < labels.length - 1) {
        navItems.add(
          Container(
            height: 20, // Set the vertical divider height to 20
            child: VerticalDivider(color: inactiveColor, thickness: 1,width: p30,),
          ),
        );
      }
    }

    // Add the "Start Now" button separately.
    Widget startNowButton = TextButton(
      onPressed: () => onItemSelected(labels.length, '/start'),
      style: TextButton.styleFrom(
        // foregroundColor: selectedIndex == labels.length ? activeColor : Colors.white,
        // backgroundColor: selectedIndex == labels.length ? Colors.white : Colors.white,
      ),
      child: Text(
        'Start Now',
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: selectedIndex == labels.length ? activeColor : startNowColor,
        ),
      ),
    );

    // Return a row with all navigation items and the "Start Now" button.
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ...navItems,
        // dividerBeforeStartNow,

        Padding(
          padding:  EdgeInsets.only(left: p60, right: p30),
          child: startNowButton,
        ),
      ],
    );
  }
}
