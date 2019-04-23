// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identify_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IdentifyResult _$IdentifyResultFromJson(Map<String, dynamic> json) {
  return IdentifyResult(
      faceId: json['faceId'] as String,
      candidates: (json['candidates'] as List)
          ?.map((e) =>
              e == null ? null : Candidate.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$IdentifyResultToJson(IdentifyResult instance) =>
    <String, dynamic>{
      'faceId': instance.faceId,
      'candidates': instance.candidates
    };
