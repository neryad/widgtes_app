import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => HomeScreen(),
  ),
  GoRoute(
    path: '/buttons',
    builder: (context, state) => ButtonsScreen(),
  ),
  GoRoute(
    path: '/cards',
    builder: (context, state) => CardScreen(),
  ),
  GoRoute(
    path: '/progress',
    name: ProgressScreen.name,
    builder: (context, state) => ProgressScreen(),
  ),
  GoRoute(
    path: '/snackbar',
    name: SnackBarScreen.name,
    builder: (context, state) => SnackBarScreen(),
  ),
  GoRoute(
    path: '/animated',
    name: AnimatedScreen.name,
    builder: (context, state) => AnimatedScreen(),
  )
]);
