import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(6, (index) {
          return GestureDetector(
            onTap: () {
              // Navegar a la página de detalles del producto
            },
            child: Card(
              child: Column(
                children: [
                  Image.network('URL_DE_LA_IMAGEN'),
                  Text('Producto $index'),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}