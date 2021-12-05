import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:movie_app/infrastructure/movie/movie_dto.dart';
import 'package:movie_app/presentation/pages/home_page.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(MovieDtoAdapter());
  await Hive.openBox<MovieDto>('nowPlayingMovies');

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}
