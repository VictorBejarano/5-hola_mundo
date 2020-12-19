import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final estiloTexto = new TextStyle(fontSize: 25);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks', style: estiloTexto),
            Text(
              '$_conteo',
              style: estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          child: Icon(
            Icons.exposure_zero,
          ),
          onPressed: () {},
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          child: Icon(
            Icons.remove,
          ),
          onPressed: () {},
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          child: Icon(
            Icons.add,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
