import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/login.dart';
import 'screens/menu.dart';
import 'screens/product_detail.dart';
import 'screens/profile.dart';
import 'screens/order_status.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Panadería App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/menu': (context) => const MenuPage(),
        '/product_detail': (context) => const ProductDetailPage(),
        '/profile': (context) => const ProfilePage(),
        '/order_status': (context) => const OrderStatusPage(),
      },
    );
  }
}