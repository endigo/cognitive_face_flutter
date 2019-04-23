// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrainingStatus _$TrainingStatusFromJson(Map<String, dynamic> json) {
  return TrainingStatus(
      status: _$enumDecodeNullable(_$StatusEnumMap, json['status']),
      createdDateTime: json['createdDateTime'] == null
          ? null
          : DateTime.parse(json['createdDateTime'] as String),
      lastActionDateTime: json['lastActionDateTime'] == null
          ? null
          : DateTime.parse(json['lastActionDateTime'] as String),
      message: json['message'] as String);
}

Map<String, dynamic> _$TrainingStatusToJson(TrainingStatus instance) =>
    <String, dynamic>{
      'status': _$StatusEnumMap[instance.status],
      'createdDateTime': instance.createdDateTime?.toIso8601String(),
      'lastActionDateTime': instance.lastActionDateTime?.toIso8601String(),
      'message': instance.message
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

const _$StatusEnumMap = <Status, dynamic>{
  Status.Succeeded: 'Succeeded',
  Status.Failed: 'Failed',
  Status.Running: 'Running'
};
