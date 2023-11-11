import 'package:bookly/features/Home/data/models/repos/home_repo.dart';
import 'package:bookly/features/Home/presentation/view_model/featured_books_cubit/featured_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  static FeaturedBooksCubit get(context) => BlocProvider.of(context);
  final HomeRepo homeRepo;

  Future<void> getFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.getFeaturedBooks();
    result.fold(
      (failure) {
        emit(FeaturedBooksError(failure.message));
      },
      (books) {
        emit(FeaturedBooksLoaded(books));
      },
    );
  }
}
