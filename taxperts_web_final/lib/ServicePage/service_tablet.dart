import 'package:flutter/material.dart';

import '../Components/footer.dart';
import '../Components/navBar.dart';
import '../Components/service_card.dart';
import '../colors.dart';

class ServiceTablet extends StatefulWidget {
  const ServiceTablet({super.key});

  @override
  State<ServiceTablet> createState() => _ServiceTabletState();
}

class _ServiceTabletState extends State<ServiceTablet> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double p30 = screenWidth / 60;
    double p60 = screenWidth / 30;
    double p15 = screenWidth / 120;
    double p120 = screenWidth / 15;
    double p250 = screenWidth / 6;
    return  Scaffold(
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
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Image.asset('images/logo.png', height: 50),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/start');
                        // Action when button is pressed
                      },
                      child: Text(
                        'Start Now',
                        style: TextStyle(
                          fontSize: 15,
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: p30),
              height: 500,
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Image.asset(
                      'images/service650.png', // Replace with your background image
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Centered Column for text and button overlay
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SERVICES',
                          style: TextStyle(
                            fontSize: 50,
                            color: AppColor.appTeal,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            '''Get Your Taxes Done Right with Taxperts''',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.0),
                          child: Text(
                            '''Embark on a journey to stress-free tax compliance with \nTaxperts, where our dedication to precision and your peace\nof mind comes first. Ready to change the way you think about\ntaxes? Discover the Taxperts difference today.''',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors
                                  .black, // Make sure AppColor class is defined or imported
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
            const SizedBox(height: 90,),
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ServiceCard(
                    imagePath: 'images/ser01.png',
                    serviceDescription:
                    'Taxation is a critical factor for every citizen and business. We provide advise in planning your personal tax and business tax to maximize the benefits',
                    serviceTopic: 'Tax Advisory Service ',
                  ),
                  ServiceCard(
                    imagePath: 'images/ser02.png',
                    serviceDescription:
                    'We offer efficient and effective services in calculating and filing tax returns of citizens and businesses in Sri Lanka and overseas',
                    serviceTopic: 'Tax Return Service',
                  ),

                ],
              ),
            ),
            const SizedBox(height: 20,),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ServiceCard(
                    imagePath: 'images/ser03.png',
                    serviceDescription:
                    'As an expat employee, you need to pay taxes for the income you received from Sri Lanka and file the return of income',
                    serviceTopic: 'Expat Tax Service ',
                  ),
                  ServiceCard(
                    imagePath: 'images/ser04.png',
                    serviceDescription:
                    'Transfer pricing regulation in Sri Lanka is increasing and businesses with associated entities are required to file transfer pricing returns',
                    serviceTopic: 'Transfer Pricing',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ServiceCard(
                    imagePath: 'images/ser05.png',
                    serviceDescription:
                    'Calculate your quarterly income tax for free with Taxperts, covering the fiscal year from April 1st to March 31st. Stay updated on how tax changes affect you, all in one place',
                    serviceTopic: 'Tax Calculator',
                  ),
                  ServiceCard(
                    imagePath: 'images/ser06.png',
                    serviceDescription:
                    'TIN registration assigns a unique identifier for tax purposes, essential for legal business operations and tax filings.',
                    serviceTopic: 'TIN Registration',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 880, // Adjust to the width of your design
                  height: 170, // Adjust to the height of your design

                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Image.asset(
                          'images/ContactHome.png', // Replace with your background image
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Positioned(
                        left: 380, // Adjust the positioning as per your design
                        bottom: 5,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('/start');// Handle button press
                            },
                            child: const Text(
                              'Contact Us',
                              style: TextStyle(
                                fontSize: 14, // Set your desired font size here
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
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25,
                                  vertical: 16), // Set your desired padding here
                              minimumSize:
                              const Size(180, 48), // Set the button's size here
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            FooterTab()
          ],
        ),
      )
    );
  }
}
