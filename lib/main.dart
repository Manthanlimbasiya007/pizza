import 'package:flutter/material.dart';
import 'package:pizza/screen/provider/home_provider.dart';
import 'package:pizza/screen/provider/second_provider.dart';
import 'package:pizza/view/home_screen.dart';
import 'package:pizza/view/second_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Homeprovider(),),
        ChangeNotifierProvider(create: (context) => SecondProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' :  (context) => Homescreen(),
          'second' :  (context) => secondscreen(),
        },
      ),
    ),
  );
}