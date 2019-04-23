// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'face_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FaceMetadata _$FaceMetadataFromJson(Map<String, dynamic> json) {
  return FaceMetadata(
      persistedFaceId: json['persistedFaceId'] as String,
      userData: json['userData'] as String);
}

Map<String, dynamic> _$FaceMetadataToJson(FaceMetadata instance) =>
    <String, dynamic>{
      'persistedFaceId': instance.persistedFaceId,
      'userData': instance.userData
    };
