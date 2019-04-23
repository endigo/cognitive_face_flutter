// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'noise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Noise _$NoiseFromJson(Map<String, dynamic> json) {
  return Noise(
      noiseLevel: _$enumDecodeNullable(_$NoiseLevelEnumMap, json['noiseLevel']),
      value: (json['value'] as num)?.toDouble());
}

Map<String, dynamic> _$NoiseToJson(Noise instance) => <String, dynamic>{
      'noiseLevel': _$NoiseLevelEnumMap[instance.noiseLevel],
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

const _$NoiseLevelEnumMap = <NoiseLevel, dynamic>{
  NoiseLevel.low: 'low',
  NoiseLevel.medium: 'medium',
  NoiseLevel.high: 'high'
};
