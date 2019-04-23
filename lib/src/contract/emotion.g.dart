// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emotion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Emotion _$EmotionFromJson(Map<String, dynamic> json) {
  return Emotion(
      anger: (json['anger'] as num)?.toDouble(),
      contempt: (json['contempt'] as num)?.toDouble(),
      disgust: (json['disgust'] as num)?.toDouble(),
      fear: (json['fear'] as num)?.toDouble(),
      happiness: (json['happiness'] as num)?.toDouble(),
      neutral: (json['neutral'] as num)?.toDouble(),
      sadness: (json['sadness'] as num)?.toDouble(),
      surprise: (json['surprise'] as num)?.toDouble());
}

Map<String, dynamic> _$EmotionToJson(Emotion instance) => <String, dynamic>{
      'anger': instance.anger,
      'contempt': instance.contempt,
      'disgust': instance.disgust,
      'fear': instance.fear,
      'happiness': instance.happiness,
      'neutral': instance.neutral,
      'sadness': instance.sadness,
      'surprise': instance.surprise
    };
