import 'package:flutter/material.dart';
import 'package:whatsapp_clone/themes/colors.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        alignment: Alignment.center,
        child: Text("CAMERA", 
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30),),
      ),
    );
  }
}
