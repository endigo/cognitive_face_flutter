// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_face.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonFace _$PersonFaceFromJson(Map<String, dynamic> json) {
  return PersonFace(
      persistedFaceId: json['persistedFaceId'] as String,
      userData: json['userData'] as String);
}

Map<String, dynamic> _$PersonFaceToJson(PersonFace instance) =>
    <String, dynamic>{
      'persistedFaceId': instance.persistedFaceId,
      'userData': instance.userData
    };
