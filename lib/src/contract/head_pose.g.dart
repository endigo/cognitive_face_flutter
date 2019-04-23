// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'head_pose.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HeadPose _$HeadPoseFromJson(Map<String, dynamic> json) {
  return HeadPose(
      roll: (json['roll'] as num)?.toDouble(),
      yaw: (json['yaw'] as num)?.toDouble(),
      pitch: (json['pitch'] as num)?.toDouble());
}

Map<String, dynamic> _$HeadPoseToJson(HeadPose instance) => <String, dynamic>{
      'roll': instance.roll,
      'yaw': instance.yaw,
      'pitch': instance.pitch
    };
