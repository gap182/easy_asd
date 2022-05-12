import 'package:dio/dio.dart';

import 'package:easy_asd/src/core/config/config_model.dart';
import 'package:easy_asd/src/core/data/models/pictogram_data_model.dart';

class PictogramDataService {
  PictogramDataService({
    required this.dio,
    required this.configModel,
  });
  final Dio dio;
  final ConfigModel configModel;

  Future<PictogramDataModel> getData(
      {required String language, required int identifier}) async {
    try {
      final response = await dio
          .get('/pictograms/' + language + '/' + identifier.toString());
      return PictogramDataModel.fromJson(response.data);
    } on DioError catch (e) {
      throw e;
    }
  }
}
