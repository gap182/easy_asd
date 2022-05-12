import 'package:easy_asd/src/core/domain/entities/pictogram_data_entity.dart';
import 'package:easy_asd/src/core/domain/entities/pictogram_image_entity.dart';

abstract class PictogramDataRepository {
  Future<PictogramDataEntity?> getPictogramData({
    required List<String> languages,
    required int identifier,
  });
  Future<PicotramImageEntity?> getPictogramImageg({
    required int identifier,
    List<dynamic>? args,
  });
}
