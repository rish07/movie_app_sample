import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lenskart_test/home/models/movie_model.dart';
import 'package:lenskart_test/home/repository/home_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;

  HomeCubit(this.homeRepo) : super(const HomeState.initial());

  Future<void> getAllMovies() async {
    emit(const HomeState.loading());
    final movies = await homeRepo.getMovies();
    if (movies != null) {
      emit(
        HomeState.loaded(
          allMovies: movies,
        ),
      );
    } else {
      emit(const HomeState.error());
    }
  }
}
