// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'large_person_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LargePersonGroup _$LargePersonGroupFromJson(Map<String, dynamic> json) {
  return LargePersonGroup(
      largePersonGroupId: json['largePersonGroupId'] as String,
      name: json['name'] as String,
      userData: json['userData'] as String,
      trainingStatus: json['trainingStatus'] == null
          ? null
          : TrainingStatus.fromJson(
              json['trainingStatus'] as Map<String, dynamic>));
}

Map<String, dynamic> _$LargePersonGroupToJson(LargePersonGroup instance) =>
    <String, dynamic>{
      'largePersonGroupId': instance.largePersonGroupId,
      'name': instance.name,
      'userData': instance.userData,
      'trainingStatus': instance.trainingStatus
    };
