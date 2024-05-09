import 'package:go_router/go_router.dart';
import 'package:sphere_book/features/home/presentation/views/book_details_view.dart';
import 'package:sphere_book/features/home/presentation/views/home_view.dart';
import 'package:sphere_book/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static String kHomeView='/HomeView';
  static String kBookDetailsView='/BookDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}