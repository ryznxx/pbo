import 'makhluk-hidup.dart';

abstract class Hewan extends MakhlukHidup {
  void bergerak();

  void terbang() {}

  void berenang() {}

  void menyelam() {}

  void memanjat() {}

  void berlari() {} // abstract method
}
