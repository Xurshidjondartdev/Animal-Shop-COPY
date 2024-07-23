import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "../../feature/annaunce/presentation/pages/post_announce_page.dart";
import "../../feature/auth/presentation/pages/all_done_page.dart";
import "../../feature/auth/presentation/pages/forget_password.dart";
import "../../feature/auth/presentation/pages/login_page.dart";
import "../../feature/auth/presentation/pages/pin_code_page.dart";
import "../../feature/auth/presentation/pages/registration_page.dart";
import "../../feature/auth/presentation/pages/second_forgot_password_page.dart";
import "../../feature/auth/presentation/pages/welcome_page.dart";
import "../../feature/home/presentation/pages/katalog_page.dart";
import "../../feature/home/presentation/pages/profile_page.dart";
import "../../feature/home/presentation/pages/search_page.dart";
import "../../feature/main/presentation/pages/main_page.dart";
import "../../feature/splash/presentation/pages/splash_page.dart";
import "app_route_name.dart";

final class AppRouter {
  static GoRouter router = GoRouter(
    initialLocation: AppRouteName.splashPage,
    // debugLogDiagnostics: true,
    routes: <RouteBase>[
      GoRoute(
        name: AppRouteName.splashPage,
        path: AppRouteName.splashPage,
        builder: (BuildContext context, GoRouterState state) =>
            const SplashPage(),
      ),
      GoRoute(
        name: AppRouteName.onBoarding,
        path: AppRouteName.onBoarding,
        builder: (BuildContext context, GoRouterState state) =>
            const WelcomePage(),
      ),
      GoRoute(
        name: AppRouteName.allDonePage,
        path: AppRouteName.allDonePage,
        builder: (BuildContext context, GoRouterState state) =>
            const AllDonePage(),
      ),
      GoRoute(
        name: AppRouteName.loginPage,
        path: AppRouteName.loginPage,
        builder: (BuildContext context, GoRouterState state) =>
            const LoginPage(),
        routes: <RouteBase>[
          GoRoute(
            name: AppRouteName.signUpPage,
            path: AppRouteName.signUpPage,
            builder: (BuildContext context, GoRouterState state) =>
                const RegistrationPage(),
            routes: <RouteBase>[
              GoRoute(
                name: AppRouteName.sendCodePage,
                path: AppRouteName.sendCodePage,
                builder: (BuildContext context, GoRouterState state) =>
                    const PinCodePage(),
              ),
            ],
          ),
          GoRoute(
            path: AppRouteName.forgetPasswordPage,
            name: AppRouteName.forgetPasswordPage,
            builder: (BuildContext context, GoRouterState state) =>
                const ForgetPassword(),
            routes: <RouteBase>[
              GoRoute(
                path: AppRouteName.forgetPasswordPage2,
                name: AppRouteName.forgetPasswordPage2,
                builder: (BuildContext context, GoRouterState state) =>
                    const SecondForgotPasswordPage(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        name: AppRouteName.mainPage,
        path: AppRouteName.mainPage,
        builder: (BuildContext context, GoRouterState state) => MainPage(),
        routes: <RouteBase>[
          GoRoute(
            path: AppRouteName.postAnnouncementPage,
            name: AppRouteName.postAnnouncementPage,
            builder: (BuildContext context, GoRouterState state) =>
                const PostAnnauncePage(),
          ),
          GoRoute(
            path: AppRouteName.katalogPage,
            name: AppRouteName.katalogPage,
            builder: (BuildContext context, GoRouterState state) =>
                const KatalogPage(),
          ),
          GoRoute(
            path: AppRouteName.serchingPage,
            name: AppRouteName.serchingPage,
            builder: (BuildContext context, GoRouterState state) =>
                const SearchPage(),
          ),
          GoRoute(
            path: AppRouteName.detailPage2,
            name: AppRouteName.detailPage2,
            builder: (BuildContext context, GoRouterState state) =>
                const ProfilePage(),
          ),
        ],
      ),
    ],
  );
}
