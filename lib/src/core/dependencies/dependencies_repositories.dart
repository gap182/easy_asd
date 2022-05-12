part of 'dependencies.dart';

final pictogramDataRepositoryPod = Provider<PictogramDataRepository>(
  (ref) => PictogramDataRepositoryImpl(
    service: ref.watch(pictogramServicePod),
  ),
);
