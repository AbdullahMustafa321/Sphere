import 'package:go_router/go_router.dart';
import 'package:sphere_book/features/auth/presentation/views/login_view.dart';
import 'package:sphere_book/features/auth/presentation/views/signup_view.dart';
import 'package:sphere_book/features/checkout/presentation/views/cart_view.dart';
import 'package:sphere_book/features/home/presentation/views/home_view.dart';
import 'package:sphere_book/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static String kHomeView='/HomeView';
  static String kLoginView='/LoginView';
  static String kSignupView='/SignupView';
  static String kCartView='/CartView';
  static String kCheckoutView='/CheckoutView';
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
        path: kLoginView,
        builder: (context, state) =>  LoginView(),
      ),
      GoRoute(
        path: kSignupView,
        builder: (context, state) =>  SignupView(),
      ),
      GoRoute(
        path: kCartView,
        builder: (context, state) =>  const CartView(),
      ),
    ],
  );
}