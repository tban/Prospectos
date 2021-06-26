import 'package:json_annotation/json_annotation.dart';

part 'doc.g.dart';

@JsonSerializable()
class Doc {
  Doc(
    this.tipo,
    this.url,
    this.urlHtml,
  );
  int? tipo;
  String? url;
  String? urlHtml;

  factory Doc.fromJson(Map<String, dynamic> json) => _$DocFromJson(json);
  Map<String, dynamic> toJson() => _$DocToJson(this);

  Map<String, dynamic> _$DocToJson(Doc instance) => <String, dynamic>{
        'tipo': instance.tipo,
        'url': instance.url,
        'urlHtml': instance.urlHtml,
      };
}
