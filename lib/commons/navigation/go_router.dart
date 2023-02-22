import 'package:go_router/go_router.dart';
import 'package:lenskart_test/commons/navigation/router.dart';
import 'package:lenskart_test/detail/detail_page.dart';
import 'package:lenskart_test/home/home_page.dart';
import 'package:lenskart_test/home/models/movie_model.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: RouteNames.home,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: RouteNames.detail,
      builder: (context, state) => DetailPage(
        movie: state.extra as MovieModel,
      ),
    ),
  ],
);
