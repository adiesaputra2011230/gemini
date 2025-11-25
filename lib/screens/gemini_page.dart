import 'package:flutter/material.dart';
import '../services/gemini_service.dart';
import '../widgets/gemini_card.dart';
import '../widgets/sidebar_menu.dart'; // ← WAJIB ADA

class GeminiPage extends StatefulWidget {
  const GeminiPage({super.key});

  @override
  State<GeminiPage> createState() => _GeminiPageState();
}

class _GeminiPageState extends State<GeminiPage> {
  final TextEditingController promptController = TextEditingController();
  final GeminiService geminiService = GeminiService();
  String result = "";

  void sendPrompt() async {
    final output = await geminiService.askGemini(promptController.text);
    setState(() {
      result = output;
    });
    promptController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tanya Gemini')),
      drawer: const SidebarMenu(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: promptController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                labelText: "Tanya Gemini AI",
                fillColor: Colors.grey[200],
                filled: true,
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: sendPrompt,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text("Kirim"),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: GeminiCard(
                  title: "Jawaban Gemini AI",
                  description:
                      result.isEmpty ? "Hasil akan tampil di sini" : result,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
