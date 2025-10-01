import 'dart:io';

void main() {
  // Loop tak terbatas: Program akan terus berjalan sampai input valid diberikan
  while (true) {
    String? namaInput;
    String? peranInput;
    String cleanNama = '';
    String cleanPeran = '';

    print('\n=======================================');
    print('SELAMAT DATANG DI DUNIA WEREWOLF ');
    print('---------------------------------------');

    // --- Ambil Input Nama ---
    stdout.write('Masukkan Nama (atau ketik "EXIT" untuk keluar): ');
    namaInput = stdin.readLineSync();
    cleanNama = (namaInput ?? '').trim();

    // Opsi Keluar
    if (cleanNama.toUpperCase() == 'EXIT') {
      print('Terima kasih telah bermain. Sampai jumpa!');
      break;
    }

    // 1. Logika Warning: Nama harus diisi!
    if (cleanNama.isEmpty) {
      print('\nNama harus diisi!');
      continue;
    }

    // --- Ambil Input Peran ---
    stdout.write('Pilih Peranmu (Penyihir, Guard, atau Werewolf): ');
    peranInput = stdin.readLineSync();
    cleanPeran = (peranInput ?? '').trim();

    // Normalisasi Peran (Membuat input case-insensitive)
    if (cleanPeran.isNotEmpty) {
      cleanPeran =
          cleanPeran[0].toUpperCase() + cleanPeran.substring(1).toLowerCase();
    }

    // 2. Logika Warning: Pilih peranmu!
    if (cleanPeran.isEmpty) {
      print('\nHalo $cleanNama, Pilih peranmu untuk memulai game!');
      continue;
    }

    // --- Input VALID: Eksekusi Logika Peran (IF-Else) ---
    print('\n--- Hasil Game ---');
    print('Selamat datang di Dunia Werewolf, $cleanNama');

    // Pengecekan peran spesifik
    if (cleanPeran == 'Penyihir') {
      print(
        'Halo Penyihir $cleanNama, kamu dapat melihat siapa yang menjadi werewolf!',
      );
    } else if (cleanPeran == 'Guard') {
      print(
        'Halo Guard $cleanNama, kamu akan membantu melindungi temanmu dari serangan werewolf.',
      );
    } else if (cleanPeran == 'Werewolf') {
      print('Halo Werewolf $cleanNama, Kamu akan memakan mangsa setiap malam!');
    } else {
      // BLOK YANG MENANGANI PERAN TIDAK SESUAI KETENTUAN
      print('Maaf, peran "$cleanPeran" tidak valid.');
      print(
        'Silakan coba lagi dan pilih salah satu dari: Penyihir, Guard, atau Werewolf.',
      );
      continue; // Kembali ke awal loop untuk input ulang
    }

    // Pesan penutup sebelum keluar (Hanya dieksekusi jika peran VALID)
    print('---------------------------------------');
    print('*** Peran telah ditetapkan. Selamat bermain, $cleanNama! ***');
    print('---------------------------------------');

    // Keluar dari loop setelah sukses
    break;
  }
}
