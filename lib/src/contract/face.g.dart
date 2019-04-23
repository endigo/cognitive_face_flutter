// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'face.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Face _$FaceFromJson(Map<String, dynamic> json) {
  return Face(
      faceId: json['faceId'] as String,
      faceRectangle: json['faceRectangle'] == null
          ? null
          : FaceRectangle.fromJson(
              json['faceRectangle'] as Map<String, dynamic>),
      faceLandmarks: json['faceLandmarks'] == null
          ? null
          : FaceLandmarks.fromJson(
              json['faceLandmarks'] as Map<String, dynamic>),
      faceAttributes: json['faceAttributes'] == null
          ? null
          : FaceAttribute.fromJson(
              json['faceAttributes'] as Map<String, dynamic>));
}

Map<String, dynamic> _$FaceToJson(Face instance) => <String, dynamic>{
      'faceId': instance.faceId,
      'faceRectangle': instance.faceRectangle,
      'faceLandmarks': instance.faceLandmarks,
      'faceAttributes': instance.faceAttributes
    };
