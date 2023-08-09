import 'package:flutter/material.dart';
import 'detail_berita.dart';
import 'catatan.dart';

class Berita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KEFAS NEWS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: List_Berita(),
    );
  }
}

class List_Berita extends StatelessWidget {
  List_Berita({Key? key}) : super(key: key);

  final List<Note> _noteList = [
    Note(
      title: 'Kuliner Terenak di Kota Cirebon',
      content: '8 Masakan Wajib dicoba',
    ),
    Note(
      title: 'Batik Terbaik',
      content: 'Pilihan batik terbaik 2023',
    ),
    Note(
      title: 'Wisata Kota Cirebon',
      content: '5 Wisata terbaik Kota Cirebon',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KEFAS NEWS'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.red, Colors.white])),
        ),
      ),
      body: ListView.builder(
          itemCount: _noteList.length,
          itemBuilder: (context, index) {
            final note = _noteList[index];
            return ListTile(
              leading: Hero(
                tag: note,
                child: CircleAvatar(
                  backgroundImage: Image.asset('assets/images/logo.png').image,
                ),
              ),
              title: Text(
                _noteList[index].title,
              ),
              subtitle: Text(
                _noteList[index].content,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(_noteList[index]),
                  ),
                );
              },
            );
          }),
    );
  }
}
