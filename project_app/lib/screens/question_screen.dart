/// Screen untuk menampilkan pertanyaan onboarding
import 'package:flutter/material.dart';
import '../data/question_data.dart';

class QuestionScreen extends StatefulWidget {
  final int questionNumber;
  
  const QuestionScreen({super.key, required this.questionNumber});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  String? selectedAnswer;
  
  @override
  Widget build(BuildContext context) {
    final question = QuestionData.getQuestion(widget.questionNumber);
    final progress = widget.questionNumber / QuestionData.totalQuestions;
    
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Progress bar
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${widget.questionNumber}/${QuestionData.totalQuestions}',
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.close, color: Colors.white70),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.white30,
                    color: const Color(0xFFE94560),
                    minHeight: 4,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ],
              ),
              
              const SizedBox(height: 60),
              
              // Nomor pertanyaan dalam lingkaran
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFFE94560),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFFE94560).withValues(alpha: 0.3),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    '${widget.questionNumber}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              
              const SizedBox(height: 32),
              
              // Pertanyaan
              Text(
                question['question'],
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.3,
                ),
              ),
              
              const SizedBox(height: 40),
              
              // Opsi jawaban
              Expanded(
                child: ListView.builder(
                  itemCount: question['options'].length,
                  itemBuilder: (context, index) {
                    final option = question['options'][index];
                    final isSelected = selectedAnswer == option;
                    
                    return Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {
                            setState(() {
                              selectedAnswer = option;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: isSelected 
                                  ? const Color(0xFFE94560).withValues(alpha: 0.2)
                                  : const Color(0xFF16213E),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: isSelected 
                                    ? const Color(0xFFE94560)
                                    : Colors.white30,
                                width: isSelected ? 2 : 1,
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: isSelected 
                                          ? const Color(0xFFE94560)
                                          : Colors.white54,
                                      width: 2,
                                    ),
                                    color: isSelected 
                                        ? const Color(0xFFE94560)
                                        : Colors.transparent,
                                  ),
                                  child: isSelected
                                      ? const Icon(
                                          Icons.check,
                                          color: Colors.white,
                                          size: 16,
                                        )
                                      : null,
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Text(
                                    option,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: isSelected 
                                          ? Colors.white
                                          : Colors.white70,
                                      fontWeight: isSelected 
                                          ? FontWeight.w600
                                          : FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              
              // Tombol lanjutkan
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: selectedAnswer != null ? () => _nextQuestion() : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE94560),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: selectedAnswer != null ? 5 : 0,
                  ),
                  child: const Text(
                    'LANJUTKAN',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  void _nextQuestion() {
    if (widget.questionNumber < QuestionData.totalQuestions) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => QuestionScreen(
            questionNumber: widget.questionNumber + 1,
          ),
        ),
      );
    } else {
      // Selesai semua pertanyaan
      _showCompletionDialog();
    }
  }
  
  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF16213E),
        title: const Text(
          'Persiapan Selesai!',
          style: TextStyle(color: Colors.white),
        ),
        content: const Text(
          'Semua pertanyaan telah dijawab. Sekarang kamu siap memulai hafalan!',
          style: TextStyle(color: Colors.white70),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFE94560),
            ),
            child: const Text('Mulai Hafalan'),
          ),
        ],
      ),
    );
  }
}