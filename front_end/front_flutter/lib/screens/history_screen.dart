import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Histórico de Movimentação'),
      ),
      body: const Center(
        child: Text(
          'Tela de Histórico de Movimentação',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}