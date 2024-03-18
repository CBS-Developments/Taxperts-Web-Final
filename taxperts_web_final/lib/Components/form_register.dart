import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String label;
  final Widget child;

  const CustomFormField({
    Key? key,
    required this.label,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min, // Keep the row size to a minimum
            children: [
              Text(
                label,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              Text(
                ' *', // Space added before star for separation
                style: TextStyle(fontWeight: FontWeight.w500, color: Colors.red),
              ),
            ],
          ),
          SizedBox(height: 8),
          child,
        ],
      ),
    );
  }
}
