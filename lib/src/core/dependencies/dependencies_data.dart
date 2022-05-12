part of 'dependencies.dart';

final dioPod = Provider((ref) {
  final baseUrl = ref.watch(configPod).baseUrl;

  final options = BaseOptions(
    baseUrl: baseUrl ?? '',
  );

  return Dio(options);
});

final pictogramServicePod = Provider(
  (ref) => PictogramDataService(
    dio: ref.watch(dioPod),
    configModel: ref.watch(configPod),
  ),
);
