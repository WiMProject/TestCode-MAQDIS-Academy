// File: looping.dart

void main() {
  // --- Looping Pertama: Menghitung Maju ---

  print('LOOPING PERTAMA');

  // Menggunakan for loop: Paling efisien dan clean untuk perulangan berbasis hitungan.
  // Inisialisasi: i = 2 (dimulai dari 2)
  // Kondisi: i <= 20 (berakhir di 20)
  // Increment: i += 2 (kenaikan 2 setiap iterasi)
  for (int i = 2; i <= 20; i += 2) {
    print('$i - I love coding');
  }

  // Tambahkan baris kosong untuk pemisah visual yang rapi
  print('');

  // --- Looping Kedua: Menghitung Mundur ---

  print('LOOPING KEDUA');

  // Menggunakan for loop: Efisien untuk hitungan mundur.
  // Inisialisasi: i = 20 (dimulai dari 20)
  // Kondisi: i >= 2 (berakhir di 2)
  // Decrement: i -= 2 (penurunan 2 setiap iterasi)
  for (int i = 20; i >= 2; i -= 2) {
    print('$i - I will become a mobile developer');
  }
}
