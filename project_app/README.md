# 🚀 Project App - Onboarding Hafalan

Aplikasi Flutter untuk onboarding/pre-assessment sebelum memulai hafalan Al-Quran dengan 4 pertanyaan personalisasi.

## ✨ Fitur

- **Onboarding Screen**: Instruksi awal dengan karakter animasi
- **4 Pertanyaan Personalisasi**: 
  1. Pilihan mulai hafalan (Juz 1 atau Juz 30)
  2. Durasi hafalan per hari
  3. Metode hafalan yang disukai
  4. Waktu terbaik untuk hafalan
- **Progress Tracking**: Progress bar untuk setiap pertanyaan
- **Interactive UI**: Radio button selection dengan animasi
- **Completion Dialog**: Konfirmasi setelah semua pertanyaan dijawab

## 🏗️ Struktur Kode

```
lib/
├── main.dart                    # Entry point aplikasi
├── screens/
│   ├── onboarding_screen.dart   # Screen instruksi awal
│   └── question_screen.dart     # Screen pertanyaan dengan progress
└── data/
    └── question_data.dart       # Data 4 pertanyaan onboarding
```

## 🎨 Design

- **Dark Theme**: Background navy dengan aksen merah coral
- **Progress Indicator**: Linear progress bar di atas
- **Question Number**: Lingkaran dengan nomor pertanyaan
- **Interactive Options**: Radio buttons dengan hover effect
- **Responsive Layout**: Adaptif untuk berbagai ukuran layar

## 🚀 Cara Menjalankan

```bash
# Install dependencies
flutter pub get

# Jalankan aplikasi
flutter run

# Build APK
flutter build apk --release
```

## 📱 Flow Aplikasi

1. **Onboarding Screen** → Instruksi 4 pertanyaan
2. **Question 1** → Pilih mulai hafalan dari mana
3. **Question 2** → Durasi hafalan per hari
4. **Question 3** → Metode hafalan
5. **Question 4** → Waktu terbaik hafalan
6. **Completion** → Dialog konfirmasi selesai

## 🎯 Tujuan

Mengumpulkan preferensi user untuk personalisasi pengalaman hafalan Al-Quran yang optimal sesuai kebutuhan individual.