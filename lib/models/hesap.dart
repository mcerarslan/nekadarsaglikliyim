import 'package:flutter/material.dart';
import 'package:sagliginihesapla/screens/bmi.dart';
import 'package:sagliginihesapla/screens/yag_orani.dart';

class Hesap {
  AssetImage image;
  String name;
  Route route;
  Hesap ({
    required this.name,
    required this.image,
    required this.route,

  });
}
List<Hesap> hesapList = [
  Hesap(
    name: "Vücut Kitle Endeksi(BMİ)",
    image: AssetImage('assets/images/vki.jpg'),
    route: MaterialPageRoute(builder: (context) => BmiScreen()),
  ),
  Hesap(
    name: "Yağ Oranı Hesaplama",
    image: AssetImage('assets/images/vki.jpg'),
    route: MaterialPageRoute(builder: (context) => YagOrani()),
  ),
];
