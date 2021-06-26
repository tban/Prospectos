// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Doc _$DocFromJson(Map<String, dynamic> json) {
  return Doc(
    json['tipo'] as int?,
    json['url'] as String?,
    json['urlHtml'] as String?,
  );
}

Map<String, dynamic> _$DocToJson(Doc instance) => <String, dynamic>{
      'tipo': instance.tipo,
      'url': instance.url,
      'urlHtml': instance.urlHtml,
    };
