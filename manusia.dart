import 'makhluk-hidup.dart';
import 'emosi.dart';

class Manusia extends MakhlukHidup implements Emosi {
  String? _nama;
  String? _jeniskelamin;
  DateTime _tanggallahir = DateTime.now();

  Manusia(String name, String jeniskelamin) {
    this._nama = name;
    this._jeniskelamin = jeniskelamin;
  }

  Manusia.pria(String name) {
    this._nama = name;
    this._jeniskelamin = 'L';
  }

  Manusia.wanita(String name) {
    this._nama = name;
    this._jeniskelamin = 'P';
  }

  String get nama => this._nama!;

  set tanggallahir(String tanggal) {
    DateTime tanggalSekarang = DateTime.now();
    DateTime tanggallahir = DateTime.parse(tanggal);

    if (tanggallahir.isAfter(tanggalSekarang)) {
      print("Tanggal lahir tidak boleh menggunakan tanggal lewat hari ini");
    } else {
      this._tanggallahir = tanggallahir;
    }
  }

  String get tanggallahir {
    Map<int, String> namabulan = {
      DateTime.january: "Januari",
      DateTime.february: "Februari",
      DateTime.march: "Maret",
      DateTime.april: "April",
      DateTime.may: "Mei",
      DateTime.june: "Juni",
      DateTime.july: "Juli",
      DateTime.august: "Agustus",
      DateTime.september: "September",
      DateTime.october: "Oktober",
      DateTime.november: "November",
      DateTime.december: "Desember",
    };

    int tanggal = this._tanggallahir.day;
    String bulan = namabulan[this._tanggallahir.month]!;
    int tahun = this._tanggallahir.year;

    return "$tanggal $bulan $tahun";
  }

  int get usia => DateTime.now().difference(this._tanggallahir).inDays ~/ 360;

  String _panggilan() {
    if (this._jeniskelamin == 'L') {
      return this.usia >= 30 ? 'Pak' : 'Mas';
    } else {
      return this.usia >= 30 ? 'Bu' : 'Mbak';
    }
  }

  void berjalan() {
    print("${this._panggilan()} ${this._nama} sedang berjalan");
  }

  void berlari() {
    print("${this._panggilan()} ${this._nama} sedang berlari");
  }

  @override
  void berkembangbiak() {
    print("Manusia berkembang biak dengan melahirkan seorang anak");

    if (this._jeniskelamin == 'L')
      print(
        "Namun karena ${this._panggilan()} ${this._nama} adalah seorang pria, maka dia tidak dapat melahirkan",
      );
  }

  @override
  void marah() {
    print(
      "${this._panggilan()} ${this._nama} sangat menakutkan jika sedang marah",
    );
  }

  @override
  void sedih() {
    print("${this._panggilan()} ${this._nama} akan murung ketika bersedih");
  }

  @override
  void bahagia() {
    print(
      "${this._panggilan()} ${this._nama} jika sedang berbahagia maka hatinya berbunga-bunga",
    );
  }
}
