import 'package:flutter/material.dart';
import 'entrada.dart';
import 'entrada2.dart';

void main(){
  runApp(MaterialApp(
    title: 'passagem 1',
    theme: ThemeData(
      primarySwatch: Colors.grey
      ),
      initialRoute: "/entrada",
      routes: {
        "/entrada": (context) => const EntradaUm(),
        "/entrada2": (context) => const EntradaDois(),
      },
    ),
  );
}

