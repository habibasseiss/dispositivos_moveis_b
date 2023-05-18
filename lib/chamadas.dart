// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Chamadas extends StatelessWidget {
  const Chamadas({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          isThreeLine: true,
          leading: CircleAvatar(
            backgroundColor: Colors.green,
          ),
          title: Text("Criar link de chamada"),
          subtitle: Text("Compartilhe um link para sua chamada do WhatsApp"),
        ),
        ListTile(
          title: Text("Recentes"),
        ),
        ListTile(
          leading: CircleAvatar(),
          title: Text("Fulaninho"),
          subtitle: Row(
            children: [
              Icon(
                Icons.call_received,
                color: Colors.red,
                size: 18,
              ),
              Text("Hoje, 35 minutos atrás")
            ],
          ),
          trailing: Icon(Icons.phone, color: Colors.green),
        ),
      ],
    );
  }
}
