import 'package:flutter/material.dart';

class CreateScheduleScreen extends StatelessWidget {
  const CreateScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar Roteiro de Produção'),
      ),
      body: const Center(
        child: Text(
          'Tela de Criar Roteiro de Produção',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}