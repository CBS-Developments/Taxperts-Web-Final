import 'package:flutter/material.dart';

import '../colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double p30 = screenWidth / 60;
    double p60 = screenWidth / 30;
    double p15 = screenWidth / 120;
    double p120 = screenWidth / 15;
    double p20 = screenWidth / 90;
    double p90 = screenWidth / 20;
    double fontSize = 16;
    return Container(
      width: double.infinity,
      height: 405, // Adjust the height as needed
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF005255), // Left side color
            Color(0xFF00C7C7), // Right side color
          ],
        ),
      ),
      // Add child widgets here
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: p90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('images/whitelogo.png', height: 80),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Home',
                          style: TextStyle(
                              fontSize: fontSize,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )),
                    Container(
                      height: 15, // Set the vertical divider height to 20
                      child: VerticalDivider(
                        color: Colors.white,
                        thickness: 1,
                        width: p20,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Tax Calculator',
                          style: TextStyle(
                              fontSize: fontSize,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )),
                    Container(
                      height: 15, // Set the vertical divider height to 20
                      child: VerticalDivider(
                        color: Colors.white,
                        thickness: 1,
                        width: p20,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Services',
                          style: TextStyle(
                              fontSize: fontSize,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )),
                    Container(
                      height: 15, // Set the vertical divider height to 20
                      child: VerticalDivider(
                        color: Colors.white,
                        thickness: 1,
                        width: p20,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Resources',
                          style: TextStyle(
                              fontSize: fontSize,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )),
                    Container(
                      height: 15, // Set the vertical divider height to 20
                      child: VerticalDivider(
                        color: Colors.white,
                        thickness: 1,
                        width: p20,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Blog',
                          style: TextStyle(
                              fontSize: fontSize,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )),
                    Container(
                      height: 15, // Set the vertical divider height to 20
                      child: VerticalDivider(
                        color: Colors.white,
                        thickness: 1,
                        width: p20,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Vlog',
                          style: TextStyle(
                              fontSize: fontSize,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )),
                    Container(
                      height: 15, // Set the vertical divider height to 20
                      child: VerticalDivider(
                        color: Colors.white,
                        thickness: 1,
                        width: p20,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Contact',
                          style: TextStyle(
                              fontSize: fontSize,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )),
                  ],
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: p120),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: p20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.email_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SelectableText(
                            'connect@taxperts.lk',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: p20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.phone_in_talk_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SelectableText(
                            ' \n+94 77 7 145 347\n+94 11 2 424 922',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: p20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SelectableText(
                            '\nTaxperts Lanka Pvt. Ltd\nNo. 101, Olcott Mawatha, Colombo 11',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: p20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.watch_later_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SelectableText(
                            ' \n'
                            'Monday - Friday: 8.30 - 17.30\n'
                            'Saturday : 9.00 - 01.00',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  child: Image.asset('images/fbIcon.png', height: 50)),
              GestureDetector(
                  child: Image.asset('images/twitIcon.png', height: 50)),
              GestureDetector(
                  child: Image.asset('images/likdinIcon.png', height: 50)),
              GestureDetector(
                  child: Image.asset('images/ytIcon.png', height: 50)),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Divider(
            color: AppColor.appLightBlue,
            thickness: 2,
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Text(
              '© Copyright Taxperts 2024. All Rights Reserved',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ))
        ],
      ),
    );
  }
}

class FooterTab extends StatelessWidget {
  const FooterTab({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double p30 = screenWidth / 60;
    double p60 = screenWidth / 30;
    double p15 = screenWidth / 120;
    double p120 = screenWidth / 15;
    double p20 = screenWidth / 90;
    double p90 = screenWidth / 20;
    double fontSize = 14;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF006064), // Adjust the colors to match the image
            Color(0xFF00838F),
          ],
        ),
      ),
      padding: EdgeInsets.all(20), // Adjust the padding as necessary
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Logo or text widget goes here, if necessary.
          Image.asset('images/whitelogo.png', height: 60),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Home',
                      style: TextStyle(
                          fontSize: fontSize,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )),
                Container(
                  height: 15, // Set the vertical divider height to 20
                  child: VerticalDivider(
                    color: Colors.white,
                    thickness: 1,
                    width: p20,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Tax Calculator',
                      style: TextStyle(
                          fontSize: fontSize,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )),
                Container(
                  height: 15, // Set the vertical divider height to 20
                  child: VerticalDivider(
                    color: Colors.white,
                    thickness: 1,
                    width: p20,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Services',
                      style: TextStyle(
                          fontSize: fontSize,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )),
                Container(
                  height: 15, // Set the vertical divider height to 20
                  child: VerticalDivider(
                    color: Colors.white,
                    thickness: 1,
                    width: p20,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Resources',
                      style: TextStyle(
                          fontSize: fontSize,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )),
                Container(
                  height: 15, // Set the vertical divider height to 20
                  child: VerticalDivider(
                    color: Colors.white,
                    thickness: 1,
                    width: p20,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Blog',
                      style: TextStyle(
                          fontSize: fontSize,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )),
                Container(
                  height: 15, // Set the vertical divider height to 20
                  child: VerticalDivider(
                    color: Colors.white,
                    thickness: 1,
                    width: p20,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Vlog',
                      style: TextStyle(
                          fontSize: fontSize,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )),
                Container(
                  height: 15, // Set the vertical divider height to 20
                  child: VerticalDivider(
                    color: Colors.white,
                    thickness: 1,
                    width: p20,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Contact',
                      style: TextStyle(
                          fontSize: fontSize,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(
                  Icons.email_rounded,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SelectableText(
                  'connect@taxperts.lk',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(
                  Icons.phone_in_talk_rounded,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SelectableText(
                  ' \n+94 77 7 145 347\n+94 11 2 424 922',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(
                  Icons.watch_later_rounded,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SelectableText(
                  ' \n'
                      'Monday - Friday: 8.30 - 17.30\n'
                      'Saturday : 9.00 - 01.00',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SelectableText(
                  '\nTaxperts Lanka Pvt. Ltd\nNo. 101, Olcott Mawatha, Colombo 11',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  child: Image.asset('images/fbIcon.png', height: 50)),
              GestureDetector(
                  child: Image.asset('images/twitIcon.png', height: 50)),
              GestureDetector(
                  child: Image.asset('images/likdinIcon.png', height: 50)),
              GestureDetector(
                  child: Image.asset('images/ytIcon.png', height: 50)),
            ],
          ),
          SizedBox(height: 20),
          const Center(
            child: Text('© Copyright Taxperts 2024. All Rights Reserved',
                style: TextStyle(color: Colors.white, fontSize: 14)),
          ),
        ],

      ),

    );
  }
}
