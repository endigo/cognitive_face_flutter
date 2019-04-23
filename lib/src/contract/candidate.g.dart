// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Candidate _$CandidateFromJson(Map<String, dynamic> json) {
  return Candidate(
      personId: json['personId'] as String,
      confidence: (json['confidence'] as num)?.toDouble());
}

Map<String, dynamic> _$CandidateToJson(Candidate instance) => <String, dynamic>{
      'personId': instance.personId,
      'confidence': instance.confidence
    };
