import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:taxperts_web_final/REGForm/REGForm.dart';
import 'package:taxperts_web_final/colors.dart';
import 'package:taxperts_web_final/sizes.dart';

import '../Components/blogCard.dart';
import '../Components/footer.dart';
import '../Components/navBar.dart';
import '../Components/service_page_card.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({super.key});

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  final Map<int, GlobalKey<FlipCardState>> cardKeys = {};

  @override
  void initState() {
    super.initState();
    // Initialize keys for each card
    for (int i = 0; i < 5; i++) {
      cardKeys[i] = GlobalKey<FlipCardState>();
    }
  }

  final List<Map<String, String>> cardData = [
    {
      'frontImage': 'images/IIT.png',
      'backImage': 'images/IITback.png',
    },
    {
      'frontImage': 'images/CorporateITax.png',
      'backImage': 'images/CorporateITaxback.png',
    },
    {
      'frontImage': 'images/PartnershipITax.png',
      'backImage': 'images/PartnershipITaxback.png',
    },
    {
      'frontImage': 'images/VAT.png',
      'backImage': 'images/VATback.png',
    },
    {
      'frontImage': 'images/SSCL.png',
      'backImage': 'images/SSCLback.png',
    },
    // Add more image pairs if you have more than 5 cards
  ];

  Map<int, bool> hoverStates = {};
  int _selectedIndex = 0;

  void _navigateTo(int index, String routeName) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pushNamed(context, routeName);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double p30 = screenWidth / 60;
    double p60 = screenWidth / 30;
    double p15 = screenWidth / 120;
    double p120 = screenWidth / 15;
    double p20 = screenWidth / 90;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white, // Background color
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(
                        0.1), // Shadow color with some transparency
                    spreadRadius: 0, // Spread radius
                    blurRadius: 4, // Blur radius
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
                // If you also want to round the corners of the container
              ),
              height:
                  100, // Set the container height to match the AppBar height
              child: Row(
                crossAxisAlignment:
                    CrossAxisAlignment.center, // Center the Row vertically
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Space items horizontally
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Image.asset('images/logo.png', height: 50),
                  ), // Adjust the size of the logo if necessary
                  CustomNavigationBar(
                    selectedIndex: _selectedIndex,
                    onItemSelected: _navigateTo,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1,
            ),
            SizedBox(
              height: 650,
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Image.asset(
                      'images/HomeBack650.png', // Replace with your background image
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Centered Column for text and button overlay
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'BEGIN YOUR JOURNEY TODAY WITH',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              ' TAXPERTS',
                              style: TextStyle(
                                fontSize: 30,
                                color: AppColor.appTeal,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'DO YOUR TAXES RIGHT',
                          style: TextStyle(
                            fontSize: 60,
                            color: AppColor.appTeal,
                            fontWeight: FontWeight.w800,
                          ),
                        ),

                        Text(
                          '''Dive into unparalleled ease of your tax compliance with just a click. Say goodbye to the hassle \nand hello to a seamless tax filing experience, tailored just for you.''',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors
                                .black, // Make sure AppColor class is defined or imported
                          ),
                        ),

                        // Text(
                        //   'Get in Touch for Innovative, Personalized Tax Solutions.',
                        //   style: TextStyle(
                        //     fontSize: 16,
                        //     color: Colors.black,
                        //   ),
                        // ),
                        SizedBox(height: 100), // Space between text and button
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Handle button tap
                              },
                              child: Text(
                                'Meet Tax Expert',
                                style: TextStyle(fontSize: 18),
                              ),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 36, vertical: 18),
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
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: TextButton(
                                onPressed: () {},
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Estimate Your Tax ',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: AppColor.appTeal),
                                    ),
                                    Icon(
                                      Icons.keyboard_double_arrow_right_rounded,
                                      color:
                                          AppColor.appTeal, // Icon color green
                                      size: 22,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),

                        SizedBox(height: 30),

                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        //   child: Row(
                        //     children: [
                        //       TextButton(
                        //         onPressed: () {},
                        //         child: Row(
                        //           crossAxisAlignment: CrossAxisAlignment.center,
                        //           children: [
                        //             Text(
                        //               'TIN Registration ',
                        //               style: TextStyle(
                        //                   fontSize: 18,
                        //                   color: AppColor.appTeal),
                        //             ),
                        //             Icon(
                        //               Icons.keyboard_double_arrow_right_rounded,
                        //               color:
                        //                   AppColor.appTeal, // Icon color green
                        //               size: 22,
                        //             ),
                        //           ],
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: p30 + p15),
                    child: Column(
                      children: [
                        Text(
                          'TIN REGISTRATION',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10),
                              child: ElevatedButton(
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
                                      padding: const EdgeInsets.only(
                                          top: 1.0, left: 2),
                                      child: Icon(
                                        Icons
                                            .keyboard_double_arrow_right_rounded,
                                        color: Colors.white, // Icon color green
                                        size: 20,
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
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => REGForm()),
                                  );
                                  // Handle button tap
                                },
                                child: Text(
                                  'Register Me',
                                  style: TextStyle(fontSize: 14),
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
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: p30 + p15),
                    child: Column(
                      children: [
                        Text(
                          'VAT/SSCL REGISTRATION',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10),
                              child: ElevatedButton(
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
                                      padding: const EdgeInsets.only(
                                          top: 1.0, left: 2),
                                      child: Icon(
                                        Icons
                                            .keyboard_double_arrow_right_rounded,
                                        color: Colors.white, // Icon color green
                                        size: 20,
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
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => REGForm()),
                                  );
                                  // Handle button tap
                                },
                                child: Text(
                                  'Register Me',
                                  style: TextStyle(fontSize: 14),
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
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: p30 + p15),
                    child: Column(
                      children: [
                        Text(
                          'RETURN FILLING',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10),
                              child: ElevatedButton(
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
                                      padding: const EdgeInsets.only(
                                          top: 1.0, left: 2),
                                      child: Icon(
                                        Icons
                                            .keyboard_double_arrow_right_rounded,
                                        color: Colors.white, // Icon color green
                                        size: 20,
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
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => REGForm()),
                                  );
                                  // Handle button tap
                                },
                                child: Text(
                                  'Register Me',
                                  style: TextStyle(fontSize: 14),
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
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
              child: Text(
                'TAXPERT ALWAYS BEHIND YOU TO MEET YOUR COMPLIANCE OBLIGATIONS',
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: cardData.asMap().entries.map((entry) {
                    int idx = entry.key;
                    Map<String, String> card = entry.value;

                    return MouseRegion(
                      onEnter: (_) {
                        // Flip the card when the mouse enters
                        final key = cardKeys[idx];
                        key?.currentState?.toggleCard();
                      },
                      onExit: (_) {
                        // Reset the card to its original state when the mouse exits
                        final key = cardKeys[idx];
                        key?.currentState?.toggleCard();
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: p20),
                        child: FlipCard(
                          key:
                              cardKeys[idx], // Assign a unique key to each card
                          flipOnTouch: false, // Disable flipping on touch
                          direction: FlipDirection.HORIZONTAL,
                          front: Card(
                            child:
                                Image.asset(card['frontImage']!, height: 196),
                          ),
                          back: Card(
                            child: Image.asset(card['backImage']!, height: 196),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              height: 500,
              width: 1000,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey
                        .withOpacity(0.5), // Shadow color with opacity
                    spreadRadius: 1, // Spread radius
                    blurRadius: 3, // Blur radius
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
              child: Text(
                'EXCELLENCE IN TAX SIMPLIFICATION: SRI LANKA"S AWARD-WINNING TAX SERVICE COMPANY',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 180.0, right: 60),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'Digital Social Impact Award',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontSize: 24),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'Recognizing Our Pioneering Digital Tax Compliance Service in Sri Lanka',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.appTeal,
                                  fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "We're honoured to receive the Digital Social Impact Award from the Information Communication Agency of Sri Lanka (ICTA) for introducing Sri Lanka's first digital tax compliance service. This groundbreaking initiative simplifies tax filing, making it more accessible and efficient for everyone. 'Thanks to this service, filing taxes is no longer a daunting task for me,' says Kanishka Weeramunda, a local entrepreneur, highlighting the profound impact on our community. This award sets a new standard for leveraging technology in tax compliance services. Stay tuned for how we plan to build on this achievement to further innovate and serve you better.",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    )),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 400,
                    child: Center(
                      child: Container(
                        width: 250,
                        height: 250,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 400,
                    child: Center(
                      child: Container(
                        width: 250,
                        height: 250,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 180.0, left: 60),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'NBQS Award',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontSize: 24),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'A Milestone for Tax Compliance Innovation',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.appTeal,
                                  fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'We are proud to announce that the Chartered Institute for ICT, Colombo Chapter, has honoured us with the National Best Quality Software Award (NBQSA) for our pioneering tax computation system. This system, designed with both citizens and businesses in mind, simplifies the tax compliance process, making it more accessible and efficient than ever before. Our innovative approach to tax computation has not only streamlined the filing process but has also significantly reduced the potential for errors, enhancing user satisfaction across the board.',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 180.0, right: 60),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'National Ingenuity Award',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontSize: 24),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'A Revolution in Tax Compliance Business Process Management',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.appTeal,
                                  fontSize: 24),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              '''We are immensely proud to share that the Sri Lanka Association of Software and Services Companies (SLASSCOM) has honored us with the prestigious National Ingenuity Award. This award celebrates our leading-edge solution in business process management, specifically designed to enhance efficiency and effectiveness in the tax compliance sector. \n \nOur innovative approach, merging advanced technology with user-friendly design, has set new standards in how businesses manage their tax compliance workflows. This transformation has resulted in unparalleled productivity gains and significantly improved customer satisfaction levels. It's a clear indicator of our commitment to pushing boundaries and fostering innovation within our industry. \n \nExperience the innovation firsthand that's reshaping business process management in the tax compliance sphere. For a deeper dive into our award-winning solution and to discover how it can transform your business operations, we invite you to visit our website or reach out directly to our team. Let's elevate your business processes together.
                            ''',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    )),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 400,
                    child: Center(
                      child: Container(
                        width: 250,
                        height: 250,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: p120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                    ),
                    child: Text(
                      'DIGITAL TAX SOLUTIONS TAILORED JUST',
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                    ),
                    child: Text(
                      "We're Here to Get Your Tax Right with Taxperts",
                      style: TextStyle(
                          fontSize: 22,
                          color: AppColor.appTeal,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                    ),
                    child: Text(
                      'Embark on a journey to stress-free tax compliance with Taxperts, where our dedication to precision and your peace of mind comes first. Ready to change the way you think about taxes? Discover the Taxperts difference today',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: p60, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ServicePageCard(
                      title: 'Tax Advisory',
                      description:
                          'Taxation is a critical factor for every citizen and business. We provide advise in planning your personal tax and business tax to maximize the benefits',
                      spaceHeight: 40,
                    ),
                    SizedBox(
                      width: p30,
                    ),
                    ServicePageCard(
                      title: 'Tax Return',
                      description:
                          'We offer efficient and effective services in calculating and filing tax returns of citizens and businesses in Sri Lanka and overseas',
                      spaceHeight: 60,
                    ),
                    SizedBox(
                      width: p30,
                    ),
                    ServicePageCard(
                      title: 'Expat Tax',
                      description:
                          'As an expat employee, you need to pay taxes for the income you received from Sri Lanka and file the return of income',
                      spaceHeight: 60,
                    )
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: p60, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ServicePageCard(
                      title: 'Transfer Pricing',
                      description:
                          'Transfer pricing regulation in Sri Lanka is increasing and businesses with associated entities are required to file transfer pricing returns',
                      spaceHeight: 40,
                    ),
                    SizedBox(
                      width: p30,
                    ),
                    ServicePageCard(
                      title: 'Tax Calculator',
                      description:
                          'Calculate your quarterly income tax for free with Taxperts, covering the fiscal year from April 1st to March 31st. Stay updated on how tax changes affect you, all in one place',
                      spaceHeight: 40,
                    ),
                    SizedBox(
                      width: p30,
                    ),
                    ServicePageCard(
                      title: 'Tax Calendar',
                      description:
                          'A Tax Calendar is a comprehensive guide designed to assist individuals, businesses, and tax professionals in keeping track of important tax dates throughout the year',
                      spaceHeight: 40,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Card(
                elevation: 20.0,
                shadowColor: Colors.black, // You can customize the shadow color
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(30.0), // Set the border radius here
                  side: BorderSide(
                    color: AppColor.appLightBlue, // Set the border color here
                    width: 1.0, // Set the border width here
                  ),
                ),
                child: Container(
                  width: 1040,
                  height: 504,
                  child: Row(
                    children: [
                      Image.asset('images/whych.png', height: 500),
                      SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        width: 500,
                        height: 504,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Why Choose Us?',
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Experience Sri Lanka's First Online Taxation Service. Simplifying Taxes with a Click.?",
                                style: TextStyle(
                                    fontSize: 16, color: AppColor.appTeal),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 3,
                                  height: 21,
                                  color: AppColor.appOrange,
                                  margin: EdgeInsets.only(
                                      left: 10, right: 20, top: 10, bottom: 10),
                                ),
                                Text(
                                  'Ontime Service Delivery ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18,
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 3,
                                  height: 21,
                                  color: AppColor.appOrange,
                                  margin: EdgeInsets.only(
                                      left: 10, right: 20, top: 10, bottom: 10),
                                ),
                                Text(
                                  'Highly Confidential',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18,
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 3,
                                  height: 21,
                                  color: AppColor.appOrange,
                                  margin: EdgeInsets.only(
                                      left: 10, right: 20, top: 10, bottom: 10),
                                ),
                                Text(
                                  'Accurate Tax Filling',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18,
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 3,
                                  height: 21,
                                  color: AppColor.appOrange,
                                  margin: EdgeInsets.only(
                                      left: 10, right: 20, top: 10, bottom: 10),
                                ),
                                Text(
                                  'Avoid Tax Filling Penaltiesg',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18,
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 3,
                                  height: 21,
                                  color: AppColor.appOrange,
                                  margin: EdgeInsets.only(
                                      left: 10, right: 20, top: 10, bottom: 10),
                                ),
                                Text(
                                  'Friendly Customer Service',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18,
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: Text(
                'LATEST BLOG POST',
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: Text(
                'Connect with Taxperts Blog to get the latest development in the taxation domain',
                style: TextStyle(
                    fontSize: 18,
                    color: AppColor.appTeal,
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                spacing: 80, // Horizontal space between cards
                runSpacing: 60, // Vertical space between lines
                children: List.generate(3, (index) {
                  // Define the image paths and dates for each card
                  final imagePath = index == 0
                      ? 'images/blog1.png'
                      : index == 1
                          ? 'images/blog2.png'
                          : 'images/blog3.png';
                  final topic = index == 0
                      ? 'Impact of digital adoption for tax revenue'
                      : index == 1
                          ? 'Tradeoff between direct taxes and indirect taxes'
                          : 'Service Oriented Tax System';
                  final date = index == 0
                      ? '20\nFeb' // Using \n to insert a newline character
                      : index == 1
                          ? '21\nFeb' // Another newline character
                          : '22\nFeb'; // And another one

                  return MouseRegion(
                    onEnter: (event) => _onEnter(index),
                    onExit: (event) => _onExit(index),
                    child: Transform.scale(
                      scale: hoverStates[index] ?? false ? 1.3 : 1.0,
                      child: BlogCard(
                        imagePath: imagePath,
                        date: date,
                        topic: topic,
                      ),
                    ),
                  );
                }),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Center(
              child: Container(
                width: 1040, // Adjust to the width of your design
                height: 184, // Adjust to the height of your design

                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Image.asset(
                        'images/ContactHome.png', // Replace with your background image
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Positioned(
                      left: 430, // Adjust the positioning as per your design
                      bottom: 10,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle button press
                          },
                          child: Text(
                            'Contact Us',
                            style: TextStyle(
                              fontSize: 16, // Set your desired font size here
                              // Optional: Set font weight
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary:
                                AppColor.appOrange, // Button background color
                            onPrimary: Colors.white, // Button text color
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(25), // Rounded button
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 16), // Set your desired padding here
                            minimumSize:
                                Size(180, 48), // Set the button's size here
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Footer(),
          ],
        ),
      ),
    );
  }

  void _onEnter(int index) {
    setState(() {
      hoverStates[index] = true;
    });
  }

  void _onExit(int index) {
    setState(() {
      hoverStates[index] = false;
    });
  }
}
