import 'hewan.dart';
import 'kemampuan.dart';

class Singa extends Hewan implements Berlari, Berenang {
  @override
  void berkembangbiak() {
    print("Singa berkembang biak dengan melahirkan anak singa");
  }

  @override
  void bergerak() {
    print("Singa bergerak dengan keempat kakinya yang kuat");
  }

  @override
  void berlari() {
    print("Singa berlari dengan cepat untuk mengejar mangsanya");
  }

  @override
  void berenang() {
    print("Singa bisa berenang meskipun tidak terlalu suka air");
  }
}
