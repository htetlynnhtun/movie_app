import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/application/providers.dart';
import 'package:movie_app/presentation/pages/detail_page.dart';

import 'package:movie_app/presentation/widgets/movie_item.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieState = ref.watch(movieNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: movieState.when(
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        loadSuccess: (movies) => ListView.builder(
          itemCount: movies.length,
          itemBuilder: (context, index) {
            final movie = movies[index];

            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(movie: movie),
                  ),
                );
              },
              child: MovieItem(movie: movie),
            );
          },
        ),
      ),
    );
  }
}
