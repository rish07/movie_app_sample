part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();
  const factory HomeState.initial() = Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.loaded({
    required List<MovieModel>? allMovies,
  }) = Loaded;
  const factory HomeState.error({String? errorReason}) = Error;

  bool get isInitial => this is Initial;
  bool get isLoading => this is Loading;
  bool get isLoaded => this is Loaded;
  bool get isError => this is Error;

  List<MovieModel>? get allMovies => maybeWhen(
        orElse: () => null,
        loaded: (List<MovieModel>? allMovies) => allMovies,
      );
}
