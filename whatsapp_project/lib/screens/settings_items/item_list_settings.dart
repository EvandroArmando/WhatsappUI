// ignore_for_file: camel_case_types, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listItem extends StatelessWidget {
  const listItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
        body: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.6),),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  ParteCima_settings(
                    texto: 'Mensagem com Estrela', cor_fundo_icone: Colors.orange.withOpacity(0.8), icone_Superior: Icons.star,
                  ),
                  ParteBaixo_settings(
                    cor: Colors.white38,
                    ultimoIcone: Icons.arrow_forward,
                  ),
                ],
              ),
              
            ),
            Divider(
              height:1,
            ),
            //segundo widget

            Container(
              height: 50,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.6),),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  ParteCima_settings(
                    texto: 'Dispositivos Associados', cor_fundo_icone: Colors.green.withOpacity(0.8), icone_Superior: Icons.computer,
                  ),
                  ParteBaixo_settings(
                    cor: Colors.white38,
                    ultimoIcone: Icons.arrow_forward,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),

              Container(
              height: 50,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.6),),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  ParteCima_settings(
                    texto: 'Dispositivos Associados', cor_fundo_icone: Colors.green.withOpacity(0.8), icone_Superior: Icons.computer,
                  ),
                  ParteBaixo_settings(
                    cor: Colors.white38,
                    ultimoIcone: Icons.arrow_forward,
                  )
                ],
              ),
            ),
            
                        Divider(
              height:1,
            ),
            //segundo widget

            Container(
              height: 50,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.6),),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  ParteCima_settings(
                    texto: ' Conta', cor_fundo_icone: Colors.blue.withOpacity(0.8), icone_Superior: Icons.vpn_key
                  ),
                  ParteBaixo_settings(
                    cor: Colors.white38,
                    ultimoIcone: Icons.arrow_forward,
                  )
                ],
              ),
            ),
           
           
            // terceiro widget
                        Divider(
              height:1,
            ),

            Container(
              height: 50,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.6),),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  ParteCima_settings(
                    texto: 'Conversas', cor_fundo_icone: Colors.green.withOpacity(0.8), icone_Superior: Icons.whatshot,
                  ),
                  ParteBaixo_settings(
                    cor: Colors.white38,
                    ultimoIcone: Icons.arrow_forward,
                  )
                ],
              ),
            ),
             //quarto widget

                         Divider(
              height:1,
            ),
            //segundo widget

            Container(
              height: 50,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.6),),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  ParteCima_settings(
                    texto: 'Dispositivos Associados', cor_fundo_icone: Colors.green.withOpacity(0.8), icone_Superior: Icons.computer,
                  ),
                  ParteBaixo_settings(
                    cor: Colors.white38,
                    ultimoIcone: Icons.arrow_forward,
                  )
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}

class ParteBaixo_settings extends StatelessWidget {
  final Color cor;
  final IconData ultimoIcone;
  const ParteBaixo_settings({
    Key? key,
    required this.cor,
    required this.ultimoIcone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      ultimoIcone,
      color: cor,
    );
  }
}

class ParteCima_settings extends StatelessWidget {
  final String texto;
  final IconData icone_Superior;
  final Color cor_fundo_icone;
  const ParteCima_settings({
    Key? key,
    required this.texto,
    required this.icone_Superior, required this.cor_fundo_icone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: avoid_unnecessary_containers
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: cor_fundo_icone, borderRadius: BorderRadius.circular(8)),
            child: Icon(
              icone_Superior,
              color: Colors.white,
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(left: 90),
            child: Text(
              texto,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
