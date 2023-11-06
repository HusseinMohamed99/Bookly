import 'package:bookly/features/Home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<List<BookModel>> getFeaturedBooks();
  Future<List<BookModel>> getBestSellerBooks();
}
