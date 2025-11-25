import 'package:flutter/material.dart';
import '../widgets/sidebar_menu.dart';

class InfoListScreen extends StatelessWidget {
  const InfoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> infoList = [
      {
        'title': 'Info 1 - Tentang Aplikasi',
        'detail':
            'Aplikasi ini menggunakan Gemini AI untuk menghasilkan jawaban cerdas dan analisis cepat secara real-time.',
      },
      {
        'title': 'Info 2 - Cara Menggunakan',
        'detail':
            'Ketikkan pertanyaan pada kolom input, lalu tekan tombol Kirim untuk mendapatkan jawaban dari AI.',
      },
      {
        'title': 'Info 3 - Teknologi',
        'detail':
            'Aplikasi dibuat dengan Flutter dan API resmi Google Gemini melalui paket yang sesuai.',
      },
      {
        'title': 'Info 4 - Keamanan Data',
        'detail':
            'Pertanyaan yang Anda masukkan dikirim ke server Google Gemini melalui jalur aman dan tidak disimpan di aplikasi.',
      },
      {
        'title': 'Info 5 - Pengembangan',
        'detail':
            'Aplikasi ini terus dikembangkan untuk menghadirkan fitur baru seperti chat mode, history, dan voice input.',
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Info List')),
      drawer: const SidebarMenu(),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: infoList.length,
        itemBuilder: (context, index) {
          final item = infoList[index];
          return Card(
            color: Colors.deepPurple.shade50,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              title: Text(item['title']!),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(item['detail']!),
              ),
            ),
          );
        },
      ),
    );
  }
}
