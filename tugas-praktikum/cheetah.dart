import 'hewan.dart';
import 'kemampuan.dart';

class Cheetah extends Hewan implements Berlari, Berenang, Memanjat {
  @override
  void berkembangbiak() {
    print("Cheetah berkembang biak dengan melahirkan anak cheetah");
  }

  @override
  void bergerak() {
    print("Cheetah bergerak dengan sangat cepat");
  }

  @override
  void berlari() {
    print("Cheetah berlari dengan kecepatan hingga 120 km/jam");
  }

  @override
  void berenang() {
    print("Cheetah bisa berenang jika diperlukan");
  }

  @override
  void memanjat() {
    print("Cheetah bisa memanjat pohon untuk mengamati sekeliling");
  }
}
