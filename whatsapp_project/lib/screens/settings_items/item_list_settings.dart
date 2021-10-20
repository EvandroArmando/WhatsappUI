// ignore_for_file: camel_case_types, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listItem extends StatelessWidget {
  const listItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: avoid_unnecessary_containers
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.orange[300],
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:90),
                      child: Text("Mensagem com Estrela",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
