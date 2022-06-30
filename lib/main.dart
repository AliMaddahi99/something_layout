import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:something_layout/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  ThemeData _buildTheme(brightness, primarySwatch) {
    var baseTheme =
        ThemeData(brightness: brightness, primarySwatch: primarySwatch);

    return baseTheme.copyWith(
      textTheme: GoogleFonts.poppinsTextTheme(baseTheme.textTheme),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Something',
      theme: _buildTheme(
        Brightness.light,
        Colors.blue,
      ),
      home: const Home(),
    );
  }
}
