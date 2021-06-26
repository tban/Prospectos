// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resultado.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resultado _$ResultadoFromJson(Map<String, dynamic> json) {
  return Resultado(
    json['nregistro'] as String?,
    json['nombre'] as String?,
    (json['docs'] as List<dynamic>?)
        ?.map((e) => Doc.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['fotos'] as List<dynamic>?)
        ?.map((e) => Foto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ResultadoToJson(Resultado instance) => <String, dynamic>{
      'nregistro': instance.nregistro,
      'nombre': instance.nombre,
      'docs': instance.docs,
      'fotos': instance.fotos,
    };
