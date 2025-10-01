# 📱 Hafalan Al-Quran App

Aplikasi mobile Flutter untuk membantu hafalan Al-Quran dengan sistem pembelajaran bertahap per potongan ayat.

## ✨ Fitur

- **Pemilihan Surah**: 4 surah tersedia (Al-Fatihah, Al-Ikhlas, Al-Falaq, An-Nas)
- **Hafalan Bertahap**: Ayat dipecah per potongan untuk memudahkan hafalan
- **Progress Tracking**: Sistem putaran untuk melacak kemajuan
- **Audio Controls**: Play/pause untuk mendengarkan bacaan
- **UI Modern**: Dark theme dengan gradient yang menarik
- **Responsive Design**: Optimized untuk berbagai ukuran layar

## 🏗️ Struktur Kode

```
lib/
├── main.dart                    # Entry point aplikasi
├── app.dart                     # Konfigurasi app & tema
├── data/
│   ├── surah_data.dart         # Data surah dan ayat
│   └── ayat_data.dart          # Data ayat Al-Ikhlas per potongan
├── screens/
│   ├── surah_selection_screen.dart  # Screen pemilihan surah
│   └── hafalan_screen.dart         # Screen hafalan utama
└── widgets/
    ├── header_section.dart     # Progress bar & instruksi
    ├── main_content.dart       # Container konten utama
    ├── round_view.dart         # Tampilan nomor putaran
    ├── ayat_view.dart          # Tampilan ayat & terjemahan
    ├── audio_controls.dart     # Kontrol play/pause
    └── footer_section.dart     # Tombol lanjutkan
```

## 🎨 Tema & Warna

- **Primary**: Merah coral (#E94560)
- **Secondary**: Orange emas (#F39C12)
- **Background**: Dark navy (#1A1A2E)
- **Cards**: Deep blue (#16213E)

## 🚀 Cara Menjalankan

```bash
# Clone repository
git clone <repository-url>

# Masuk ke folder project
cd testcode_flutter

# Install dependencies
flutter pub get

# Jalankan aplikasi
flutter run

# Build APK
flutter build apk --release
```

## 📋 Requirements

- Flutter SDK 3.35.5+
- Dart 3.9.2+
- Java 17/21 LTS
- Android SDK

## 🏛️ Arsitektur

- **Clean Architecture**: Separation of concerns dengan folder terstruktur
- **Widget Composition**: Modular widgets yang reusable
- **State Management**: StatefulWidget dengan setState
- **Data Layer**: Static data classes untuk surah dan ayat

## 🧪 Testing

```bash
# Jalankan unit tests
flutter test

# Test coverage
flutter test --coverage
```

## 📱 APK

APK release tersedia di: `build/app/outputs/flutter-apk/app-release.apk`