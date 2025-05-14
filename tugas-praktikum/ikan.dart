import 'hewan.dart';
import 'kemampuan.dart';

class Ikan extends Hewan implements Berenang, Menyelam {
  @override
  void berkembangbiak() {
    print("Ikan berkembang biak dengan bertelur");
  }

  @override
  void bergerak() {
    print("Ikan bergerak dengan berenang menggunakan siripnya");
  }

  @override
  void berenang() {
    print("Ikan berenang dengan lincah di dalam air");
  }

  @override
  void menyelam() {
    print("Ikan bisa menyelam ke dasar air dengan mudah");
  }
}
