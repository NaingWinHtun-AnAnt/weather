import 'package:admin/home_page.dart';
import 'package:flutter/material.dart';
import 'package:ui/export_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: colorPrimary,
        ),
        canvasColor: colorGrey,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
