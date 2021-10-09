import 'package:flutter/material.dart';
import 'package:whatsapp_clone/themes/colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        alignment: Alignment.center,
        child: Text("CONFIGURAÇÕES", 
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30),),
      ),
    );
  }
}
