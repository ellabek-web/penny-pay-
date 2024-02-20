import 'package:flutter/material.dart';
import "config/theme.dart";
import "config/route.dart";
import 'splash.dart';


class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
   MediaQueryData mediaQueryData = MediaQuery.of(context);

    return Scaffold(
     body: Container(
      padding:EdgeInsets.fromLTRB(mediaQueryData.size.width*0.06,  mediaQueryData.size.height*0.09, mediaQueryData.size.width*0.06, 0),
       child: SingleChildScrollView(
         child: Column(
          children:[
            Container(
              alignment: Alignment.topLeft,
              child: Text("Create account",
              style:CustomTheme.headline,
              ),
            ),
       
            SizedBox(
              height: mediaQueryData.size.height*0.04, // Set the height to 50 pixels
              ),
       
       
           Form(
           key: _formKey,
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name"),
              TextFormField(
                decoration: InputDecoration(
                hintText: 'Faysal Kareem',
           ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
       
              SizedBox(
              height: mediaQueryData.size.height*0.04, // Set the height to 50 pixels
              ),
       
              Text("Email"),
              TextFormField(
                decoration: InputDecoration(
                hintText: 'faysalkareem@gmail.com',
           ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
               SizedBox(
              height: mediaQueryData.size.height*0.04, // Set the height to 50 pixels
              ),
               Text("Password"),
               TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                    ),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                  height: mediaQueryData.size.height*0.02, // Set the height to 50 pixels
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: Text("forget password")),
       
                  SizedBox(
                  height: mediaQueryData.size.height*0.04, // Set the height to 50 pixels
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: TextButton(
                    style:  CustomTheme.getButtonStyle(mediaQueryData), // Set the size here
                         
                    onPressed: () {
                       Navigator.pushNamed(context, '/conformation');
                      //Validate returns true if the form is valid, or false otherwise.
                      
                      if (_formKey.currentState!.validate()) {
                            Navigator.pushNamed(context, '/conformation');


                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   const SnackBar(content: Text('Processing Data')),
                        // );
                      }
                    },
                             
                      child: Text('Create account',
                     style: TextStyle(
                      fontWeight:FontWeight.bold,
                     )
                           ),
                          ),
                  ),
                  
            
            ],
           ),
            
            ),
            SizedBox(
                  height: mediaQueryData.size.height*0.02, // Set the height to 50 pixels
                  ),
            
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                  Text(
                 'Already a member ',
              ),
              GestureDetector(
                onTap: () {
                  // Navigate to the login page when the "login" text is tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Splash()),
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Color(0xFFEED707),
                    
                  ),
                ),
              ),
              ],),
              SizedBox(
                height: mediaQueryData.size.height*0.03, // Set the height to 50 pixels
              ),
              Container(
                    alignment: Alignment.center,
                    child: Text("Or")),
                    SizedBox(
                height: mediaQueryData.size.height*0.03, // Set the height to 50 pixels
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton.icon(
                    onPressed: () {
                      // Handle the sign-in with Google action
                    },
                    icon: Padding(
                      padding:  EdgeInsets.only(left: mediaQueryData.size.width*0.1,right: mediaQueryData.size.width*0.1),
                      child:  Image.asset(
                                'assets/Google-logo.png', // Replace with the path to the Google logo PNG file
                                width: 24, // Set the width to match the size of an icon
                                height: 24, // Set the height to match the size of an icon
                              ),
                    ), // Replace with the Google logo icon
                    label: Text('Continue with Google',
                              style: CustomTheme.body,),
                    style: CustomTheme.getButtonStyleAccounts(mediaQueryData)
                  ),
              ),
                   SizedBox(
                  height: mediaQueryData.size.height*0.02, // Set the height to 50 pixels
                  ),
                  SizedBox(
                width: double.infinity,
                child: TextButton.icon(
                    onPressed: () {
                      // Handle the sign-in with Google action
                    },
                    icon: Padding(
                      padding:  EdgeInsets.only(left: mediaQueryData.size.width*0.1,right: mediaQueryData.size.width*0.1),
                      child: Icon(Icons.facebook,
                      color: Color(0xFF4285F4),),
                    ), // Replace with the Google logo icon
                    label: Text('Continue with Facebook',
                              style: CustomTheme.body,),
                    style:  CustomTheme.getButtonStyleAccounts(mediaQueryData) // Set the text color to blue
                    ),
                  ),
                   SizedBox(
                  height: mediaQueryData.size.height*0.02, // Set the height to 50 pixels
                  ),
                  SizedBox(
                width: double.infinity,
                child: TextButton.icon(
                    onPressed: () {
                      // Handle the sign-in with Google action
                    },
                    icon: Padding(
                      padding:  EdgeInsets.only(left: mediaQueryData.size.width*0.1,right: mediaQueryData.size.width*0.1),
                      child: Icon(Icons.apple,
                      color: Colors.black,),
                    ), // Replace with the Google logo icon
                    label: Text('Continue with Apple',
                              style: CustomTheme.body,),
                    style:  CustomTheme.getButtonStyleAccounts(mediaQueryData) // Set the text color to blue
                    ),
                  ),
              
            ]
          ),
       ),
     ),
    );
  }
} 