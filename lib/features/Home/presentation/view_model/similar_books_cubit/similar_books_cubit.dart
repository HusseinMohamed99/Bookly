import 'package:bookly/features/Home/data/models/repos/home_repo.dart';
import 'package:bookly/features/Home/presentation/view_model/Similar_books_cubit/Similar_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  static SimilarBooksCubit get(context) => BlocProvider.of(context);
  final HomeRepo homeRepo;

  Future<void> getSimilarBooks() async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.getSimilarBooks();
    result.fold(
      (failure) {
        emit(SimilarBooksError(failure.message));
      },
      (books) {
        emit(SimilarBooksLoaded(books));
      },
    );
  }
}
