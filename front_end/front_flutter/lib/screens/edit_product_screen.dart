import 'package:flutter/material.dart';

class EditProductScreen extends StatelessWidget {
  final String productName;
  final int currentQuantity;
  final int maxQuantity;
  final String expirationDate;
  final double unitValue;

  const EditProductScreen({
    Key? key,
    required this.productName,
    required this.currentQuantity,
    required this.maxQuantity,
    required this.expirationDate,
    required this.unitValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController =
    TextEditingController(text: productName);
    final TextEditingController quantityController =
    TextEditingController(text: currentQuantity.toString());
    final TextEditingController maxQuantityController =
    TextEditingController(text: maxQuantity.toString());
    final TextEditingController expirationController =
    TextEditingController(text: expirationDate);
    final TextEditingController unitValueController =
    TextEditingController(text: unitValue.toString());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Produto'),
        backgroundColor: const Color(0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Nome'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: quantityController,
              decoration: const InputDecoration(labelText: 'Quantidade Atual'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: maxQuantityController,
              decoration: const InputDecoration(labelText: 'Quantidade MAX'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: expirationController,
              decoration: const InputDecoration(labelText: 'Data de Validade'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: unitValueController,
              decoration: const InputDecoration(labelText: 'Valor Unitário'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF004D40),

                  ),
                  child: const Text('Salvar Alterações'),
                ),
                const SizedBox(width: 16),
              ],
            ),
          ],
        ),
      ),
    );
  }
}