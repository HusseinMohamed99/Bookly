import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/data/models/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> getNewestBooks() async {
    try {
      Map<String, dynamic> data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming');
      List<BookModel> books = [];
      for (var book in data['items']) {
        try {
          books.add(
            BookModel.fromJson(book),
          );
        } catch (e) {
          books.add(
            BookModel.fromJson(book),
          );
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> getFeaturedBooks() async {
    try {
      Map<String, dynamic> data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=programming');
      List<BookModel> books = [];
      for (var book in data['items']) {
        try {
          books.add(
            BookModel.fromJson(book),
          );
        } catch (e) {
          books.add(
            BookModel.fromJson(book),
          );
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> getSimilarBooks() async {
    try {
      Map<String, dynamic> data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&sorting=similar&q=programming');
      List<BookModel> books = [];
      for (var book in data['items']) {
        try {
          books.add(
            BookModel.fromJson(book),
          );
        } catch (e) {
          books.add(
            BookModel.fromJson(book),
          );
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
