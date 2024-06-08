import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jump_ais/screens/chat_screen.dart';
import 'package:jump_ais/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'หลานเอง',
      theme: ThemeData(
        fontFamily: GoogleFonts.kanit().fontFamily,
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFFCFCFC),
      ),
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      routes: {
        "/home": (context) => const HomeScreen(),
        "/chat": (context) => const ChatScreen(),
      },
      initialRoute: "/home",
    );
  }
}
