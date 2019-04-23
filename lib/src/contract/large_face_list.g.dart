// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'large_face_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LargeFaceList _$LargeFaceListFromJson(Map<String, dynamic> json) {
  return LargeFaceList(
      largeFaceListId: json['largeFaceListId'] as String,
      name: json['name'] as String,
      userData: json['userData'] as String,
      trainingStatus: json['trainingStatus'] == null
          ? null
          : TrainingStatus.fromJson(
              json['trainingStatus'] as Map<String, dynamic>));
}

Map<String, dynamic> _$LargeFaceListToJson(LargeFaceList instance) =>
    <String, dynamic>{
      'largeFaceListId': instance.largeFaceListId,
      'name': instance.name,
      'userData': instance.userData,
      'trainingStatus': instance.trainingStatus
    };
