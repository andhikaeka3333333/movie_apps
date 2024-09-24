import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_apps/bindings/bindings.dart';
import 'package:movie_apps/pages/dashboard_page.dart';
import 'package:movie_apps/pages/login_page.dart';

import 'component_pages/movie_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        // list semua halaman disini
        GetPage(
          name: '/',
          page: () => LoginPage(),
        ),
        GetPage(
          name: '/dashboard',
          page: () => DashboardPage(),
          binding: MyBindings()
        ),
        GetPage(name: '/movie-detail', page: () => MovieDetailPage()),
      ],
    );
  }
}
