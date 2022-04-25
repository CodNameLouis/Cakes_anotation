import 'dart:ui';

import 'package:flutter/material.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cakes Anotation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                    fixedSize: MaterialStateProperty.all(const Size(300, 100)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Adicionar Novo Pedido",
                    style: TextStyle(fontSize: 25), 
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
