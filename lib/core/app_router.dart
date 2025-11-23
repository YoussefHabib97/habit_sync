import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      // TODO: Setup default route later
      builder: (context, state) => Scaffold(),
    ),
  ],
);
