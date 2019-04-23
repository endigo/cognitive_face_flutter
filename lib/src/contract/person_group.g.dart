// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonGroup _$PersonGroupFromJson(Map<String, dynamic> json) {
  return PersonGroup(
      personGroupId: json['personGroupId'] as String,
      name: json['name'] as String,
      userData: json['userData'] as String,
      trainingStatus: json['trainingStatus'] == null
          ? null
          : TrainingStatus.fromJson(
              json['trainingStatus'] as Map<String, dynamic>));
}

Map<String, dynamic> _$PersonGroupToJson(PersonGroup instance) =>
    <String, dynamic>{
      'personGroupId': instance.personGroupId,
      'name': instance.name,
      'userData': instance.userData,
      'trainingStatus': instance.trainingStatus
    };
