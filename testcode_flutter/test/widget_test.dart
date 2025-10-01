/// Unit test untuk aplikasi Hafalan Al-Quran
/// Menguji fungsionalitas dasar screen pemilihan surah
///
/// Test ini memverifikasi:
/// - Screen pemilihan surah dapat dimuat dengan benar
/// - Elemen UI utama tampil sesuai ekspektasi
/// - Data surah ditampilkan dengan format yang benar

import 'package:flutter_test/flutter_test.dart';
import 'package:testcode_flutter/app.dart';

void main() {
  /// Test utama untuk memverifikasi screen pemilihan surah
  testWidgets('Surah selection app smoke test', (WidgetTester tester) async {
    // Membangun widget aplikasi dan trigger frame rendering
    await tester.pumpWidget(const QuranHafalanApp());

    // Verifikasi bahwa screen pemilihan surah berhasil dimuat
    expect(find.text('Pilih Surah'), findsOneWidget);
    expect(find.text('Mulai hafalan Al-Quran Anda'), findsOneWidget);

    // Verifikasi bahwa card surah ditampilkan dengan data yang benar
    expect(find.text('الإخلاص'), findsOneWidget);        // Nama Arab Al-Ikhlas
    expect(find.text('Al-Ikhlas - Kemurnian'), findsOneWidget);  // Nama dan arti
    expect(find.text('4 ayat'), findsOneWidget);                 // Jumlah ayat
  });
}
