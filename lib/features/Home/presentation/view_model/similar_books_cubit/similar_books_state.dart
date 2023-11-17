import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksLoaded extends SimilarBooksState {
  final List<BookModel> books;
  const SimilarBooksLoaded(this.books);
}

class SimilarBooksError extends SimilarBooksState {
  final String message;
  const SimilarBooksError(this.message);
}
