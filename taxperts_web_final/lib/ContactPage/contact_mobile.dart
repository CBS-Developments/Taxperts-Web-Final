import 'package:flutter/material.dart';

import '../Components/footer.dart';
import '../Components/navBar.dart';
import '../colors.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: p30),
              height: 300,
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Image.asset(
                      'images/contact650.png', // Replace with your background image
                      fit: BoxFit.cover,
                    ),
                  ),
                  //
                  //Centered Column for text and button overlay

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CONTACT',
                          style: TextStyle(
                            fontSize: 30,
                            color: AppColor.appTeal,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            '''Contact us for more detail''',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors
                                  .black, // Make sure AppColor class is defined or imported
                            ),
                          ),
                        ),
                        SizedBox(height: 60),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Aligns widgets at the start point vertically
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.call_outlined,
                            color: Colors.white,
                            size: 15,
                          ),
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: AppColor.appTeal,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, right: 5),
                          child: Text(
                            '+94 77 7 148 839',
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          width: 2,
                          height: 20,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0, left: 5),
                          child: Text(
                            '+94 77 7 148 839',
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0), // Adjusted for consistency
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.email_outlined,
                            color: Colors.white,
                            size: 15,
                          ),
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: AppColor.appTeal,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, right: 5),
                          child: Text(
                            'connect@taxperts.lk',
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                            size: 15,
                          ),
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: AppColor.appTeal,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, right: 5),
                          child: Text(
                            "Taxperts Lanka Pvt. Ltd \nNo. 101, Olcott Mawatha, Colombo 11. \nSri Lanka",
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 15.0, vertical: 25),
              child: Text(
                'MEET THE CONSULTAN',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Image.asset('images/cDamith.png', width: 150),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                'Damith Gangodawilage',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Text(
              'Founder/Chief Compliance Officer',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade700,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    child: Image.asset('images/fbIcon.png', height: 30)),
                GestureDetector(
                    child: Image.asset('images/twitIcon.png', height: 30)),
                GestureDetector(
                    child: Image.asset('images/likdinIcon.png', height: 30)),
                GestureDetector(
                    child: Image.asset('images/whatsapp.png', height: 30)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: p60),
              color: Colors.white, // Background color for the container
              child: Text(
                "Damith Gangodawilage, a prominent figure in Sri Lanka's fintech sphere and the visionary founder of Taxperts, also shines in the academic realm. As the Founder and Chief Compliance Officer of the country's pioneering company in digital tax compliance, he has steered Taxperts to revolutionize the way tax compliance for individuals, making significant strides in financial literacy and empowerment. \n\n"
                    "Beyond his professional accomplishments and recognition through prestigious awards like the eSwabhimani, NBQSA, and the National Ingenuity Award from SLASSCOM, Damith has extended his expertise into academia. His role as an educator underscores a deep commitment to nurturing future generations, blending practical industry insights with theoretical knowledge to shape well-rounded professionals. \n\n"
                    "Moreover, his leadership extends beyond his entrepreneurial ventures, having served as Vice President of the Chartered Institute of Taxation of Sri Lanka, Governing Council Member of AAT Sri Lanka, and Director and Treasurer of the Colombo Chamber of Commerce, highlights his dedication to both the financial and educational sectors, promoting economic and digital advancement in Sri Lanka.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10.0, // The font size
                  color: Colors.black, // Text color
                  height: 1.5, // Line height
                ),
              ),
            ),

            const SizedBox(
              height: 50,
            ),
            FooterMob()

          ],
        ),
      ),
    );
  }
}
