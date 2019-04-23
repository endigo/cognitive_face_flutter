// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'similar_persisted_face.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimilarPersistedFace _$SimilarPersistedFaceFromJson(Map<String, dynamic> json) {
  return SimilarPersistedFace(
      persistedFaceId: json['persistedFaceId'] as String,
      confidence: (json['confidence'] as num)?.toDouble());
}

Map<String, dynamic> _$SimilarPersistedFaceToJson(
        SimilarPersistedFace instance) =>
    <String, dynamic>{
      'persistedFaceId': instance.persistedFaceId,
      'confidence': instance.confidence
    };
