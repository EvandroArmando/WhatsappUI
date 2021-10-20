// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_import

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/settings_items/item_list_settings.dart';
import 'package:whatsapp_clone/screens/settings_items/items_settings.dart';
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
      body: ListView.builder(itemCount: 1,itemBuilder: 
      (context, index) {
       
        return Column(
          children: [
            Container(
              
                 child: Column(
                   // ignore: prefer_const_literals_to_create_immutables
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 20,left: 12),
                       child: Row(
                         // ignore: prefer_const_literals_to_create_immutables
                         children: [
                           Text("Definicões",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50),),
                           Divider(),
                         ],
                       ),
                     ),
                       PrimeiraParte(),
                      
                   ],
                 ),
            ),
            InkWell(
              onTap: () {
                
              },
              child: ParteFinal_list_settings())
          ],
        );
      },
      
      )
    );
  }
}
