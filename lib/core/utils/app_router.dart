import 'package:booklyapp/data/presentation/views/widgets/book_details_view.dart';
import 'package:booklyapp/data/presentation/views/widgets/book_details_view_body.dart';
import 'package:booklyapp/data/presentation/views/widgets/home_view.dart';
import 'package:booklyapp/features/Splash/presentation/views/splash_view.dart';
import 'package:booklyapp/features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static const KHomeView = '/homeView';
  static const kBookDetailsview = '/BookDetailsview';
  static const ksearchview = '/Searchview';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: ksearchview,
        builder: (context, state) => const Searchview(),
      ),
      GoRoute(
        path: KHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsview,
        builder: (context, state) => const BookDetailsview(),
      ),
    ],
  );
}
