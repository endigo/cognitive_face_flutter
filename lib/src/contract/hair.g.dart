// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hair _$HairFromJson(Map<String, dynamic> json) {
  return Hair(
      bald: (json['bald'] as num)?.toDouble(),
      invisible: json['invisible'] as bool,
      hairColor: (json['hairColor'] as List)
          ?.map((e) =>
              e == null ? null : HairColor.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$HairToJson(Hair instance) => <String, dynamic>{
      'bald': instance.bald,
      'invisible': instance.invisible,
      'hairColor': instance.hairColor
    };
