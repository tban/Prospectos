import 'package:dio/dio.dart';
import 'package:prospectos/models/apiresultbyname/resultado.dart';

class CimaApi {
  static Future<List<Resultado>> getByName(String nombre) async {
    try {
      var dio = Dio();
      List<Resultado> lista = [];
      String url = "https://cima.aemps.es/cima/rest/medicamentos";
      Response response =
          await dio.get(url, queryParameters: {'nombre': nombre});
      if (response.statusCode == 200) {
        var listasJson = response.data["resultados"];
        for (var json in listasJson) {
          lista.add(Resultado.fromJson(json));
        }
      }
      /*  List<Resultado> responseList =
          Resultado.fromJsonList(response.data["resultados"].value); */
      //print(responseList.toList().toString());

      return lista;
    } catch (e) {
      return [];
    }
  }
}
