// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Foto _$FotoFromJson(Map<String, dynamic> json) {
  return Foto(
    json['tipo'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$FotoToJson(Foto instance) => <String, dynamic>{
      'tipo': instance.tipo,
      'url': instance.url,
    };
