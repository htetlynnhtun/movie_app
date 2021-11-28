import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:movie_app/state/movie_state.dart';

class DetailPage extends StatelessWidget {
  final int id;
  const DetailPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<MovieState>(context, listen: false).getMovieDetail(id);

    return Scaffold(
      appBar: AppBar(title: const Text('Detail page')),
      body: Consumer<MovieState>(
        builder: (context, movieState, child) {
          final movie = movieState.currentMovie;
          if (movie == null) {
            return const Center(child: CircularProgressIndicator());
          }
          return Text(movie.title);
        },
      ),
    );
  }
}
