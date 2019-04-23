// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'makeup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Makeup _$MakeupFromJson(Map<String, dynamic> json) {
  return Makeup(
      eyeMakeup: json['eyeMakeup'] as bool,
      lipMakeup: json['lipMakeup'] as bool);
}

Map<String, dynamic> _$MakeupToJson(Makeup instance) => <String, dynamic>{
      'eyeMakeup': instance.eyeMakeup,
      'lipMakeup': instance.lipMakeup
    };
