import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class NewestBookState extends Equatable {
  const NewestBookState();

  @override
  List<Object> get props => [];
}

final class NewestBookInitial extends NewestBookState {}

class NewestBookLoading extends NewestBookState {}

class NewestBookSuccess extends NewestBookState {
  final List<BookModel> books;
  const NewestBookSuccess(this.books);
}

class NewestBookFailure extends NewestBookState {
  final String message;
  const NewestBookFailure(this.message);
}
