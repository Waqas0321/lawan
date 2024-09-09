import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCountryCodePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25), // Slightly rounded corners
        color: Colors.white, // Background color
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4, // Shadow effect
          ),
        ],
      ),
      child: CountryCodePicker(
        alignLeft: false, // Align center
        onChanged: (CountryCode countryCode) {
          // Handle changes when a country is selected
          print("Selected country code: ${countryCode.dialCode}");
        },
        // Initial country code
        initialSelection: 'US',
        flagDecoration: BoxDecoration(
          shape: BoxShape.circle, // Circular flag
        ),
        padding: EdgeInsets.zero, // Remove padding inside the picker
        textStyle: TextStyle(
          fontSize: 14, // Smaller text size to fit within the container
          color: Colors.black,
        ),
        favorite: ['+1', 'US'], // Add favorite country codes
      ),
    );
  }
}
