import 'package:go_router/go_router.dart';
import 'package:habit_sync/features/presentation/views/onboarding_view.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      // TODO: Setup default route later
      builder: (context, state) => OnboardingView(),
    ),
  ],
);
