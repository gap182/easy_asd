import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'config_model.freezed.dart';
part 'config_model.g.dart';

@freezed
class ConfigModel with _$ConfigModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ConfigModel({
    String? baseUrl,
    List<String>? languages,
  }) = _ConfigModel;

  const factory ConfigModel.error(String? err) = _Error;

  factory ConfigModel.fromJson(Map<String, Object?> json) =>
      _$ConfigModelFromJson(json);
}
