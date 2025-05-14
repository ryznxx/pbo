import 'kemampuan.dart';
import 'singa.dart';
import 'elang.dart';
import 'ikan.dart';
import 'cheetah.dart';

void main() {
  // Daftar hewan yang tersedia
  final hewanList = [Singa(), Elang(), Ikan(), Cheetah()];

  // Simulasi pemilihan hewan oleh pengguna
  for (var hewan in hewanList) {
    print("\n=== ${hewan.runtimeType} ===");

    // Gunakan type promotion dengan if-case
    if (hewan is Terbang) {
      print("Kemampuan: Terbang");
      hewan.terbang(); // Langsung bisa akses method tanpa casting
    }

    if (hewan is Berenang) {
      print("Kemampuan: Berenang");
      hewan.berenang();
    }

    if (hewan is Menyelam) {
      print("Kemampuan: Menyelam");
      hewan.menyelam();
    }

    if (hewan is Memanjat) {
      print("Kemampuan: Memanjat");
      hewan.memanjat();
    }

    if (hewan is Berlari) {
      print("Kemampuan: Berlari");
      hewan.berlari();
    }
  }
}
