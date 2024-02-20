import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'config/route.dart';
import 'config/theme.dart';


class SetPassCode extends StatefulWidget {
  const SetPassCode({super.key});

  @override
  State<SetPassCode> createState() => _SetPassCodeState();
}

class _SetPassCodeState extends State<SetPassCode> {
  String enteredPin = '';
 // bool isPinVisible = false;

  /// this widget will be use for each digit
  
  
  @override
  Widget build(BuildContext context) {
     MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
     body: Container(
      
      padding:EdgeInsets.fromLTRB(mediaQueryData.size.width*0.06,  mediaQueryData.size.height*0.09, mediaQueryData.size.width*0.06, 0),
      child: Column(
        children: [
          Container(
              alignment: Alignment.topLeft,
              child: Text("Set passcode",
              style:CustomTheme.headline,
              ),
            ),

  Container(
  padding: const EdgeInsets.all(6.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(
      4,
      (index) {
        return Container(
          margin: const EdgeInsets.all(6.0),
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
            color: index < enteredPin.length ? Colors.black : Colors.transparent,
          ),
          child: Center(
            child: TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              style: const TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              maxLength: 1,
              decoration: InputDecoration(
                border: InputBorder.none,
                counterText: '',
                fillColor: Colors.black,
                filled: index < enteredPin.length,
              ),
              onChanged: (value) {
                if (value.isNotEmpty && index < 3) {
                  FocusScope.of(context).nextFocus();
                }
              },
            ),
          ),
        );
      },
    ),
  ),
)



        ]
      )
     )
    );
  }
}