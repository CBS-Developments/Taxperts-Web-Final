import 'package:flutter/material.dart';
import 'package:taxperts_web_final/colors.dart';

class ServiceCard extends StatelessWidget {
  final String imagePath;
  final String serviceDescription;
  final String serviceTopic;

  const ServiceCard({
    Key? key,
    required this.imagePath,
    required this.serviceDescription, required this.serviceTopic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double p30 = screenWidth / 60;
    double p15 = screenWidth / 120;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: p30),
      width: 450,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20),
            child: Text(
              serviceTopic,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: AppColor.appTeal
              ),
            ),
          ),
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
            width: 330,
            height: 250,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 30),
            child: Text(
              serviceDescription,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceCardMob extends StatelessWidget {
  final String imagePath;
  final String serviceDescription;
  final String serviceTopic;

  const ServiceCardMob({
    Key? key,
    required this.imagePath,
    required this.serviceDescription, required this.serviceTopic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double p30 = screenWidth / 60;
    double p15 = screenWidth / 120;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: p30),
      width: 250,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
            child: Text(
              serviceTopic,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: AppColor.appTeal
              ),
            ),
          ),
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
            width: 160,
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              serviceDescription,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}