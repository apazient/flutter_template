import 'package:flutter/material.dart';
import 'package:flutter_template/app/view/app_view.dart';
import 'package:flutter_template/feacher/view/feacher_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter extends GoRouter {
  AppRouter()
    : super.routingConfig(
        initialLocation: AppRoutes.home,
        routingConfig: ValueNotifier(
          RoutingConfig(
            routes: [
              GoRoute(
                path: AppRoutes.home,
                builder: (context, state) => FeacherView(),
              ),
            ],
          ),
        ),
      );
}

class AppRoutes {
  static const home = '/';
  static const notFound = '/404';
}
