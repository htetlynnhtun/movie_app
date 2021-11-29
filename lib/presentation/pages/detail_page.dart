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

    return Consumer<MovieState>(
      builder: (context, movieState, child) {
        final movie = movieState.currentMovie;
        final isAlreadyFav = movieState.isAlreadyFav(movie?.id ?? -1);

        return Scaffold(
          appBar: AppBar(
            title: const Text('Detail page'),
            actions: [
              IconButton(
                onPressed: movie == null
                    ? null
                    : () {
                        if (isAlreadyFav) {
                          movieState.deleteMovieFromFav(id);
                        } else {
                          movieState.addMovieToFav(movie);
                        }
                      },
                icon: Icon(
                  isAlreadyFav ? Icons.favorite : Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          body: movie != null ? Text(movie.title) : const CircularProgressIndicator(),
        );
      },
    );
  }
}
