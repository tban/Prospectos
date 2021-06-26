import 'package:json_annotation/json_annotation.dart';

import 'doc.dart';
import 'foto.dart';

part 'resultado.g.dart';

@JsonSerializable()
class Resultado {
  Resultado(
    this.nregistro,
    this.nombre,
    this.receta,
    this.generico,
    this.docs,
    this.fotos,
  );
  String? nregistro;
  String? nombre;
  bool receta;
  bool generico;
  List<Doc>? docs;
  List<Foto>? fotos;

  factory Resultado.fromJson(Map<String, dynamic> json) =>
      _$ResultadoFromJson(json);
  Map<String, dynamic> toJson() => _$ResultadoToJson(this);

  Map<String, dynamic> _$ResultadoToJson(Resultado instance) =>
      <String, dynamic>{
        'nregistro': instance.nregistro ?? "",
        'nombre': instance.nombre ?? "",
        'receta': instance.receta,
        'generico': instance.generico,
        'docs': instance.docs ?? docs,
        'fotos': instance.fotos ?? fotos,
      };

  static List<Resultado> fromJsonList(List list) {
    return list.map((item) => Resultado.fromJson(item)).toList();
  }
}
