// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'face_list_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FaceListMetadata _$FaceListMetadataFromJson(Map<String, dynamic> json) {
  return FaceListMetadata(
      faceListId: json['faceListId'] as String,
      name: json['name'] as String,
      userData: json['userData'] as String);
}

Map<String, dynamic> _$FaceListMetadataToJson(FaceListMetadata instance) =>
    <String, dynamic>{
      'faceListId': instance.faceListId,
      'name': instance.name,
      'userData': instance.userData
    };
