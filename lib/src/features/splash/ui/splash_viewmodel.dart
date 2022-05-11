import 'package:easy_asd/src/core/dependencies/dependencies.dart';
import 'package:easy_asd/src/features/splash/ui/splash_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashNotifier extends StateNotifier<SplashState> {
  SplashNotifier(this.ref) : super(const SplashState.loading());

  Ref ref;

  void loadData() async {
    final configState = await ref.read(configPod.notifier).loadData();

    configState.when(
      (baseUrl, languages) => state = const SplashState.data(),
      error: (err) {
        state = SplashState.error(err);
      },
    );
  }
}
