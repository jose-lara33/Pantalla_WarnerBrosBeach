import 'package:flutter/material.dart';
import 'package:warnesbros/config/router/AppRouter.dart';
import 'package:warnesbros/screens/HomeScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parque Warner Beach',
      theme: ThemeData(primarySwatch: Colors.yellow),
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: AppRouter.home,
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });

    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(color: Colors.yellow),
      ),
    );
  }
}
