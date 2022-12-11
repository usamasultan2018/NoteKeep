import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
part 'note.model.g.dart';

@JsonSerializable(anyMap: true, explicitToJson: true)
class Note {
  const Note({
    required this.title,
    required this.description,
    required this.id,
    required this.color,
    required this.status,
  });
  @JsonKey(defaultValue: '', includeIfNull: true)
  final String title;
  @JsonKey(defaultValue: '', includeIfNull: true)
  final String description;
  @JsonKey(defaultValue: '', includeIfNull: true)
  final String id;
  @JsonKey(defaultValue: '', includeIfNull: true)
  final String color;
  @JsonKey(defaultValue: NoteStatus.active, includeIfNull: true)
  final NoteStatus status;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);

  factory Note.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> doc) =>
      Note.fromJson(doc.data() ?? {});

  Map<String, dynamic> toJson() => _$NoteToJson(this);
}

enum NoteStatus { active, archived, deleted }

extension NoteStatusX on NoteStatus {
  get isActive => this == NoteStatus.active;
  get isArchived => this == NoteStatus.archived;
  get isDeleted => this == NoteStatus.deleted;
}
