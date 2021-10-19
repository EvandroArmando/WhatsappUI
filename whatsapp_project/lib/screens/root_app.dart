// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, avoid_web_libraries_in_flutter, unused_import


import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:whatsapp_clone/screens/calls_screen.dart';
import 'package:whatsapp_clone/screens/camera_screen.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';
import 'package:whatsapp_clone/screens/settings_screen.dart';
import 'package:whatsapp_clone/screens/status_screen.dart';
import 'package:whatsapp_clone/themes/colors.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Body(),
      bottomNavigationBar: Footer(),
    );
  }

  Body() {
    return IndexedStack(
      index: pageIndex,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        StatusScreen(),
        CallsScreen(),
        CameraScreen(),
        ChatScreen(),
        SettingsScreen()
      ],
    );
  }

  Widget Footer() {
    List iconItems = [
      LineIcons.circle,
      LineIcons.phoneSquare,
      LineIcons.camera,
      LineIcons.comment,
      Icons.settings
    ];

    List textItems = [
      "Estados",
      "Chamadas",
      "Camera",
      "Conversas",
      "Configurações"
    ];

    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(color: greyColor),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(textItems.length, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  pageIndex = index;
                });
              },
              child: Column(
                children: [
                  Icon(
                    iconItems[index],
                    color:
                        pageIndex == index ? primary : white.withOpacity(0.5),
                  ),
                  SizedBox(height: 5),
                  Text(
                    textItems[index],
                    style: TextStyle(
                      fontSize: 10,
                      color:
                          pageIndex == index ? primary : white.withOpacity(0.5),
                    ),
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
