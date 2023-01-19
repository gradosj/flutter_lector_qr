import 'package:flutter/material.dart';
import 'package:lector_qr/pages/home_page.dart';

import 'package:lector_qr/pages/map_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Qa Reader',
      initialRoute: 'home',
      routes: {
        'home': (_) => HomePage(),
        'mapa': (_) => MapPage(),
      },
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.deepPurple)),
    );
  }
}
