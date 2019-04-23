// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exposure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Exposure _$ExposureFromJson(Map<String, dynamic> json) {
  return Exposure(
      exposureLevel:
          _$enumDecodeNullable(_$ExposureLevelEnumMap, json['exposureLevel']),
      value: (json['value'] as num)?.toDouble());
}

Map<String, dynamic> _$ExposureToJson(Exposure instance) => <String, dynamic>{
      'exposureLevel': _$ExposureLevelEnumMap[instance.exposureLevel],
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

const _$ExposureLevelEnumMap = <ExposureLevel, dynamic>{
  ExposureLevel.underExposure: 'underExposure',
  ExposureLevel.goodExposure: 'goodExposure',
  ExposureLevel.overExposure: 'overExposure'
};
