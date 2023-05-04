// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'conversas.dart';
import 'status.dart';
import 'chamadas.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // número de abas do app
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 56, 127, 107),
          title: Text("WhatsApp do IF"),
          actions: [
            IconButton(
              onPressed: () {
                print("O botão da câmera foi clicado.");
              },
              icon: Icon(Icons.camera_alt_outlined),
            ),
            IconButton(
              onPressed: () {
                print("O botão da busca foi clicado.");
              },
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {
                print("O botão mais foi clicado.");
              },
              icon: Icon(Icons.more_vert),
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: 'Conversas'),
              Tab(text: 'Status'),
              Tab(text: 'Chamadas'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 56, 127, 107),
          onPressed: () {},
          child: Icon(Icons.chat, size: 32),
        ),
        body: TabBarView(
          children: [
            Conversas(),
            Status(),
            Chamadas(),
          ],
        ),
      ),
    );
  }
}
