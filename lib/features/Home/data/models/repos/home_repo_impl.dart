import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/data/models/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> getBestSellerBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> getFeaturedBooks() {
    throw UnimplementedError();
  }
}
