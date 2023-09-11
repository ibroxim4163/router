import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:routes/src/provider/counter_provider.dart';

import 'pages/main_page.dart';
import 'pages/minus_page.dart';
import 'pages/plus_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CounterProvider(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: _router.routerDelegate,
        routeInformationParser: _router.routeInformationParser,
        routeInformationProvider: _router.routeInformationProvider,
      ),
    );
  }
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      routes: [
        GoRoute(
          path: "plus",
          builder: (context, state) => const PlusPage(),
        ),
        GoRoute(
          path: "minus",
          builder: (context, state) => const MinusPage(),
        ),
      ],
      builder: (context, state) => const MainPage(),
    )
  ],
);
