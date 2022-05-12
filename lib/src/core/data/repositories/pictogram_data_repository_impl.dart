import 'package:easy_asd/src/core/data/datasource/pictogram_data_service.dart';
import 'package:easy_asd/src/core/domain/entities/pictogram_data_entity.dart';
import 'package:easy_asd/src/core/domain/entities/pictogram_image_entity.dart';
import 'package:easy_asd/src/core/domain/repositories/pictogram_data_repository.dart';

class PictogramDataRepositoryImpl implements PictogramDataRepository {
  PictogramDataRepositoryImpl({
    required this.service,
  });

  final PictogramDataService service;

  @override
  Future<PictogramDataEntity?> getPictogramData(
      {required List<String> languages, required int identifier}) async {
    try {
      final model =
          await service.getData(language: languages[0], identifier: identifier);
      return model.toEntity();
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<PicotramImageEntity?> getPictogramImageg(
      {required int identifier, List? args}) {
    // TODO: implement getPictogramImageg
    throw UnimplementedError();
  }
}
