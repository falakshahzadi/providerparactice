// ignore_for_file: deprecated_member_use

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerparactice/HomeScreen.dart';
import 'ItemAddNotifier.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return ItemAddNotifier();
      },
      child: MaterialApp(
       debugShowCheckedModeBanner: false,
       home:  HomeScreen(),
         
      ),
  
     
    );
  }
}







