import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:ht/app/home/domain/services/home_service.dart';
import 'package:ht/app/home/views/home_page.dart';
import 'package:ht/app/home/views/home_provider.dart';
import 'package:ht/app/home2/presentation/views/home2_page.dart';
import 'package:ht/app/home2/presentation/views/home2_provider.dart';
import 'package:ht/app/login_success/domain/services/login_success_service.dart';
import 'package:ht/app/login_success/view/pages/login_success_page.dart';
import 'package:ht/app/login_success/view/providers/login_success_provider.dart';
import 'package:ht/utils/routes_utils.dart';

class AppRoutes {
  static final AppRoutes instance = AppRoutes._internal();
  AppRoutes._internal();

  String get initial => home2;

  final String home = '/home';
  final String about = '/about';
  final String loginSuccess = '/login-success';
  final String home2 = '/home2';

  late final GoRouter router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    initialLocation: initial,
    errorBuilder: (context, state) => Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: const Center(
        child: Text('404'),
      ),
    ),
    routes: <GoRoute>[
      GoRoute(
        path: home,
        builder: (context, state) => RouteUtils.createPageProvider(
          provider: (_) => HomeProvider(
            context.read<HomeService>(),
          ),
          child: const HomePage(),
        ),
      ),
      GoRoute(
        path: loginSuccess,
        builder: (context, state) => RouteUtils.createPageProvider(
          provider: (_) => LoginSuccessProvider(
            context.read<LoginSuccessService>(),
          ),
          child: const LoginSuccessPage(),
        ),
      ),
      GoRoute(
        path: home2,
        builder: (context, state) => RouteUtils.createPageProvider(
          provider: (_) => Home2Provider(),
          child: const Home2Page(),
        ),
      ),
    ],
  );
}
