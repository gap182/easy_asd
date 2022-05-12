import 'dart:developer';

import 'package:easy_asd/src/core/dependencies/dependencies.dart';
import 'package:easy_asd/src/features/splash/ui/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashPage extends StatefulHookConsumerWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    ref.read(splashPod.notifier).loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<SplashState>(
      splashPod,
      (previous, next) {
        next.when(
          data: () {
            context.go('/home');
          },
          loading: () {},
          error: (err) => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(err ?? 'UNKNOWN ERROR'),
            ),
          ),
        );
      },
    );
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
