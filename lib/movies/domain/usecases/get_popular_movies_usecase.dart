import 'package:dartz/dartz.dart';
import 'package:movie_clean_code/core/error/failure.dart';
import 'package:movie_clean_code/core/usecase/base_usecase.dart';
import 'package:movie_clean_code/movies/domain/entities/movie.dart';
import 'package:movie_clean_code/movies/domain/repository/base_movies_repository.dart';

class GetPopularMoviesUseCase extends BaseUseCase<List<Movie>, NoParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetPopularMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters parameters) async {
    return await baseMoviesRepository.getPopularMovies();
  }
}
