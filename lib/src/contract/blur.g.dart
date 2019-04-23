// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blur.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Blur _$BlurFromJson(Map<String, dynamic> json) {
  return Blur(
      blurLevel: _$enumDecodeNullable(_$BlurLevelEnumMap, json['blurLevel']),
      value: (json['value'] as num)?.toDouble());
}

Map<String, dynamic> _$BlurToJson(Blur instance) => <String, dynamic>{
      'blurLevel': _$BlurLevelEnumMap[instance.blurLevel],
      'value': instance.value
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

const _$BlurLevelEnumMap = <BlurLevel, dynamic>{
  BlurLevel.low: 'low',
  BlurLevel.medium: 'medium',
  BlurLevel.high: 'high'
};
