import 'package:easy_asd/src/core/domain/entities/pictogram_data_entity.dart';

class PictogramDataModel {
  PictogramDataModel({
    required this.schematic,
    required this.sex,
    required this.violence,
    required this.aac,
    required this.aacColor,
    required this.skin,
    required this.hair,
    required this.downloads,
    required this.categories,
    required this.synsets,
    required this.tags,
    required this.id,
    required this.created,
    required this.lastUpdated,
    required this.keywords,
    required this.desc,
  });

  final bool? schematic;
  final bool? sex;
  final bool? violence;
  final bool? aac;
  final bool? aacColor;
  final bool? skin;
  final bool? hair;
  final int? downloads;
  final List<String> categories;
  final List<String> synsets;
  final List<String> tags;
  final int id;
  final DateTime? created;
  final DateTime? lastUpdated;
  final List<Keyword> keywords;
  final String? desc;

  PictogramDataEntity toEntity() {
    List<String> keywordList = [];

    for (Keyword keyword in keywords) {
      if (keyword.keyword != null) {
        keywordList.add(keyword.keyword!);
      }
    }

    return PictogramDataEntity(
        categories: categories, tags: tags, id: id, keywords: keywordList);
  }

  factory PictogramDataModel.fromJson(Map<String, dynamic> json) {
    return PictogramDataModel(
      schematic: json["schematic"],
      sex: json["sex"],
      violence: json["violence"],
      aac: json["aac"],
      aacColor: json["aacColor"],
      skin: json["skin"],
      hair: json["hair"],
      downloads: json["downloads"],
      categories: json["categories"] == null
          ? []
          : List<String>.from(json["categories"]!.map((x) => x)),
      synsets: json["synsets"] == null
          ? []
          : List<String>.from(json["synsets"]!.map((x) => x)),
      tags: json["tags"] == null
          ? []
          : List<String>.from(json["tags"]!.map((x) => x)),
      id: json["_id"],
      created: json["created"] == null ? null : DateTime.parse(json["created"]),
      lastUpdated: json["lastUpdated"] == null
          ? null
          : DateTime.parse(json["lastUpdated"]),
      keywords: json["keywords"] == null
          ? []
          : List<Keyword>.from(
              json["keywords"]!.map((x) => Keyword.fromJson(x))),
      desc: json["desc"],
    );
  }

  @override
  String toString() {
    return '$schematic, $sex, $violence, $aac, $aacColor, $skin, $hair, $downloads, $categories, $synsets, $tags, $id, $created, $lastUpdated, $keywords, $desc';
  }

  Map<String, dynamic> toJson() => {
        "schematic": schematic,
        "sex": sex,
        "violence": violence,
        "aac": aac,
        "aacColor": aacColor,
        "skin": skin,
        "hair": hair,
        "downloads": downloads,
        "categories": List<String>.from(categories.map((x) => x)),
        "synsets": List<String>.from(synsets.map((x) => x)),
        "tags": List<String>.from(tags.map((x) => x)),
        "_id": id,
        "created": created?.toIso8601String(),
        "lastUpdated": lastUpdated?.toIso8601String(),
        "keywords": List<Keyword>.from(keywords.map((x) => x.toJson())),
        "desc": desc,
      };
}

class Keyword {
  Keyword({
    required this.keyword,
    required this.type,
    required this.meaning,
    required this.plural,
    required this.hasLocution,
  });

  final String? keyword;
  final int? type;
  final String? meaning;
  final String? plural;
  final bool? hasLocution;

  factory Keyword.fromJson(Map<String, dynamic> json) {
    return Keyword(
      keyword: json["keyword"],
      type: json["type"],
      meaning: json["meaning"],
      plural: json["plural"],
      hasLocution: json["hasLocution"],
    );
  }

  @override
  String toString() {
    return '$keyword, $type, $meaning, $plural, $hasLocution';
  }

  Map<String, dynamic> toJson() => {
        "keyword": keyword,
        "type": type,
        "meaning": meaning,
        "plural": plural,
        "hasLocution": hasLocution,
      };
}
