// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'face_attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FaceAttribute _$FaceAttributeFromJson(Map<String, dynamic> json) {
  return FaceAttribute(
      age: (json['age'] as num)?.toDouble(),
      gender: json['gender'] as String,
      smile: (json['smile'] as num)?.toDouble(),
      facialHair: json['facialHair'] == null
          ? null
          : FacialHair.fromJson(json['facialHair'] as Map<String, dynamic>),
      headPose: json['headPose'] == null
          ? null
          : HeadPose.fromJson(json['headPose'] as Map<String, dynamic>),
      glasses: _$enumDecodeNullable(_$GlassesEnumMap, json['glasses']),
      emotion: json['emotion'] == null
          ? null
          : Emotion.fromJson(json['emotion'] as Map<String, dynamic>),
      blur: json['blur'] == null
          ? null
          : Blur.fromJson(json['blur'] as Map<String, dynamic>),
      exposure: json['exposure'] == null
          ? null
          : Exposure.fromJson(json['exposure'] as Map<String, dynamic>),
      noise: json['noise'] == null
          ? null
          : Noise.fromJson(json['noise'] as Map<String, dynamic>),
      makeup: json['makeup'] == null
          ? null
          : Makeup.fromJson(json['makeup'] as Map<String, dynamic>),
      accessories: (json['accessories'] as List)
          ?.map((e) =>
              e == null ? null : Accessory.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      occlusion: json['occlusion'] == null
          ? null
          : Occlusion.fromJson(json['occlusion'] as Map<String, dynamic>),
      hair: json['hair'] == null
          ? null
          : Hair.fromJson(json['hair'] as Map<String, dynamic>));
}

Map<String, dynamic> _$FaceAttributeToJson(FaceAttribute instance) =>
    <String, dynamic>{
      'age': instance.age,
      'gender': instance.gender,
      'smile': instance.smile,
      'facialHair': instance.facialHair,
      'headPose': instance.headPose,
      'glasses': _$GlassesEnumMap[instance.glasses],
      'emotion': instance.emotion,
      'blur': instance.blur,
      'exposure': instance.exposure,
      'noise': instance.noise,
      'makeup': instance.makeup,
      'accessories': instance.accessories,
      'occlusion': instance.occlusion,
      'hair': instance.hair
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

const _$GlassesEnumMap = <Glasses, dynamic>{
  Glasses.NoGlasses: 'NoGlasses',
  Glasses.Sunglasses: 'Sunglasses',
  Glasses.ReadingGlasses: 'ReadingGlasses',
  Glasses.SwimmingGoggles: 'SwimmingGoggles'
};
