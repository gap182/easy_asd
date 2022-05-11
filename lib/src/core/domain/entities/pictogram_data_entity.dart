import 'dart:convert';

import 'package:equatable/equatable.dart';

class PictogramDataEntity extends Equatable {
  final List<String> categories;
  final List<String> tags;
  final int id;
  final List<String> keywords;
  PictogramDataEntity({
    required this.categories,
    required this.tags,
    required this.id,
    required this.keywords,
  });

  PictogramDataEntity copyWith({
    List<String>? categories,
    List<String>? tags,
    int? id,
    List<String>? keywords,
  }) {
    return PictogramDataEntity(
      categories: categories ?? this.categories,
      tags: tags ?? this.tags,
      id: id ?? this.id,
      keywords: keywords ?? this.keywords,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'categories': categories});
    result.addAll({'tags': tags});
    result.addAll({'id': id});
    result.addAll({'keywords': keywords});

    return result;
  }

  factory PictogramDataEntity.fromMap(Map<String, dynamic> map) {
    return PictogramDataEntity(
      categories: List<String>.from(map['categories']),
      tags: List<String>.from(map['tags']),
      id: map['id']?.toInt() ?? 0,
      keywords: List<String>.from(map['keywords']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PictogramDataEntity.fromJson(String source) =>
      PictogramDataEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PictogramDataEntity(categories: $categories, tags: $tags, id: $id, keywords: $keywords)';
  }

  @override
  List<Object> get props => [categories, tags, id, keywords];
}
