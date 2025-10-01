/// Data pertanyaan onboarding untuk personalisasi hafalan
class QuestionData {
  static const int totalQuestions = 4;
  
  /// List pertanyaan onboarding dengan opsi jawaban
  static const List<Map<String, dynamic>> questions = [
    {
      'question': 'Kamu mau mulai hafalan dari mana?',
      'options': [
        'Mulai dari depan Juz 1',
        'Mulai dari belakang Juz 30',
      ],
    },
    {
      'question': 'Berapa lama waktu hafalan per hari yang kamu inginkan?',
      'options': [
        '15-30 menit',
        '30-60 menit',
        'Lebih dari 1 jam',
      ],
    },
    {
      'question': 'Metode hafalan mana yang kamu sukai?',
      'options': [
        'Mendengar audio berulang',
        'Membaca teks berulang',
        'Kombinasi audio dan teks',
      ],
    },
    {
      'question': 'Kapan waktu terbaik untuk hafalan?',
      'options': [
        'Pagi hari (05:00-09:00)',
        'Siang hari (12:00-15:00)',
        'Malam hari (19:00-22:00)',
        'Fleksibel sesuai waktu luang',
      ],
    },
  ];
  
  /// Mengambil pertanyaan berdasarkan nomor
  /// [questionNumber] nomor pertanyaan (1-4)
  /// Returns map berisi pertanyaan dan opsi jawaban
  static Map<String, dynamic> getQuestion(int questionNumber) {
    if (questionNumber > 0 && questionNumber <= questions.length) {
      return questions[questionNumber - 1];
    }
    return questions[0]; // Default ke pertanyaan pertama
  }
  
  /// Mengambil total jumlah pertanyaan
  static int get questionCount => questions.length;
}