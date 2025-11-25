import 'package:flutter/material.dart';

class SidebarMenu extends StatelessWidget {
  const SidebarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.deepPurple),
            child: Text(
              "Menu",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Beranda"),
            onTap: () => Navigator.pushReplacementNamed(context, "/home"),
          ),
          ListTile(
            leading: const Icon(Icons.smart_toy),
            title: const Text("Gemini AI"),
            onTap: () => Navigator.pushReplacementNamed(context, "/gemini"),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Pengaturan"),
            onTap: () => Navigator.pushReplacementNamed(context, "/settings"),
          ),
        ],
      ),
    );
  }
}
