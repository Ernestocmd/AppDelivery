import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Cristian Benavides'),
            ),
            ListTile(
              title: const Text('Mi perfil'),
              onTap: () {
                // Acción para Mi perfil
              },
            ),
            ListTile(
              title: const Text('Mis pedidos'),
              onTap: () {
                // Acción para Mis pedidos
              },
            ),
            // Más opciones de menú
          ],
        ),
      ),
      body: const Center(
        child: Text('Perfil del usuario'),
      ),
    );
  }
}