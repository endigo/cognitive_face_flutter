// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'similar_face.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimilarFace _$SimilarFaceFromJson(Map<String, dynamic> json) {
  return SimilarFace(
      faceId: json['faceId'] as String,
      confidence: (json['confidence'] as num)?.toDouble());
}

Map<String, dynamic> _$SimilarFaceToJson(SimilarFace instance) =>
    <String, dynamic>{
      'faceId': instance.faceId,
      'confidence': instance.confidence
    };
