import 'package:flutter/material.dart';

class ManageProductionScreen extends StatelessWidget {
  const ManageProductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gerenciar Produção'),
      ),
      body: const Center(
        child: Text(
          'Tela de Gerenciar Produção',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}