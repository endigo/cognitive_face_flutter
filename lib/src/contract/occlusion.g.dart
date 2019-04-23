// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'occlusion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Occlusion _$OcclusionFromJson(Map<String, dynamic> json) {
  return Occlusion(
      foreheadOccluded: json['foreheadOccluded'] as bool,
      eyeOccluded: json['eyeOccluded'] as bool,
      mouthOccluded: json['mouthOccluded'] as bool);
}

Map<String, dynamic> _$OcclusionToJson(Occlusion instance) => <String, dynamic>{
      'foreheadOccluded': instance.foreheadOccluded,
      'eyeOccluded': instance.eyeOccluded,
      'mouthOccluded': instance.mouthOccluded
    };
