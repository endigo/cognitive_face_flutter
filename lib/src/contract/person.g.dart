// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) {
  return Person(
      personId: json['personId'] as String,
      persistedFaceIds:
          (json['persistedFaceIds'] as List)?.map((e) => e as String)?.toList(),
      name: json['name'] as String,
      userData: json['userData'] as String);
}

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'personId': instance.personId,
      'persistedFaceIds': instance.persistedFaceIds,
      'name': instance.name,
      'userData': instance.userData
    };
