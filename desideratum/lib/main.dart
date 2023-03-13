import 'package:desideratum/pages/choose_location.dart';
import 'package:desideratum/pages/home.dart';
import 'package:desideratum/pages/loading.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context) => Loading(),
    '/home':(context) => Home(),
    '/location':(context) => ChooseLocation(),
  },
));