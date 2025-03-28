import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Produtos do Estoque',
        ),
        backgroundColor: const Color(0), // Substitua pelo código da cor desejada
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
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: DataTable(
                    columnSpacing: 20.0,
                    columns: const [
                      DataColumn(label: Text('Produto')),
                      DataColumn(label: Text('Quantidade')),
                      DataColumn(label: Text('Quantidade MAX.')),
                      DataColumn(label: Text('Validade')),
                      DataColumn(label: Text('Valor UN.')),
                      DataColumn(label: Text('Valor Total')),
                      DataColumn(label: Text('Ações')),
                    ],
                    rows: [
                      DataRow(cells: [
                        const DataCell(Text('Farinha de Trigo')),
                        const DataCell(Text('20 KG')),
                        const DataCell(Text('200 KG')),
                        const DataCell(Text('04/2024')),
                        const DataCell(Text('R\$ 10,00')),
                        const DataCell(Text('R\$ 120,00')),
                        DataCell(Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.edit, color: Colors.blue),
                              onPressed: () {
                                // Lógica para editar o produto
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete, color: Colors.red),
                              onPressed: () {
                                // Lógica para excluir o produto
                              },
                            ),
                          ],
                        )),
                      ]),
                      DataRow(cells: [
                        const DataCell(Text('Farinha de Trigo')),
                        const DataCell(Text('20 KG')),
                        const DataCell(Text('200 KG')),
                        const DataCell(Text('04/2024')),
                        const DataCell(Text('R\$ 10,00')),
                        const DataCell(Text('R\$ 120,00')),
                        DataCell(Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.edit, color: Colors.blue),
                              onPressed: () {
                                // Lógica para editar o produto
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete, color: Colors.red),
                              onPressed: () {
                                // Lógica para excluir o produto
                              },
                            ),
                          ],
                        )),
                      ]),
                      DataRow(cells: [
                        const DataCell(Text('Farinha de Trigo')),
                        const DataCell(Text('20 KG')),
                        const DataCell(Text('200 KG')),
                        const DataCell(Text('04/2024')),
                        const DataCell(Text('R\$ 10,00')),
                        const DataCell(Text('R\$ 120,00')),
                        DataCell(Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.edit, color: Colors.blue),
                              onPressed: () {
                                // Lógica para editar o produto
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete, color: Colors.red),
                              onPressed: () {
                                // Lógica para excluir o produto
                              },
                            ),
                          ],
                        )),
                      ]),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}