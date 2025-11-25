import 'package:flutter/material.dart';
import '../widgets/sidebar_menu.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = false;
  bool notification = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SidebarMenu(),
      appBar: AppBar(
        title: const Text("Pengaturan"),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text("Mode Gelap"),
            value: isDarkMode,
            onChanged: (val) {
              setState(() {
                isDarkMode = val;
              });
            },
          ),
          SwitchListTile(
            title: const Text("Notifikasi"),
            value: notification,
            onChanged: (val) {
              setState(() {
                notification = val;
              });
            },
          ),
          ListTile(
            leading: const Icon(Icons.delete_outline, color: Colors.red),
            title: const Text("Hapus Riwayat Chat"),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Riwayat dihapus")),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text("Tentang Aplikasi"),
            onTap: () {
              showAboutDialog(
                context: context,
                applicationName: "Gemini AI App",
                applicationVersion: "1.0.0",
                children: [
                  const Text("Copyright © 2025 by Adi Esa Putra 23552011230")
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
