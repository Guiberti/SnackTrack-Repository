import 'package:flutter/material.dart';

class RegisterProductScreen extends StatelessWidget {
  const RegisterProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar Produtos'),
      ),
      body: const Center(
        child: Text(
          'Página para Cadastrar Produtos',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}