import 'package:flutter/material.dart';
import 'package:movie_app/data/vos/movie_vo.dart';

class MovieItem extends StatelessWidget {
  final MovieVo movie;
  static const imageBaseUrl = "http://image.tmdb.org/t/p/w400/";

  const MovieItem({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageBaseUrl + movie.posterPath,
              fit: BoxFit.cover,
              height: 100,
            ),
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              movie.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
