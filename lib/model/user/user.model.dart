import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user.model.g.dart';

@JsonSerializable(anyMap: true, explicitToJson: true)
class User {
  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.profilePhoto,
    required this.loginCount,
  });
  @JsonKey(defaultValue: '', includeIfNull: true)
  final String id;
  @JsonKey(defaultValue: '', includeIfNull: true)
  final String name;
  @JsonKey(defaultValue: '', includeIfNull: true)
  final String email;
  @JsonKey(defaultValue: '', includeIfNull: true)
  final String profilePhoto;
  @JsonKey(defaultValue: 0, includeIfNull: true)
  final int loginCount;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);


  factory User.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> doc) =>
      User.fromJson(doc.data() ?? {});    

  Map<String, dynamic> toJson() => _$UserToJson(this);


}
