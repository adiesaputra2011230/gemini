import 'package:flutter/material.dart';
import '../widgets/banner_card.dart';
import '../widgets/stat_card.dart';
import '../widgets/menu_card.dart';
import '../widgets/sidebar_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SidebarMenu(),
      appBar: AppBar(
        title: const Text("Beranda"),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner
            const BannerCard(
              title: "Selamat Datang!",
              description: "Jelajahi fitur Gemini AI yang canggih",
              icon: Icons.star,
            ),

            const SizedBox(height: 20),

            // Statistik Ringkas
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                StatCard(
                  value: "12",
                  label: "Chat Hari ini",
                  icon: Icons.chat,
                ),
                StatCard(
                  value: "5",
                  label: "Info Dibaca",
                  icon: Icons.info,
                ),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              "Menu Utama",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            // MENU LIST
            MenuCard(
              icon: Icons.smart_toy,
              title: "Gemini AI",
              color: Colors.deepPurple,
              onTap: () => Navigator.pushNamed(context, "/gemini"),
            ),
            MenuCard(
              icon: Icons.library_books,
              title: "Informasi",
              color: Colors.blue,
              onTap: () => Navigator.pushNamed(context, "/info"),
            ),
            MenuCard(
              icon: Icons.settings,
              title: "Pengaturan",
              color: Colors.green,
              onTap: () => Navigator.pushNamed(context, "/settings"), // ← FIXED
            ),
          ],
        ),
      ),
    );
  }
}
