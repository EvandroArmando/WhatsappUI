// ignore_for_file: prefer_const_constructors, avoid_web_libraries_in_flutter, unused_import


import 'package:flutter/material.dart';
import 'package:whatsapp_clone/themes/colors.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        alignment: Alignment.center,
        child: Text("ESTADOS", 
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30),),
      ),
    );
  }
}
