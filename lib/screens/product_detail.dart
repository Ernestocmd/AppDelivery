import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Producto'),
      ),
      body: Column(
        children: [
          Image.network('URL_DE_LA_IMAGEN'),
          const Text('Descripción del producto'),
          const Text('\$10.000.000'),
          ElevatedButton(
            onPressed: () {
              // Agregar al carrito
            },
            child: const Text('Agregar'),
          ),
        ],
      ),
    );
  }
}