import 'package:flutter_gemini/flutter_gemini.dart';

class GeminiService {
  final Gemini gemini = Gemini.instance;

  Future<String> askGemini(String promptText) async {
    try {
      final response = await gemini.text(promptText);

      if (response == null || response.output == null) {
        return "Tidak ada respons dari Gemini.";
      }

      return response.output!;
    } catch (e) {
      return "Error: $e";
    }
  }
}
