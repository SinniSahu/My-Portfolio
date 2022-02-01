import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/coolors.dart';
import 'package:portfolio/home.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: theme.copyWith(
        primaryColor: Colors.orange,
        // accentColor: ,
        colorScheme: theme.colorScheme.copyWith(
          // primary: Colors.orange,
          secondary: Coolors.secondaryColor,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: const HomeScreen(),
    );
  }
}

//  to run use : flutter run --no-sound-null-safety


