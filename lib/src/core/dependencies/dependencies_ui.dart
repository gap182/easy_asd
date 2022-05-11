part of 'dependencies.dart';

final configPod = StateNotifierProvider<ConfigNotifier, ConfigModel>(
    (ref) => ConfigNotifier());

final splashPod = StateNotifierProvider<SplashNotifier, SplashState>((ref) {
  return SplashNotifier(ref);
});
