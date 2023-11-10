import 'package:bookly/features/Home/data/models/repos/home_repo.dart';
import 'package:bookly/features/Home/presentation/view_model/newest_book_cubit/newest_book_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());
  static NewestBookCubit get(context) => BlocProvider.of(context);
  HomeRepo homeRepo;
}
