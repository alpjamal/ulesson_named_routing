import 'package:flutter/material.dart';
import 'package:navigation/router/name_route.dart';
import 'package:navigation/screen/bloc/home/bloc/home_bloc.dart';
import 'package:navigation/screen/home_page.dart';
import 'package:navigation/screen/onboarding/onboarding_page.dart';
import 'package:navigation/screen/second/page_args/second_page_args.dart';
import 'package:navigation/screen/second/second_page.dart';
import 'package:navigation/screen/third/third_bloc.dart';
import 'package:navigation/screen/third_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

sealed class AppRoutes {
  AppRoutes._();

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(
          builder: (_) => const OnboardingPage(),
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeBloc(),
            child: const HomePage(),
          ),
        );
      case Routes.second:
        var argument = settings.arguments as SecondPageArguments;
        return MaterialPageRoute(
          builder: (_) => SecondPage(arguments: argument),
        );
      case Routes.third:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ThirdBloc(),
            child: ThirdPAge(name: settings.arguments as String),
          ),
        );
    }
    return null;
  }
}
