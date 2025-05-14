import 'hewan.dart';
import 'kemampuan.dart';

class Elang extends Hewan implements Terbang {
  @override
  void berkembangbiak() {
    print("Elang berkembang biak dengan bertelur");
  }

  @override
  void bergerak() {
    print("Elang bergerak dengan terbang di udara");
  }

  @override
  void terbang() {
    print("Elang terbang tinggi di langit dengan sayapnya yang lebar");
  }
}
