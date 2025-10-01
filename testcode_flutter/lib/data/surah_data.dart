/// Class untuk menyimpan data surah-surah Al-Quran
/// Menggunakan static const untuk performa optimal
class SurahData {
  /// List surah yang tersedia dalam aplikasi
  /// Setiap surah berisi: nama, nama Arab, arti, jumlah ayat, dan teks ayat
  static const List<Map<String, dynamic>> surahList = [
    {
      'name': 'Al-Fatihah',
      'arabicName': 'الفاتحة',
      'meaning': 'Pembuka',
      'verses': 7,
      'ayat': [
        'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ',
        'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ',
        'الرَّحْمَٰنِ الرَّحِيمِ',
        'مَالِكِ يَوْمِ الدِّينِ',
        'إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ',
        'اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ',
        'صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ'
      ]
    },
    {
      'name': 'Al-Ikhlas',
      'arabicName': 'الإخلاص',
      'meaning': 'Kemurnian',
      'verses': 4,
      'ayat': [
        'قُلْ هُوَ اللَّهُ أَحَدٌ',
        'اللَّهُ الصَّمَدُ',
        'لَمْ يَلِدْ وَلَمْ يُولَدْ',
        'وَلَمْ يَكُن لَّهُ كُفُوًا أَحَدٌ'
      ]
    },
    {
      'name': 'Al-Falaq',
      'arabicName': 'الفلق',
      'meaning': 'Waktu Subuh',
      'verses': 5,
      'ayat': [
        'قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ',
        'مِن شَرِّ مَا خَلَقَ',
        'وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ',
        'وَمِن شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ',
        'وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ'
      ]
    },
    {
      'name': 'An-Nas',
      'arabicName': 'الناس',
      'meaning': 'Manusia',
      'verses': 6,
      'ayat': [
        'قُلْ أَعُوذُ بِرَبِّ النَّاسِ',
        'مَلِكِ النَّاسِ',
        'إِلَٰهِ النَّاسِ',
        'مِن شَرِّ الْوَسْوَاسِ الْخَنَّاسِ',
        'الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ',
        'مِنَ الْجِنَّةِ وَالنَّاسِ'
      ]
    }
  ];
}