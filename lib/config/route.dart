import 'package:flutter/material.dart';
import '../splash.dart';
import '../createAccount.dart';
import '../conformation.dart';
import '../importContact.dart';
import '../setPasscode.dart';

Map<String, WidgetBuilder> routes = {
  '/': (context) => Splash(),
  '/create':(context)=>CreateAccount(),
  '/conformation':(context) => Conformation(),
  '/importContact':(context) => ImportContact(),
  '/SetPassCode':(context) => SetPassCode()
  
};