// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Meu Status"),
          subtitle: Text("Toque para atualizar seu status"),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1674574124349-0928f4b2bce3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80",
            ),
          ),
        ),
        ListTile(
          title: Text("Atualizações recentes"),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green,
          ),
          title: Row(
            children: [
              Text(
                "WhatsApp ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 61, 93, 62),
                ),
              ),
              Icon(
                Icons.verified,
                size: 18,
                color: Colors.green,
              ),
            ],
          ),
          onTap: () {},
        ),
        ListTile(
          onTap: () {
            print("A conversa foi clicada");
          },
          subtitle: Text("Há 3 minutos"),
          title: Text("Ciclaninho da Silva"),
          leading: CircleAvatar(
            child: Text("CS"),
          ),
        ),
        ListTile(
          subtitle: Text("Ontem às 20:07"),
          title: Text("Maria Beltrão"),
          leading: CircleAvatar(
            child: Text("MB"),
          ),
        ),
      ],
    );
  }
}
