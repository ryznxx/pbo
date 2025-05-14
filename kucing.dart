import 'hewan.dart';
import 'emosi.dart';

class Kucing extends Hewan implements Emosi {
  String? ras;
  String? warnaBulu;

  @override
  void berkembangbiak() {
    print("Kucing berkembang biak dengan melahirkan anak kucing (kitten)");
  }

  @override
  void bergerak() {
    print(
      "Kucing bergerak dengan mengkoordinasikan keempat kakinya untuk berjalan, berlari, serta melompat",
    );
  }

  void berburu() {
    print("Kucing punya insting untuk berburu hewan lainnya");
  }

  @override
  void marah() {
    print("Kucing yang marah bulu-bulunya akan berdiri semua");
  }

  @override
  void sedih() {
    print("Kucing yang sedang bersedih biasanya akan malas makan");
  }

  @override
  void bahagia() {
    print("Kucing yang bahagia akan mengajakmu bermain bersamanya");
  }
}
