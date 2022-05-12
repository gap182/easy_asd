import 'dart:developer';

import 'package:easy_asd/src/core/config/config_model.dart';
import 'package:easy_asd/src/core/dependencies/dependencies.dart';
import 'package:easy_asd/src/features/splash/ui/splash_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashNotifier extends StateNotifier<SplashState> {
  SplashNotifier(this.ref) : super(const SplashState.loading());

  Ref ref;

  void loadData() async {
    await Future.delayed(const Duration(seconds: 1));

    try {
      final config = await ref.read(configPod.notifier).loadData();

      loadPictograms(config);
    } catch (e) {
      state = SplashState.error(e.toString());
      log(e.toString());
    }
  }

  void loadPictograms(ConfigModel configModel) async {
    final repository = ref.read(pictogramDataRepositoryPod);

    for (var id = 1; id <= configModel.numberPictograms!; id++) {
      final response = await repository.getPictogramData(
          languages: configModel.languages!, identifier: id);
      print(response);
    }
  }
}
