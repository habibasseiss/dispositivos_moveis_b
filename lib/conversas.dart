// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Conversas extends StatelessWidget {
  const Conversas({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          subtitle: Text("Oi, tudo bem?"),
          title: Text("Fulaninho"),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1682356828551-96826d14382b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
            ),
          ),
          trailing: Column(
            children: [
              Text(
                "11:34",
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 6),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 12,
                child: Text(
                  "2",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        ListTile(
          onTap: () {
            print("A conversa foi clicada");
          },
          subtitle: Row(
            children: [
              Icon(
                Icons.done_all,
                size: 16,
                color: Colors.blue,
              ),
              SizedBox(width: 4),
              Text("Eaee?"),
            ],
          ),
          title: Text("Ciclaninho da Silva"),
          leading: CircleAvatar(
            child: Text("CS"),
          ),
          trailing: Text("09:01"),
        ),
        ListTile(
          subtitle: Text("Oi... 😍"),
          title: Text("Maria Beltrão"),
          leading: CircleAvatar(
            child: Text("MB"),
          ),
          trailing: Text("09:01"),
        ),
      ],
    );
  }
}
