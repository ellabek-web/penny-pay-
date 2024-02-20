import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'config/route.dart';
import 'config/theme.dart';

class Conformation extends StatefulWidget {
  const Conformation({super.key});

  @override
  State<Conformation> createState() => _ConformationState();
}

class _ConformationState extends State<Conformation> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    String digit1 = '';
    String digit2 = '';
    String digit3 = '';
    String digit4 = '';


    return  Scaffold(
      body: Container(
         padding:EdgeInsets.fromLTRB(mediaQueryData.size.width*0.06,  mediaQueryData.size.height*0.09, mediaQueryData.size.width*0.06, 0),
         child:Column(
          children: [
              Container(
              alignment: Alignment.topLeft,
              child: Text("Verify it's you",
              style:CustomTheme.headline,
              ),
            ),

             SizedBox(
              height: mediaQueryData.size.height*0.02, // Set the height to 50 pixels
              ),

            Container(
               alignment: Alignment.topLeft,
                child: RichText(
                
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'We have sent a code to ',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: 'f****gmail.com',
                      style: CustomTheme.headline2, // You can use any style you want here
                    ),
                    TextSpan(
                      text: ' .',
                      style: CustomTheme.headline2, // You can use any style you want here
                    ),
                    TextSpan(
                      text: '\nEnter the 4-digit code here',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            // Adding space between the text and the input field
              SizedBox(
              height: mediaQueryData.size.height*0.06, // Set the height to 50 pixels
              ),
   
    // Adding space between the text and the input field
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color:Color.fromARGB(255, 227, 226, 226), 
                    // border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(1),
                      ],
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        digit1 = value;
                      },
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color:Color.fromARGB(255, 227, 226, 226),
                      //border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(1),
                      ],
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        digit2 = value;
                      },
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color:Color.fromARGB(255, 227, 226, 226),
                    // border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(1),
                      ],
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        digit3 = value;
                      },
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color:Color.fromARGB(255, 227, 226, 226),
                    // border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(1),
                      ],
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        digit4 = value;
                      },
                    ),
                  ),
                ],
              ),
             SizedBox(
              height: mediaQueryData.size.height*0.04, // Set the height to 50 pixels
              ),
              GestureDetector(
                onTap: () {
                  // Navigate to the login page when the "login" text is tapped
                  
                },
                child: Text(
                  'Resend code',
                  style: TextStyle(
                    color: Color(0xFFEED707),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
              height: mediaQueryData.size.height*0.04, // Set the height to 50 pixels
              ),

              Container(
                    alignment: Alignment.center,
                    child: TextButton(
                    style:  CustomTheme.getButtonStyle(mediaQueryData), // Set the size here
                         
                    onPressed: () {
                       Navigator.pushNamed(context, '/importContact');
                      
                    },
                             
                      child: Text('Confirm',
                     style: TextStyle(
                      fontWeight:FontWeight.bold,
                     )
                           ),
                          ),
                  ),
          ],
         ) ,
      ),
    );
  }
}