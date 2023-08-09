import 'package:flutter/material.dart';
import 'catatan.dart';

class DetailScreen extends StatefulWidget {
  final Note note;

  DetailScreen(this.note);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final note = widget.note;

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Hero(
                tag: note,
                child: Image.asset('assets/images/logo.png'),
              ),
              SizedBox(height: 8),
              Text(
                note.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(note.content),
            ],
          ),
        ),
      ),
    );
  }
}
