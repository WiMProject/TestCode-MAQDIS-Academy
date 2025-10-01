/// Class untuk menyimpan data ayat Al-Ikhlas yang dipecah per potongan
/// Digunakan untuk sistem hafalan bertahap
class AyatData {
  /// Array ayat Al-Ikhlas yang dipecah per putaran hafalan
  /// Setiap index merepresentasikan satu putaran hafalan
  static const List<String> ayatPotongan = [
    "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ", // Putaran 1: Bismillah
    "قُلْ هُوَ اللَّهُ أَحَدٌ", // Putaran 2: Qul huwallahu ahad
    "اللَّهُ الصَّمَدُ", // Putaran 3: Allahus samad
    "لَمْ يَلِدْ وَلَمْ يُولَدْ", // Putaran 4: Lam yalid wa lam yulad
    "وَلَمْ يَكُن لَّهُ كُفُوًا أَحَدٌ", // Putaran 5: Wa lam yakun lahu kufuwan ahad
  ];

  /// Array terjemahan bahasa Indonesia untuk setiap potongan ayat
  /// Index sesuai dengan ayatPotongan
  static const List<String> ayatTerjemahan = [
    "Dengan nama Allah Yang Maha Pengasih, Maha Penyayang",
    "Katakanlah (Muhammad), \"Dia-lah Allah, Yang Maha Esa",
    "Allah tempat meminta segala sesuatu",
    "Dia tidak beranak dan tidak pula diperanakkan",
    "Dan tidak ada sesuatu yang setara dengan-Nya\"",
  ];

  /// Mengambil ayat berdasarkan nomor putaran
  /// [round] nomor putaran (1-5)
  /// Returns ayat dalam bahasa Arab
  static String getAyatByRound(int round) {
    // Validasi range putaran
    if (round > 0 && round <= ayatPotongan.length) {
      return ayatPotongan[round - 1]; // Array dimulai dari 0
    }
    return ayatPotongan[0]; // Default ke putaran pertama
  }

  /// Mengambil terjemahan berdasarkan nomor putaran
  /// [round] nomor putaran (1-5)
  /// Returns terjemahan dalam bahasa Indonesia
  static String getTerjemahanByRound(int round) {
    // Validasi range putaran
    if (round > 0 && round <= ayatTerjemahan.length) {
      return ayatTerjemahan[round - 1]; // Array dimulai dari 0
    }
    return ayatTerjemahan[0]; // Default ke putaran pertama
  }
}