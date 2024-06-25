import 'package:flutter/material.dart';

class OrderStatusPage extends StatelessWidget {
  const OrderStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedido #2040'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('TU PEDIDO VA EN CAMINO', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Image.network('URL_DEL_MAPA'),
            const Text('Tiempo estimado de entrega'),
            const Text('40 Minutos', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}