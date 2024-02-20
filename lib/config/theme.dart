
import 'package:flutter/material.dart';
class CustomTheme {
   // MediaQueryData mediaQueryData = MediaQuery.of(context);
  static ThemeData getTheme() {
    return ThemeData(
      // Define your theme properties here
      primaryColor: Colors.blue,
      hintColor: Colors.green,
      // Add more theme properties as needed
    );
  }

  static ButtonStyle getButtonStyle(MediaQueryData mediaQueryData) {
    return TextButton.styleFrom(
      backgroundColor:Color(0xFFEED707),
            foregroundColor:Color(0xFF04171B),
            minimumSize: Size(mediaQueryData.size.width*0.7, 50),
            
      // Add more button styles as needed
    );
  }

  static ButtonStyle getButtonStyleAccounts(MediaQueryData mediaQueryData) {
    return TextButton.styleFrom(
                    alignment: Alignment.centerLeft,
                    minimumSize: Size(mediaQueryData.size.width*0.7,50),
                    backgroundColor: Color.fromARGB(255, 227, 226, 226),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                     // Set the text color to blue
                  );
  }



  static const TextStyle headline = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
    color: Color.fromARGB(255, 108, 108, 108),
  );

  static const TextStyle headline2 = TextStyle(

    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
}