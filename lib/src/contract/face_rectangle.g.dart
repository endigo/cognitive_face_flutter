// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'face_rectangle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FaceRectangle _$FaceRectangleFromJson(Map<String, dynamic> json) {
  return FaceRectangle(
      width: json['width'] as int,
      height: json['height'] as int,
      left: json['left'] as int,
      top: json['top'] as int);
}

Map<String, dynamic> _$FaceRectangleToJson(FaceRectangle instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'left': instance.left,
      'top': instance.top
    };
