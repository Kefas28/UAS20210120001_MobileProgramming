import 'package:flutter/material.dart';
import 'package:uas_mobileprogramming_tise_20210120001/routes/routes.dart';
import 'package:uas_mobileprogramming_tise_20210120001/aplikasi/isi_berita.dart';
import 'package:uas_mobileprogramming_tise_20210120001/aplikasi/profil.dart';
import 'package:uas_mobileprogramming_tise_20210120001/aplikasi/berita.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}



