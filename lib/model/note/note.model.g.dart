// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Note _$NoteFromJson(Map json) => Note(
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      id: json['id'] as String? ?? '',
      color: json['color'] as String? ?? '',
      status: $enumDecodeNullable(_$NoteStatusEnumMap, json['status']) ??
          NoteStatus.active,
    );

Map<String, dynamic> _$NoteToJson(Note instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'id': instance.id,
      'color': instance.color,
      'status': _$NoteStatusEnumMap[instance.status]!,
    };

const _$NoteStatusEnumMap = {
  NoteStatus.active: 'active',
  NoteStatus.archived: 'archived',
  NoteStatus.deleted: 'deleted',
};
