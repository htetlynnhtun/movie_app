import 'package:flutter/material.dart';
import 'package:movie_app/presentation/pages/detail_page.dart';
import 'package:provider/provider.dart';

import 'package:movie_app/state/movie_state.dart';
import 'package:movie_app/presentation/widgets/movie_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Consumer<MovieState>(
        builder: (context, movieState, child) {
          final nowPlayingMovies = movieState.nowPlayingMovies;

          if (nowPlayingMovies == null) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            itemCount: nowPlayingMovies.length,
            itemBuilder: (context, index) {
              final movie = nowPlayingMovies[index];

              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(id: movie.id),
                    ),
                  ).then((value) => movieState.clearCurrentMovie());
                },
                child: MovieItem(movie: movie),
              );
            },
          );
        },
      ),
    );
  }
}
