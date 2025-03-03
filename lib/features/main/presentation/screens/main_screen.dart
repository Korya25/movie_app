import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/resources/constant/app_string.dart';
import 'package:movie_app/core/resources/navigation/app_routes.dart';

class MainScreen extends StatefulWidget {
  final Widget child;

  const MainScreen({super.key, required this.child});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<String> _routes = [
    AppRoutes.moviesScreen,
    AppRoutes.showsScreen,
    AppRoutes.searchScreen,
    AppRoutes.watchListScreen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie_rounded,
              size: 20,
            ),
            label: AppString.movies,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.tv_rounded,
              size: 20,
            ),
            label: AppString.shows,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              size: 20,
              Icons.search_rounded,
            ),
            label: AppString.search,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              size: 20,
              Icons.bookmark_rounded,
            ),
            label: AppString.watchList,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          context.go(_routes[index]);
        },
      ),
    );
  }
}
