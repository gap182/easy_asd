import 'package:easy_asd/src/core/domain/entities/pictogram_data_entity.dart';
import 'package:easy_asd/src/core/domain/entities/pictogram_image_entity.dart';

class PictogramEntity {
  PictogramEntity({
    required this.pictogramDataEntity,
    required this.picotramImageEntity,
  });
  final PictogramDataEntity pictogramDataEntity;
  final PicotramImageEntity picotramImageEntity;
}
