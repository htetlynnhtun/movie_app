import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movie_app/data/vos/movie_vo.dart';
import 'package:movie_app/presentation/pages/home_page.dart';
import 'package:movie_app/state/movie_state.dart';
import 'package:provider/provider.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(MovieVoAdapter());
  await Hive.openBox<MovieVo>('favoriteMovies');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MovieState(),
      child: const MaterialApp(
        title: 'Material App',
        home: HomePage(),
      ),
    );
  }
}
