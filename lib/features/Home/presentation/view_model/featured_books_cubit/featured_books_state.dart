import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksLoaded extends FeaturedBooksState {
  final List<BookModel> books;
  const FeaturedBooksLoaded(this.books);
}

class FeaturedBooksError extends FeaturedBooksState {
  final String message;
  const FeaturedBooksError(this.message);
}
