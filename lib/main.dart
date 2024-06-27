import 'package:flutter/material.dart';
import 'package:flutter_objek_wisata6/screen/berita.dart';
import 'package:flutter_objek_wisata6/screen/login_screen.dart';
import 'package:flutter_objek_wisata6/screen/team.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var debugShowCheckedModeBanner = false;
    return MaterialApp(
      title: 'Objek Wisata Riau',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: debugShowCheckedModeBanner,
      home: const LoginScreen(),
    );
  }
}