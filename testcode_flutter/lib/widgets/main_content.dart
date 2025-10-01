import 'package:flutter/material.dart';
import 'round_view.dart';
import 'ayat_view.dart';

/// Widget container untuk konten utama aplikasi
/// Menampilkan RoundView atau AyatView berdasarkan state
class MainContent extends StatelessWidget {
  final bool showAyatView;    // Menentukan view mana yang ditampilkan
  final int currentRound;     // Putaran hafalan saat ini
  final int totalRounds;      // Total putaran dalam surah
  final double screenWidth;   // Lebar layar untuk responsive design

  const MainContent({
    super.key,
    required this.showAyatView,
    required this.currentRound,
    required this.totalRounds,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Center(
          child: Container(
            width: screenWidth * 0.9,
            decoration: BoxDecoration(
              color: const Color(0xFF16213E),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.15),
                  blurRadius: 20,
                  spreadRadius: 2,
                ),
              ],
            ),
            padding: const EdgeInsets.all(30),
            child: showAyatView 
                ? AyatView(currentRound: currentRound)
                : RoundView(
                    currentRound: currentRound,
                    totalRounds: totalRounds,
                  ),
          ),
        ),
      ),
    );
  }
}