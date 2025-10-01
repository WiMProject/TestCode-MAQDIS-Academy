import 'package:flutter/material.dart';
import '../data/ayat_data.dart';

/// Widget untuk menampilkan teks ayat dan terjemahannya
/// Menampilkan potongan ayat sesuai putaran hafalan saat ini
class AyatView extends StatelessWidget {
  final int currentRound;  // Putaran saat ini untuk menentukan ayat yang ditampilkan

  const AyatView({super.key, required this.currentRound});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            'Putaran $currentRound - Surah Al-Ikhlas',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFFF39C12),
            ),
            textAlign: TextAlign.center,
          ),
          const Divider(color: Colors.white30, height: 20),
          Text(
            AyatData.getAyatByRound(currentRound),
            style: const TextStyle(
              fontSize: 32,
              height: 2.0,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              AyatData.getTerjemahanByRound(currentRound),
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.white70,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}