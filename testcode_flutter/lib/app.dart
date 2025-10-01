// Import library Flutter dan screen utama
import 'package:flutter/material.dart';
import 'screens/surah_selection_screen.dart';

/// Widget utama aplikasi yang mengatur konfigurasi app
/// Menggunakan StatelessWidget karena tidak ada state yang berubah
class QuranHafalanApp extends StatelessWidget {
  const QuranHafalanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Judul aplikasi yang muncul di task manager
      title: 'Hafalan Al-Quran',
      
      // Konfigurasi tema aplikasi dengan dark theme
      theme: ThemeData(
        brightness: Brightness.dark, // Mode gelap
        scaffoldBackgroundColor: const Color(0xFF1A1A2E), // Background utama
        
        // Skema warna aplikasi
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFE94560),   // Merah coral untuk aksen utama
          secondary: Color(0xFFF39C12), // Orange emas untuk aksen sekunder
        ),
        
        useMaterial3: true, // Menggunakan Material Design 3
      ),
      
      // Screen pertama yang ditampilkan (pemilihan surah)
      home: const SurahSelectionScreen(),
    );
  }
}