import 'package:dw_barbershop/src/barbershop_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: BarbershopApp()));
}

//Informações importantes para a prímeira aula
//https://gist.github.com/rodrigorahman/22a7d055bded90c6d9bdedb594d2b8fb

//PARA RODAR O BUILD_RUNNER: dart run build_runner watch -d