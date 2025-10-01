import 'package:flutter/material.dart';

/// Widget untuk menampilkan nomor putaran hafalan
/// Menampilkan angka besar di tengah layar dengan informasi putaran
class RoundView extends StatelessWidget {
  final int currentRound;  // Nomor putaran saat ini
  final int totalRounds;   // Total putaran dalam surah

  const RoundView({
    super.key,
    required this.currentRound,
    required this.totalRounds,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Putaran',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 24,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          '$currentRound',
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 120,
            fontWeight: FontWeight.w900,
            shadows: [
              Shadow(
                offset: const Offset(0, 0),
                blurRadius: 10,
                color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.7),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'dari $totalRounds',
          style: const TextStyle(color: Colors.white54, fontSize: 18),
        ),
      ],
    );
  }
}