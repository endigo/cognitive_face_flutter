import 'package:json_annotation/json_annotation.dart';

part 'head_pose.g.dart';

@JsonSerializable()
class HeadPose {
  final double roll;

  final double yaw;

  final double pitch;

  HeadPose({
    this.roll,
    this.yaw,
    this.pitch,
  });

  /// A necessary factory constructor for creating a new HeadPose instance
  /// from a map. Pass the map to the generated `_$HeadPoseFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory HeadPose.fromJson(Map<String, dynamic> json) =>
      _$HeadPoseFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$HeadPoseToJson(this);
}
