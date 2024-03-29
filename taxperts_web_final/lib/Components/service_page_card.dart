import 'package:flutter/material.dart';
import 'package:taxperts_web_final/colors.dart';

class ServicePageCard extends StatelessWidget {
  final String title;
  final String description;
  final double spaceHeight;


  const ServicePageCard({
    Key? key,
    required this.title,
    required this.description,
    required this.spaceHeight,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20.0,
      shadowColor: Colors.black, // You can customize the shadow color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0), // Set the border radius here
        side: BorderSide(
          color: AppColor.appLightBlue, // Set the border color here
          width: 1.0, // Set the border width here
        ),
      ),
      child: Container(
        width: 320,
        height: 280,
        padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 26,
                  color: AppColor.appTeal
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),

            SizedBox(height: spaceHeight),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    // Handle Learn More tap
                  },
                  child: Text('Learn More >>',style: TextStyle(color: AppColor.appOrange),),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}


class ServicePageCardTab extends StatelessWidget {
  final String title;
  final String description;
  final double spaceHeight;


  const ServicePageCardTab({
    Key? key,
    required this.title,
    required this.description,
    required this.spaceHeight,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20.0,
      shadowColor: Colors.black, // You can customize the shadow color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0), // Set the border radius here
        side: BorderSide(
          color: AppColor.appLightBlue, // Set the border color here
          width: 1.0, // Set the border width here
        ),
      ),
      child: Container(
        width: 300,
        height: 240,
        padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  color: AppColor.appTeal
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),

            SizedBox(height: spaceHeight),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    // Handle Learn More tap
                  },
                  child: Text('Learn More >>',style: TextStyle(color: AppColor.appOrange),),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

class ServicePageCardMob extends StatelessWidget {
  final String title;
  final String description;
  final double spaceHeight;


  const ServicePageCardMob({
    Key? key,
    required this.title,
    required this.description,
    required this.spaceHeight,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shadowColor: Colors.black, // You can customize the shadow color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0), // Set the border radius here
        side: BorderSide(
          color: AppColor.appLightBlue, // Set the border color here
          width: 1.0, // Set the border width here
        ),
      ),
      child: Container(
        width: 180,
        height: 165,
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 5),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 14,
                  color: AppColor.appTeal
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ),

            // SizedBox(height: spaceHeight),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    // Handle Learn More tap
                  },
                  child: Text('Learn More >>',style: TextStyle(fontSize:10,color: AppColor.appOrange),),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

