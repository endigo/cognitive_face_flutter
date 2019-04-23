// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyResult _$VerifyResultFromJson(Map<String, dynamic> json) {
  return VerifyResult(
      isIdentical: json['isIdentical'] as bool,
      confidence: (json['confidence'] as num)?.toDouble());
}

Map<String, dynamic> _$VerifyResultToJson(VerifyResult instance) =>
    <String, dynamic>{
      'isIdentical': instance.isIdentical,
      'confidence': instance.confidence
    };
