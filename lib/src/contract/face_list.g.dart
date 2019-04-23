// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'face_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FaceList _$FaceListFromJson(Map<String, dynamic> json) {
  return FaceList(
      persistedFaces: (json['persistedFaces'] as List)
          ?.map((e) => e == null
              ? null
              : FaceMetadata.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$FaceListToJson(FaceList instance) =>
    <String, dynamic>{'persistedFaces': instance.persistedFaces};
