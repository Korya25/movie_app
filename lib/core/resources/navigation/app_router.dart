import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/resources/navigation/app_routes.dart';
import 'package:movie_app/core/presentation/screens/main_screen.dart';
import 'package:movie_app/features/movie/presentation/screens/movie_screen.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    initialLocation: AppRoutes.moviesScreen,
    routes: [
      ShellRoute(
        builder: (context, state, child) => MainScreen(
          child: child,
        ),
        routes: [
          GoRoute(
            path: AppRoutes.moviesScreen,
            builder: (context, state) => MovieScreen(),
          ),
          GoRoute(
            path: AppRoutes.showsScreen,
            builder: (context, state) => Scaffold(
              body: Center(
                child: Text(
                  'Shows Screen',
                  style: TextStyle(
                    color: Color(0xffef233c),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          GoRoute(
            path: AppRoutes.searchScreen,
            builder: (context, state) => Scaffold(
              body: Center(
                child: Text(
                  'Search Screen',
                  style: TextStyle(
                    color: Color(0xffef233c),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          GoRoute(
            path: AppRoutes.watchListScreen,
            builder: (context, state) => Scaffold(
              body: Center(
                child: Text(
                  'WatchList Screen',
                  style: TextStyle(
                    color: Color(0xffef233c),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
