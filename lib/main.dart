import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart'; // ← WAJIB
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';
import 'screens/gemini_page.dart';
import 'screens/info_list_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/settings_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // 🔥 INIT GEMINI API KEY DI SINI
  Gemini.init(
    apiKey:
        "AIzaSyDROv0fBsSi1srPFS88Ag4d-z0dWMWO1bw", // ← GANTI DENGAN API KEY KAMU
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Gemini AI App",
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => const SplashScreen(),
        "/login": (context) => const LoginScreen(),
        "/register": (context) => const RegisterScreen(),
        "/home": (context) => const HomeScreen(),
        "/gemini": (context) => const GeminiPage(),
        "/info": (context) => const InfoListScreen(),
        "/settings": (context) => const SettingsScreen(),
      },
    );
  }
}
