// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facial_hair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FacialHair _$FacialHairFromJson(Map<String, dynamic> json) {
  return FacialHair(
      moustache: (json['moustache'] as num)?.toDouble(),
      beard: (json['beard'] as num)?.toDouble(),
      sideburns: (json['sideburns'] as num)?.toDouble());
}

Map<String, dynamic> _$FacialHairToJson(FacialHair instance) =>
    <String, dynamic>{
      'moustache': instance.moustache,
      'beard': instance.beard,
      'sideburns': instance.sideburns
    };
