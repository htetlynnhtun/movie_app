import 'package:dio/dio.dart';
import 'package:movie_app/application/movie_notifier.dart';
import 'package:movie_app/infrastructure/movie/movie_local_service_impl.dart';
import 'package:movie_app/infrastructure/movie/movie_remote_service_impl.dart';
import 'package:movie_app/infrastructure/movie/movie_repository_impl.dart';
import 'package:riverpod/riverpod.dart';

final dioProvider = Provider((ref) => Dio());

final movieRemoteServiceProvider = Provider(
  (ref) => MovieRemoteServiceImpl(ref.watch(dioProvider)),
);

final movieLocalServiceProvider = Provider(
  (ref) => MovieLocalServiceImpl(),
);

final movieRepositoryProvider = Provider(
  (ref) => MovieRepositoryImpl(
    ref.watch(movieRemoteServiceProvider),
    ref.watch(movieLocalServiceProvider),
  ),
);

final movieNotifierProvider = StateNotifierProvider<MovieNotifier, MovieState>(
  (ref) => MovieNotifier(ref.watch(movieRepositoryProvider)),
);
