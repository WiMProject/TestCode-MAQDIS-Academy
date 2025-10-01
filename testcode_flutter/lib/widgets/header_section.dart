import 'package:flutter/material.dart';

/// Widget untuk bagian header aplikasi hafalan
/// Berisi progress bar, toggle view, dan instruksi
class HeaderSection extends StatelessWidget {
  final bool showAyatView;           // Status tampilan saat ini (ayat/putaran)
  final int currentRound;            // Putaran hafalan saat ini
  final int totalRounds;             // Total putaran dalam surah
  final VoidCallback onToggleView;   // Callback untuk toggle view

  const HeaderSection({
    super.key,
    required this.showAyatView,
    required this.currentRound,
    required this.totalRounds,
    required this.onToggleView,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _buildProgressSection(context),
          const SizedBox(height: 24),
          _buildInstructionSection(context),
        ],
      ),
    );
  }

  Widget _buildProgressSection(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onToggleView,
          child: Icon(
            showAyatView ? Icons.visibility_off : Icons.visibility,
            color: Colors.white70,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: LinearProgressIndicator(
            value: currentRound / totalRounds,
            backgroundColor: Colors.white30,
            color: Theme.of(context).colorScheme.primary,
            minHeight: 8,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ],
    );
  }

  Widget _buildInstructionSection(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildQuranIcon(),
        const SizedBox(width: 16),
        _buildInstructionBubble(context),
      ],
    );
  }

  Widget _buildQuranIcon() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: const Color(0xFF16213E),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white38),
      ),
      child: const Icon(
        Icons.book_outlined,
        size: 40,
        color: Color(0xFFF39C12),
      ),
    );
  }

  Widget _buildInstructionBubble(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF16213E),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Theme.of(context).colorScheme.primary),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.5),
            blurRadius: 10,
          ),
        ],
      ),
      child: Text(
        showAyatView 
            ? 'Dengarkan sambil baca ayatnya'
            : 'Dengarkan Audio untuk memulai',
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
    );
  }
}