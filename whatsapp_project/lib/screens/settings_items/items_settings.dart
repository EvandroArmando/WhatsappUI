// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class items extends StatelessWidget {
  const items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrimeiraDiv();
  }
}

class PrimeiraDiv extends StatelessWidget {
  const PrimeiraDiv({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.8)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PersonIcone(),
                        Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: QrIcon(),
                        ),

                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class QrIcon extends StatelessWidget {
  const QrIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( 
           width:26,
          decoration: BoxDecoration( 
          borderRadius: BorderRadius.circular(24),
          color: Colors.grey.withOpacity(0.3),),
          child: 
             Icon(Icons.qr_code,
             size: 20,
             color: Colors.blue,
              
             ),
             );
  }
}

class PersonIcone extends StatelessWidget {
  const PersonIcone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container( 
          margin: EdgeInsets.only(left: 40),
          width:48,
          decoration: BoxDecoration( 
          borderRadius: BorderRadius.circular(24),
         color: Colors.grey.withOpacity(0.3),),
         child: 
             Icon(Icons.person_sharp,
             size: 46,
             color: Colors.white,
              
             ),
             ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Just Do It",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
            Text("Olá! já estou no WhatsApp",style: TextStyle(color: Colors.white70,fontSize: 14),)
            ],),
         ),
          )

      ],
    );
  }
}