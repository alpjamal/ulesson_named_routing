import 'package:flutter/material.dart';
import 'package:navigation/router/name_route.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Onboarding Page'),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                Routes.home,
              );
            },
            child: const Text('skip'),
          ),
        ],
      ),
    );
  }
}
