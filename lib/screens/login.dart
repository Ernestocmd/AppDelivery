import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Panadería donde venden pan', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email', prefixIcon: Icon(Icons.email)),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Contraseña', prefixIcon: Icon(Icons.lock)),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                try {
                  Navigator.pushReplacementNamed(context, '/menu');
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'user-not-found') {
                    if (kDebugMode) {
                      print('No user found for that email.');
                    }
                  } else if (e.code == 'wrong-password') {
                    if (kDebugMode) {
                      print('Wrong password provided.');
                    }
                  }
                }
              },
              child: const Text('Iniciar Sesión'),
            ),
            const SizedBox(height: 20),
            const Text('o utiliza una de tus perfiles sociales'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(icon: const Icon(Icons.facebook), onPressed: () {}),
                IconButton(icon: const Icon(Icons.alternate_email), onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
