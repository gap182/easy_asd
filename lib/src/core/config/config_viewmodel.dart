import 'dart:convert';

import 'package:easy_asd/src/core/config/config_model.dart';
import 'package:easy_asd/src/core/constants/constants.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConfigNotifier extends StateNotifier<ConfigModel> {
  ConfigNotifier() : super(const ConfigModel());

  Future<ConfigModel> loadData() async {
    try {
      final config = await rootBundle.loadString(Constants.jsonConfig);
      final configMap = json.decode(config);
      state = ConfigModel.fromJson(configMap);
    } catch (e) {
      print("ERROR: $e");

      throw e;
    }
    return state;
  }
}
