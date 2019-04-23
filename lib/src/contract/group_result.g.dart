// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupResult _$GroupResultFromJson(Map<String, dynamic> json) {
  return GroupResult(
      groups: (json['groups'] as List)
          ?.map((e) => (e as List)?.map((e) => e as String)?.toList())
          ?.toList(),
      messyGroup:
          (json['messyGroup'] as List)?.map((e) => e as String)?.toList());
}

Map<String, dynamic> _$GroupResultToJson(GroupResult instance) =>
    <String, dynamic>{
      'groups': instance.groups,
      'messyGroup': instance.messyGroup
    };
