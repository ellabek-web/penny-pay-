import 'package:flutter/material.dart';
import "config/theme.dart";

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
   backgroundColor:Color(0xFF04171B),
   body:Column(
    children: [
      SizedBox(
           height: mediaQueryData.size.height*0.15, // Set the height to 50 pixels
           ),
      Center(
        child: Container(
          child: Text(
              "penny pay",
              style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontWeight:FontWeight.bold,
              fontSize: 20
            ),
            ),
        ),
      ),
      SizedBox(
           height: mediaQueryData.size.height*0.05, // Set the height to 50 pixels
           ),
       Image.asset('assets/image1.png'),
       Center(
        child: Container(
          margin:EdgeInsets.only(top:mediaQueryData.size.height*0.02, ),
          child: Text(
              "penny pay can be used to transfer \n money to anywhere in the world",
              style: TextStyle(
              color: Color(0xFFFFFFFF),
            ),
            ),
        ),
      ),
      SizedBox(
            height: mediaQueryData.size.height*0.2, // Set the height to 50 pixels
            ),

      TextButton(

        // style: ButtonStyle(
        //   backgroundColor:MaterialStateProperty.all<Color>(Color(0xFFEED707)),
        //   foregroundColor: MaterialStateProperty.all<Color>(Color(0xFF04171B)),
        //   padding:EdgeInsets.only(top:mediaQueryData.size.height*0.02, ),
        // ),
           style:  CustomTheme.getButtonStyle(mediaQueryData), // Set the size here
  
        onPressed: () 
        { 
           Navigator.pushNamed(context, '/create');
        },
        child: Text('Get Started',
               style: TextStyle(
                fontWeight:FontWeight.bold,
               )
                     ),
   ),

    
      ],
   ) ,
    );
  }
}