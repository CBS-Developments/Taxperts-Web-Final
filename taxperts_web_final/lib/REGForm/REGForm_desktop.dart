import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../Components/footer.dart';
import '../Components/form_register.dart';
import '../Components/navBar.dart';
import '../colors.dart';

class REGFormDesktop extends StatefulWidget {
  final String? initialTaxType;
  const REGFormDesktop({super.key, this.initialTaxType});

  @override
  State<REGFormDesktop> createState() => _REGFormDesktopState();
}

class _REGFormDesktopState extends State<REGFormDesktop> {
  int _selectedIndex = 0;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _whatsAppNumberController =
      TextEditingController();
  String? _selectedTaxType;

  @override
  void initState() {
    super.initState();
    _selectedTaxType = widget.initialTaxType;
  }

  void _navigateTo(int index, String routeName) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pushNamed(context, routeName);
  }

  @override
  Widget build(BuildContext context) {
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
                    color: Colors.black
                        .withOpacity(0.1), // Shadow color with some transparency
                    spreadRadius: 0, // Spread radius
                    blurRadius: 4, // Blur radius
                    offset: const Offset(0, 2), // changes position of shadow
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
            const Text(
                'Our team is ready and available to provide you with the necessary information to get started.'),
            const Text(
                'Please fill out the form below, and we will get back to you promptly.'),
            const SizedBox(height: 20.0),
            Row(
              children: [
                Expanded(
                  child: CustomFormField(
                    label: 'Purpose:  ',
                    child: DropdownButtonFormField(
                      value: _selectedTaxType,
                      items: [
                        'TIN Registration',
                        'VAT/SSCL Registration',
                        'VAT Registration ',
                        'SSCL Registration',
                        'Return Filling Registration',
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
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText:
                            'TIN Registration', // Alternatively, add here if it's more appropriate
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20.0),
                Expanded(
                  child: CustomFormField(
                    label: 'Name: ',
                    child: TextField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: 'Enter Name',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                Expanded(
                  // This Expanded widget is for the Email field, which we're not changing
                  flex:
                      2, // You can adjust the flex to control the size relative to the phone number fields if needed
                  child: CustomFormField(
                    label: 'Email: ',
                    child: TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: 'Enter Email',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                    width:
                        10.0), // Provides spacing between the email and phone number fields
                Expanded(
                  // Expanded widget for the Mobile Number field
                  child: Padding(
                    padding: const EdgeInsets.only(left: 65.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Mobile Number: ',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              ' *', // Space added before star for separation
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, color: Colors.red),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        InternationalPhoneNumberInput(
                          onInputChanged: (PhoneNumber number) {},
                          onInputValidated: (bool value) {},
                          selectorConfig: const SelectorConfig(
                            selectorType: PhoneInputSelectorType.DROPDOWN,
                          ),
                          ignoreBlank: false,
                          autoValidateMode: AutovalidateMode.disabled,
                          selectorTextStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 12), // Adjusted font size
                          textFieldController: _mobileNumberController,
                          formatInput: false,
                          keyboardType: const TextInputType.numberWithOptions(
                              signed: true, decimal: true),
                          inputDecoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            hintText: 'Mobile Number',
                          ),
                          spaceBetweenSelectorAndTextField: 0,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 60.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'WhatsApp Number: ',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 8),
                        InternationalPhoneNumberInput(
                          onInputChanged: (PhoneNumber number) {},
                          onInputValidated: (bool value) {},
                          selectorConfig: const SelectorConfig(
                            selectorType: PhoneInputSelectorType.DROPDOWN,
                          ),
                          ignoreBlank: false,
                          autoValidateMode: AutovalidateMode.disabled,
                          selectorTextStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 12), // Reduced font size
                          textFieldController: _whatsAppNumberController,
                          formatInput: false,
                          keyboardType: const TextInputType.numberWithOptions(
                              signed: true, decimal: true),
                          inputDecoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 10.0), // Adjust padding
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            hintText: 'WhatsApp Number',
                          ),
                          spaceBetweenSelectorAndTextField:
                              0, // Reduce space if needed
                          selectorButtonOnErrorPadding:
                              0, // Adjust padding around error icon if used
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            CustomFormField(
              label: 'Message: ',
              child: TextField(
                controller: _messageController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  hintText: 'Type here',
                ),
                keyboardType: TextInputType.multiline,
                minLines: 3, // Adjust as necessary for the desired height
                maxLines: 5,
              ),
            ),
            const SizedBox(height: 20.0),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Submit',
                  style: TextStyle(fontSize: 15),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 40), backgroundColor: AppColor.appOrange, // Set the background color to green
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(30), // Set the border radius
                  ),
                ),
              ),
            ),
            const SizedBox(height: 90.0),

            const Footer()
          ],
        ),
      ),
    );
  }
}
