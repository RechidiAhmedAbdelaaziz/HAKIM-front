// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostRequestBody _$PostRequestBodyFromJson(Map<String, dynamic> json) =>
    PostRequestBody(
      text: json['text'] as String,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$PostRequestBodyToJson(PostRequestBody instance) =>
    <String, dynamic>{
      'text': instance.text,
      'id': instance.id,
    };
