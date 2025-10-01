import 'package:flutter/material.dart';

/// Widget untuk bagian footer dengan tombol "LANJUTKAN"
/// Memungkinkan user untuk melanjutkan ke putaran berikutnya
class FooterSection extends StatelessWidget {
  final double screenWidth;           // Lebar layar untuk responsive button
  final VoidCallback onNextRound;     // Callback untuk lanjut ke putaran berikutnya

  const FooterSection({
    super.key,
    required this.screenWidth,
    required this.onNextRound,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF16213E).withValues(alpha: 0.9),
        border: const Border(top: BorderSide(color: Colors.white10)),
      ),
      child: ElevatedButton(
        onPressed: onNextRound,
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          minimumSize: Size(screenWidth - 32, 50),
          elevation: 5,
        ),
        child: const Text(
          'LANJUTKAN',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
      ),
    );
  }
}