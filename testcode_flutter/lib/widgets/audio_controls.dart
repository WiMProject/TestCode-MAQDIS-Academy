import 'package:flutter/material.dart';

/// Widget untuk kontrol audio (play/pause) dan informasi putaran
/// Ukuran dan layout berubah berdasarkan view yang aktif
class AudioControls extends StatelessWidget {
  final bool showAyatView;                    // Status view saat ini
  final bool isPlaying;                       // Status audio play/pause
  final int currentRound;                     // Putaran hafalan saat ini
  final int totalRounds;                      // Total putaran dalam surah
  final VoidCallback onTogglePlayPause;      // Callback untuk toggle play/pause

  const AudioControls({
    super.key,
    required this.showAyatView,
    required this.isPlaying,
    required this.currentRound,
    required this.totalRounds,
    required this.onTogglePlayPause,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: showAyatView ? 8 : 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: onTogglePlayPause,
            icon: Icon(
              isPlaying ? Icons.pause_circle_filled : Icons.play_circle_filled,
              color: Theme.of(context).colorScheme.primary,
              size: showAyatView ? 48 : 80,
            ),
          ),
          if (showAyatView) ...[
            const SizedBox(width: 10),
            Text(
              '$currentRound Putaran dari $totalRounds',
              style: const TextStyle(fontSize: 18, color: Colors.white70),
            ),
          ],
        ],
      ),
    );
  }
}