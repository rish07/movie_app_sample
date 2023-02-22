import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:lenskart_test/home/models/movie_model.dart';

class HomeRepo {
  final dio = Dio();

  Future<List<MovieModel>?> getMovies() async {
    try {
      final response = await dio.get(
          'https://raw.githubusercontent.com/prust/wikipedia-movie-data/master/movies.json');
      if (response.statusCode == 200) {
        List<MovieModel> movies = [];
        for (var movie in jsonDecode(response.data)) {
          movies.add(MovieModel.fromJson(movie));
        }
        return movies;
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
