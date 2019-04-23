import 'package:json_annotation/json_annotation.dart';

part 'group_result.g.dart';
@JsonSerializable()
class GroupResult {
  final List<List<String>> groups;

  final List<String> messyGroup;

  GroupResult({
    this.groups,
    this.messyGroup,
  });

  /// A necessary factory constructor for creating a new GroupResult instance
  /// from a map. Pass the map to the generated `_$GroupResultFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory GroupResult.fromJson(Map<String, dynamic> json) => _$GroupResultFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$GroupResultToJson(this);
}
