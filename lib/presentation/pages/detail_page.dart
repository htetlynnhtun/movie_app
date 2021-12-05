import 'package:flutter/material.dart';
import 'package:movie_app/domain/movie.dart';

class DetailPage extends StatelessWidget {
  final Movie movie;
  const DetailPage({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail page'),
      ),
      body: Text(movie.title),
    );
  }
}
