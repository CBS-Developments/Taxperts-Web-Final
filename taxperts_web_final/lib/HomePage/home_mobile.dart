import 'package:flutter/material.dart';

import '../Components/blogCard.dart';
import '../Components/navBar.dart';
import '../Components/service_page_card.dart';
import '../colors.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  Map<int, bool> hoverStates = {};

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
              decoration: BoxDecoration(
                color: Colors.white, // Background color
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(
                        0.1), // Shadow color with some transparency
                    spreadRadius: 0, // Spread radius
                    blurRadius: 4, // Blur radius
                    offset: const Offset(0, 2), // changes position of shadow
                  ),
                ],
                // If you also want to round the corners of the container
              ),
              height: 80,
              child: Row(
                crossAxisAlignment:
                CrossAxisAlignment.center, // Center the Row vertically
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // Space items horizontally
                children: <Widget>[

                  const NavigationBarTablet(),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Image.asset('images/logo.png', height: 25),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 2.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/start');
                        // Action when button is pressed
                      },
                      child: Text(
                        'Start Now',
                        style: TextStyle(
                          fontSize: 10,
                          color: AppColor.appOrange, // Set text color to maintain visibility
                        ),
                      ),
                      style: TextButton.styleFrom(
                        // Optional: Add any additional styling here
                      ),
                    ),
                  ),


                ],
              ),

            ),
            const SizedBox(
              height: 1,
            ),
            SizedBox(
              height: 300,
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
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text(
                              'BEGIN YOUR JOURNEY TODAY WITH TAXPERTS',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'DO YOUR TAXES RIGHT',
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColor.appTeal,
                            fontWeight: FontWeight.w800,
                          ),
                        ),

                        const Text(
                          '''Dive into unparalleled ease of your tax compliance with just a click. \nSay goodbye to the hassle and hello to a seamless tax filing experience, tailored just for you.''',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors
                                .black, // Make sure AppColor class is defined or imported
                          ),
                        ),
                        const SizedBox(height: 40), // Space between text and button
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/contact');// Handle button tap
                          },
                          child: const Text(
                            'Meet Tax Expert',
                            style: TextStyle(fontSize: 10),
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 18),
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
                          const EdgeInsets.symmetric(horizontal: 10.0,vertical: 15),
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('/tax-calculator');
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Estimate Your Tax ',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: AppColor.appTeal),
                                ),
                                Icon(
                                  Icons.keyboard_double_arrow_right_rounded,
                                  color:
                                  AppColor.appTeal, // Icon color green
                                  size: 12,
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10 ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'TIN REGISTRATION',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: ElevatedButton(
                              onPressed: () {
                                // Handle button tap
                              },
                              child: const Row(
                                children: [
                                  Text(
                                    'Read More',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 1.0, left: 2),
                                    child: Icon(
                                      Icons
                                          .keyboard_double_arrow_right_rounded,
                                      color: Colors.white, // Icon color green
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 15),
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
                                horizontal: 10.0, vertical: 10),
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => const REGFormDesktop(initialTaxType: 'Return Filling Registration'),),
                                // );
                                // Handle button tap
                              },
                              child: const Text(
                                'Register Me',
                                style: TextStyle(fontSize: 10),
                              ),
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 15),
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
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10 ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'TIN REGISTRATION',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: ElevatedButton(
                              onPressed: () {
                                // Handle button tap
                              },
                              child: const Row(
                                children: [
                                  Text(
                                    'Read More',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 1.0, left: 2),
                                    child: Icon(
                                      Icons
                                          .keyboard_double_arrow_right_rounded,
                                      color: Colors.white, // Icon color green
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 15),
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
                                horizontal: 10.0, vertical: 10),
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => const REGFormDesktop(initialTaxType: 'Return Filling Registration'),),
                                // );
                                // Handle button tap
                              },
                              child: const Text(
                                'Register Me',
                                style: TextStyle(fontSize: 10),
                              ),
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 15),
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
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10 ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'TIN REGISTRATION',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: ElevatedButton(
                              onPressed: () {
                                // Handle button tap
                              },
                              child: const Row(
                                children: [
                                  Text(
                                    'Read More',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 1.0, left: 2),
                                    child: Icon(
                                      Icons
                                          .keyboard_double_arrow_right_rounded,
                                      color: Colors.white, // Icon color green
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 15),
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
                                horizontal: 10.0, vertical: 10),
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => const REGFormDesktop(initialTaxType: 'Return Filling Registration'),),
                                // );
                                // Handle button tap
                              },
                              child: const Text(
                                'Register Me',
                                style: TextStyle(fontSize: 10),
                              ),
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 15),
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
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Text(
                'TAXPERT ALWAYS BEHIND YOU TO MEET YOUR COMPLIANCE OBLIGATIONS',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset('images/IIT2.png', height: 125),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset('images/CorporateITax2.png', height: 125),
                    ),

                  ],

                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset('images/PartnershipTax2.png', height: 125),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset('images/VAT2.png', height: 125),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset('images/SSCL2.png', height: 125),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey
                        .withOpacity(0.5), // Shadow color with opacity
                    spreadRadius: 1, // Spread radius
                    blurRadius: 3, // Blur radius
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            const Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'EXCELLENCE IN TAX SIMPLIFICATION\n SRI LANKA"S AWARD-WINNING TAX SERVICE COMPANY',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 180,
              child: Center(
                child: Container(
                  width: 200,
                  height: 150,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: Text(
                'Digital Social Impact Award',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 13),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                'Pioneering taxation-as-a-service company in Sri Lanka',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColor.appTeal,
                    fontSize: 11),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(1.0),
              child: Text(
                "Taxperts was honored to receive the Digital Social Impact Award from the Information Communication Agency of Sri Lanka (ICTA) for introducing Sri Lanka's first digital tax compliance service. This award sets a new standard for leveraging technology in tax compliance services. ",
                style:
                TextStyle(color: Colors.black, fontSize: 10),
                textAlign: TextAlign.center,
              ),
            ),

            Container(
              height: 180,
              child: Center(
                child: Container(
                  width: 200,
                  height: 150,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: Text(
                'NBQS Award',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 13),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                'A Milestone for Tax Compliance Innovation',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColor.appTeal,
                    fontSize: 11),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(1.0),
              child: Text(
                'The Chartered Institute for ICT, Colombo Chapter, has honored Taxperts with the National Best Quality Software Award (NBQSA) for pioneering tax computation system. This system, designed with both citizens and businesses in mind, simplifies the tax compliance process, making it more accessible and efficient than ever before. ',
                style:
                TextStyle(color: Colors.black, fontSize: 10),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 180,
              child: Center(
                child: Container(
                  width: 200,
                  height: 150,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: Text(
                'National Ingenuity Award',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 13),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                'A Revolution in Tax Compliance Business Process Management',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColor.appTeal,
                    fontSize: 11),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(1.0),
              child: Text(
                'The Sri Lanka Association of Software and Services Companies (SLASSCOM) has honored Taxperts with the prestigious National Ingenuity Award. This award celebrates leading-edge solution in business process management, specifically designed to enhance efficiency and effectiveness in the tax compliance sector.',
                style:
                TextStyle(color: Colors.black, fontSize: 10),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text("Experience the innovation firsthand that's reshaping business process management in the tax compliance sphere. For a deeper dive into our award-winning solution and to discover how it can transform your business operations, we invite you to visit our website or reach out directly to our team. Let's elevate your business processes in taxation together.",
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w600,
                  color: AppColor.appTeal,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: Text(
                      'DIGITAL TAX SOLUTIONS TAILORED JUST FOR YOU',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: Text(
                      "We're Here to Get Your Taxes Done Right with Taxperts",
                      style: TextStyle(
                          fontSize: 12,
                          color: AppColor.appTeal,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ServicePageCardMob(
                            title: 'Tax Advisory',
                            description:
                            'Taxation is a critical factor for every citizen and business. We provide advise in planning your personal tax and business tax to maximize the benefits',
                            spaceHeight: 5,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ServicePageCardMob(
                            title: 'Tax Return',
                            description:
                            'We offer efficient and effective services in calculating and filing tax returns of citizens and businesses in Sri Lanka and overseas',
                            spaceHeight: 5,
                          ),

                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const ServicePageCardMob(
                            title: 'Expat Tax',
                            description:
                            'As an expat employee, you need to pay taxes for the income you received from Sri Lanka and file the return of income',
                            spaceHeight: 10,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          const ServicePageCardMob(
                            title: 'Transfer Pricing',
                            description:
                            'Transfer pricing regulation in Sri Lanka is increasing and businesses with associated entities are required to file transfer pricing returns',
                            spaceHeight: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const ServicePageCardMob(
                            title: 'Tax Calculator',
                            description:
                            'Calculate your quarterly income tax for free with Taxperts, covering the fiscal year from April 1st to March 31st. Stay updated on how tax changes affect you, all in one place',
                            spaceHeight: 5,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          const ServicePageCardMob(
                            title: 'Tax Calendar',
                            description:
                            'A Tax Calendar is a comprehensive guide designed to assist individuals, businesses, and tax professionals in keeping track of important tax dates throughout the year',
                            spaceHeight: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
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
                      child: SizedBox(
                        width: 420,
                        height: 450,
                        child: Row(
                          children: [
                            // Image.asset('images/whych.png', height: 400),
                            const SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: 400,
                              height: 500,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Simplifying Your Taxes with Just a Click',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Text(
                                      "Experience the Sri Lanka’s premier online taxation service",
                                      style: TextStyle(
                                          fontSize: 12, color: AppColor.appTeal),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 3,
                                        height: 25,
                                        color: AppColor.appOrange,
                                        margin: const EdgeInsets.only(
                                            right: 10, top: 10, bottom: 10,left: 20),
                                      ),
                                      const Text(
                                        'Ontime Service Delivery ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 12,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 30, right: 20,bottom: 2), // Align with the text above
                                    child: Text(
                                      'We respect your time, ensuring every deadline is met with room to spare',
                                      style: TextStyle(fontSize: 10, color: Colors.black),
                                    ),
                                  ),
                                  // const SizedBox(
                                  //   height: 10,
                                  // ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 3,
                                        height: 25,
                                        color: AppColor.appOrange,
                                        margin: const EdgeInsets.only(
                                            right: 10, top: 10, bottom: 10,left: 20),
                                      ),
                                      const Text(
                                        'Utmost Confidentiality',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 12,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 20, right: 20, bottom: 2), // Align with the text above
                                    child: Text(
                                      'Your financial data is safeguarded with the highest level of security',
                                      style: TextStyle(fontSize: 10, color: Colors.black),
                                    ),
                                  ),

                                  Row(
                                    children: [
                                      Container(
                                        width: 3,
                                        height: 25,
                                        color: AppColor.appOrange,
                                        margin: const EdgeInsets.only(
                                            right: 10, top: 10, bottom: 10,left: 20),
                                      ),
                                      const Text(
                                        'Precision in Tax Filing',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 12,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 30, right: 20, bottom: 2), // Align with the text above
                                    child: Text(
                                      "Benefit from our experts' unmatched accuracy, for a worry-free filing experience",
                                      style: TextStyle(fontSize: 10, color: Colors.black),
                                    ),
                                  ),

                                  Row(
                                    children: [
                                      Container(
                                        width: 3,
                                        height: 25,
                                        color: AppColor.appOrange,
                                        margin: const EdgeInsets.only(
                                            right: 10, top: 10, bottom: 10,left: 20),
                                      ),
                                      const Text(
                                        'Penalty-Free Filing',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 12,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 30, right: 20, bottom: 2), // Align with the text above
                                    child: Text(
                                      'Join the ranks of our satisfied clients who enjoy a flawless filing record',
                                      style: TextStyle(fontSize: 10, color: Colors.black),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 3,
                                        height: 25,
                                        color: AppColor.appOrange,
                                        margin: const EdgeInsets.only(
                                            right: 10, top: 10, bottom: 10,left: 20),
                                      ),
                                      const Text(
                                        'Exceptional Customer Service',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 12,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 30, right: 20, bottom: 2), // Align with the text above
                                    child: Text(
                                      'Our friendly team is dedicated to making your tax filing experience smooth and stress-free',
                                      style: TextStyle(fontSize: 10, color: Colors.black),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 15.0),
                    child: Center(
                      child: Text(
                        'LATEST BLOG POST',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                    ),
                    child: Text(
                      'Connect with Taxperts Blog to get the latest development in the taxation domain',
                      style: TextStyle(
                          fontSize: 12,
                          color: AppColor.appTeal,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      spacing: 10, // Horizontal space between cards
                      runSpacing: 5, // Vertical space between lines
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

                        return BlogCardMob(
                          imagePath: imagePath,
                          date: date,
                          topic: topic,
                          // Assuming BlogCard is modified to include a "Read More" button
                        );
                      }),
                    ),
                  ),


                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
