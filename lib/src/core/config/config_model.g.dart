// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConfigModel _$$_ConfigModelFromJson(Map<String, dynamic> json) =>
    _$_ConfigModel(
      baseUrl: json['base_url'] as String?,
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      numberPictograms: json['number_pictograms'] as int?,
    );

Map<String, dynamic> _$$_ConfigModelToJson(_$_ConfigModel instance) =>
    <String, dynamic>{
      'base_url': instance.baseUrl,
      'languages': instance.languages,
      'number_pictograms': instance.numberPictograms,
    };
