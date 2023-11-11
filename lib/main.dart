import 'package:bookly/bloc_observer.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/app_string.dart';
import 'package:bookly/core/utils/color_manager.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/Home/data/models/repos/home_repo_impl.dart';
import 'package:bookly/features/Home/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/Home/presentation/view_model/newest_book_cubit/newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>()),
          ),
          BlocProvider(
            create: (context) => NewestBookCubit(getIt.get<HomeRepoImpl>()),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          title: AppString.appName,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: ColorManager.scaffoldBackgroundColor,
            useMaterial3: true,
          ),
        ));
  }
}
