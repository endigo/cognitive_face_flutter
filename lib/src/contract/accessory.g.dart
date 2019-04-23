// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accessory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Accessory _$AccessoryFromJson(Map<String, dynamic> json) {
  return Accessory(
      type: _$enumDecodeNullable(_$AccessoryTypeEnumMap, json['type']),
      confidence: (json['confidence'] as num)?.toDouble());
}

Map<String, dynamic> _$AccessoryToJson(Accessory instance) => <String, dynamic>{
      'type': _$AccessoryTypeEnumMap[instance.type],
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

const _$AccessoryTypeEnumMap = <AccessoryType, dynamic>{
  AccessoryType.headwear: 'headwear',
  AccessoryType.glasses: 'glasses',
  AccessoryType.mask: 'mask'
};
