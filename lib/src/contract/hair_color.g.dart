// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hair_color.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HairColor _$HairColorFromJson(Map<String, dynamic> json) {
  return HairColor(
      color: _$enumDecodeNullable(_$HairColorTypeEnumMap, json['color']),
      confidence: (json['confidence'] as num)?.toDouble());
}

Map<String, dynamic> _$HairColorToJson(HairColor instance) => <String, dynamic>{
      'color': _$HairColorTypeEnumMap[instance.color],
      'confidence': instance.confidence
    };

T _$enumDecode<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }
  return enumValues.entries
      .singleWhere((e) => e.value == source,
          orElse: () => throw ArgumentError(
              '`$source` is not one of the supported values: '
              '${enumValues.values.join(', ')}'))
      .key;
}

T _$enumDecodeNullable<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source);
}

const _$HairColorTypeEnumMap = <HairColorType, dynamic>{
  HairColorType.Unknown: 'Unknown',
  HairColorType.White: 'White',
  HairColorType.Gray: 'Gray',
  HairColorType.Blond: 'Blond',
  HairColorType.Brown: 'Brown',
  HairColorType.Red: 'Red',
  HairColorType.Black: 'Black',
  HairColorType.Other: 'Other'
};
