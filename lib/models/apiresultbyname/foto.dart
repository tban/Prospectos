import 'package:json_annotation/json_annotation.dart';

part 'foto.g.dart';

@JsonSerializable()
class Foto {
  Foto(
    this.tipo,
    this.url,
  );
  String tipo;
  String url;

  factory Foto.fromJson(Map<String, dynamic> json) => _$FotoFromJson(json);
  Map<String, dynamic> toJson() => _$FotoToJson(this);

  Map<String, dynamic> _$FotoToJson(Foto instance) => <String, dynamic>{
        'tipo': instance.tipo,
        'url': instance.url,
      };
}
