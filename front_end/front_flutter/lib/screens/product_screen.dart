import 'package:flutter/material.dart';
import 'edit_product_screen.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Lista de produtos (dados fictícios para teste)
    final List<Map<String, dynamic>> products = [
      {
        'name': 'Farinha de Trigo',
        'currentQuantity': 20,
        'maxQuantity': 200,
        'expirationDate': '06/2026',
        'unitValue': 10.0
      },
      {
        'name': 'Açúcar',
        'currentQuantity': 50,
        'maxQuantity': 500,
        'expirationDate': '12/2025',
        'unitValue': 5.0
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Produtos do Estoque'),
        backgroundColor: const Color(0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Produtos do Estoque',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF333333),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Card(
                      child: ListTile(
                        title: Text(product['name']),
                        subtitle: Text(
                            'Quantidade Atual: ${product['currentQuantity']}'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.edit, color: Colors.blue),
                              onPressed: () {
                                // Navegar para a tela de edição
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => EditProductScreen(
                                      productName: product['name'],
                                      currentQuantity: product['currentQuantity'],
                                      maxQuantity: product['maxQuantity'],
                                      expirationDate: product['expirationDate'],
                                      unitValue: product['unitValue'],
                                    ),
                                  ),
                                );
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete, color: Colors.red),
                              onPressed: () {
                                // Lógica para excluir o produto
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}