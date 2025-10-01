// Import library Flutter dan widget components
import 'package:flutter/material.dart';
import '../widgets/header_section.dart';
import '../widgets/main_content.dart';
import '../widgets/audio_controls.dart';
import '../widgets/footer_section.dart';

/// Screen utama untuk hafalan Al-Quran
/// Menampilkan interface hafalan dengan sistem putaran
class HafalanScreen extends StatefulWidget {
  /// Data surah yang dipilih dari screen sebelumnya
  final Map<String, dynamic> selectedSurah;
  
  const HafalanScreen({super.key, required this.selectedSurah});

  @override
  State<HafalanScreen> createState() => _HafalanScreenState();
}

class _HafalanScreenState extends State<HafalanScreen> {
  // State variables untuk mengatur kondisi aplikasi
  int _currentRound = 1;        // Putaran hafalan saat ini (dimulai dari 1)
  late int _totalRounds;        // Total putaran berdasarkan jumlah ayat
  bool _isPlaying = false;      // Status audio play/pause
  bool _showAyatView = false;   // Toggle antara view putaran dan view ayat

  @override
  void initState() {
    super.initState();
    // Set total putaran berdasarkan jumlah ayat dalam surah
    _totalRounds = widget.selectedSurah['verses'];
  }

  void _toggleView() => setState(() => _showAyatView = !_showAyatView);
  void _togglePlayPause() => setState(() => _isPlaying = !_isPlaying);
  
  void _nextRound() {
    setState(() {
      if (_currentRound < _totalRounds) {
        _currentRound++;
        _showAyatView = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderSection(
              showAyatView: _showAyatView,
              currentRound: _currentRound,
              totalRounds: _totalRounds,
              onToggleView: _toggleView,
            ),
            MainContent(
              showAyatView: _showAyatView,
              currentRound: _currentRound,
              totalRounds: _totalRounds,
              screenWidth: screenWidth,
            ),
            AudioControls(
              showAyatView: _showAyatView,
              isPlaying: _isPlaying,
              currentRound: _currentRound,
              totalRounds: _totalRounds,
              onTogglePlayPause: _togglePlayPause,
            ),
            FooterSection(
              screenWidth: screenWidth,
              onNextRound: _nextRound,
            ),
          ],
        ),
      ),
    );
  }
}