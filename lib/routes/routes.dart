import 'package:flutter/material.dart';
import 'package:uas_mobileprogramming_tise_20210120001/aplikasi/isi_berita.dart';
import 'package:uas_mobileprogramming_tise_20210120001/aplikasi/profil.dart';
import 'package:uas_mobileprogramming_tise_20210120001/aplikasi/berita.dart';
import 'package:uas_mobileprogramming_tise_20210120001/aplikasi/beranda.dart';
import 'package:uas_mobileprogramming_tise_20210120001/aplikasi/login.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Login());
      case '/beranda':
        return MaterialPageRoute(builder: (_) => Beranda());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('KEFAS NEWS'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.red, Colors.black])),
          ),
        ),
        body: Center(child: Text('Error page')),
      );
    });
  }
}
