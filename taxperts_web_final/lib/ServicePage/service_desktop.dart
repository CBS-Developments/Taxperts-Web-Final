import 'package:flutter/material.dart';

import '../Components/footer.dart';
import '../Components/navBar.dart';
import '../Components/service_card.dart';
import '../colors.dart';

class ServiceDesktop extends StatefulWidget {
  const ServiceDesktop({super.key});

  @override
  State<ServiceDesktop> createState() => _ServiceDesktopState();
}

class _ServiceDesktopState extends State<ServiceDesktop> {
  int _selectedIndex = 2;

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
    double p250 = screenWidth / 6;
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
                    offset: const Offset(0, 2), // changes position of shadow
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: p30),
              height: 650,
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
                            fontSize: 60,
                            color: AppColor.appTeal,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            '''Get Your Taxes Done Right with Taxperts''',
                            style: TextStyle(
                                fontSize: 26,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.0),
                          child: Text(
                            '''Embark on a journey to stress-free tax compliance with Taxperts, \nwhere our dedication to precision and your peace of mind comes first. \nReady to change the way you think about taxes? \nDiscover the Taxperts difference today.''',
                            style: TextStyle(
                              fontSize: 18,
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
            const SingleChildScrollView(
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
                  ServiceCard(
                    imagePath: 'images/ser03.png',
                    serviceDescription:
                    'As an expat employee, you need to pay taxes for the income you received from Sri Lanka and file the return of income',
                    serviceTopic: 'Expat Tax Service ',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 90,),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ServiceCard(
                    imagePath: 'images/ser04.png',
                    serviceDescription:
                    'Transfer pricing regulation in Sri Lanka is increasing and businesses with associated entities are required to file transfer pricing returns',
                    serviceTopic: 'Transfer Pricing',
                  ),
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
            const SizedBox(height: 90,),
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
                          style: ElevatedButton.styleFrom(
                            primary:
                            AppColor.appOrange, // Button background color
                            onPrimary: Colors.white, // Button text color
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(25), // Rounded button
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 16), // Set your desired padding here
                            minimumSize:
                            const Size(180, 48), // Set the button's size here
                          ),
                          child: const Text(
                            'Contact Us',
                            style: TextStyle(
                              fontSize: 16, // Set your desired font size here
                              // Optional: Set font weight
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
