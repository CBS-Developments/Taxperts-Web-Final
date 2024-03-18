import 'package:flutter/material.dart';
import 'package:taxperts_web_final/Components/footer.dart';
import 'package:taxperts_web_final/colors.dart';

import '../Components/form_register.dart';
import '../Components/navBar.dart';

class FormDesktop extends StatefulWidget {
  const FormDesktop({super.key});

  @override
  State<FormDesktop> createState() => _FormDesktopState();
}

class _FormDesktopState extends State<FormDesktop> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  int _selectedIndex = 6;
  String? _selectedTaxType;
  String? _hasTIN;

  void _navigateTo(int index, String routeName) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pushNamed(context, routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white, // Background color
                boxShadow: [
                  BoxShadow(
                    color: Colors.black
                        .withOpacity(0.1), // Shadow color with some transparency
                    spreadRadius: 0, // Spread radius
                    blurRadius: 4, // Blur radius
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
                // If you also want to round the corners of the container
              ),
              height: 100, // Set the container height to match the AppBar height
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
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(
                'REQUEST A CALLBACK',
                style: TextStyle(
                  color: AppColor.appTeal,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Text(
                'Our team is ready and available to provide you with the necessary information to get started.'),
            Text(
                'Please fill out the form below, and we will get back to you promptly.'),
            SizedBox(height: 20.0),
            Row(
              children: [
                Expanded(
                  child: CustomFormField(
                    label: 'Type of taxes:  ',
                    child: DropdownButtonFormField(
                      value: _selectedTaxType,
                      items: [
                        'Individual Income Tax (IIT)',
                        'Corporate Income Tax (CIT)',
                        'Partnership Income Tax (PIT) ',
                        'Value Added Tax (VAT)',
                        'Advance Personal Income Tax (APIT)',
                        'Advance Income Tax (AIT)',
                        'Capital Gain Tax (CGT)',
                        'Simplified Value Added Tax (SVAT)',
                        'Stamp Duty (SD)',
                        'Other Taxes ',
                        'Transfer Pricing',
                        'International Double Taxation',
                        'Expat Taxation',
                        'Tax Advisory Services',
                        'Return Compliance',
                        'Social Security Contribution Levy (SSCL)',
                        'With Holding Tax (WHT)'
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedTaxType = value;
                        });
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: CustomFormField(
                    label: 'Name: ',
                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Expanded(
                  child: CustomFormField(
                    label: 'Email: ',
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: CustomFormField(
                    label: 'Phone Number: ',
                    child: TextField(
                      controller: _phoneController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2, // Adjust flex factor as necessary to allocate space
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60.0),
                        child: Text(
                          'Do you have Taxpayer Identification Number (TIN)?',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60.0),
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: 'Yes',
                              groupValue: _hasTIN,
                              onChanged: (value) {
                                setState(() {
                                  _hasTIN = value;
                                });
                              },
                            ),
                            Text('Yes'),
                            Radio(
                              value: 'No',
                              groupValue: _hasTIN,
                              onChanged: (value) {
                                setState(() {
                                  _hasTIN = value;
                                });
                              },
                            ),
                            Text('No'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: CustomFormField(
                      label: 'Message: ',
                      child: TextField(
                        controller: _messageController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                        keyboardType: TextInputType.multiline,
                        minLines: 3, // Adjust as necessary for the desired height
                        maxLines: 5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 15),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(150, 40), // Set the width and height
                  primary:
                      AppColor.appOrange, // Set the background color to green
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        30), // Set the border radius
                  ),
                ),
              ),
            ),

            SizedBox(height: 90.0),

            Footer()
          ],
        ),
      ),
    );
  }
}
