import 'package:flutter/material.dart';
import 'package:taxperts_web_final/colors.dart';

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
    double p30 = screenWidth / 60;
    double p60 = screenWidth / 30;
    double p15 = screenWidth / 120;
    double p20 = screenWidth / 90;

    Color activeColor = AppColor.appTeal;
    Color inactiveColor = Colors.black;
    Color startNowColor = AppColor.appOrange; // Color for "Start Now" text when inactive.
    double fontSize = 16;
    FontWeight fontWeight = FontWeight.w500;

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
            height: 15, // Set the vertical divider height to 20
            child: VerticalDivider(color: AppColor.appDarkGrey, thickness: 1,width: p20,),
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
