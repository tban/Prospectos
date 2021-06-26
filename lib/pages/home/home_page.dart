import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:prospectos/models/apiresultbyname/resultado.dart';
import 'package:prospectos/pages/home/home_controller.dart';
import 'package:prospectos/widgets/search_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        id: "apifromname",
        dispose: (_) {},
        init: HomeController(),
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              elevation: 4,
              title: Text("Prospectos"),
            ),
            body: Column(
              children: [
                buildSearch(_),
                Expanded(
                  child: ListView.builder(
                    itemCount: _.resultados?.value.length ?? 0,
                    itemBuilder: (context, index) {
                      final item = _.resultados![index];
                      return buildItem(_, item);
                    },
                  ),
                )
              ],
            ),
          );
        });
  }

  Widget buildSearch(HomeController _) => SearchWidget(
        text: _.query?.value ?? "",
        hintText: 'Texto a buscar',
        onChanged: _.searchItem,
      );

  Widget buildItem(HomeController _, Resultado resultado) => ListTile(
        leading: Image.network(
          resultado.fotos?[0].url ??
              "https://image.flaticon.com/icons/png/512/883/883356.png",
          fit: BoxFit.cover,
          width: 50,
          height: 50,
        ),
        onTap: () => _.openProspecto(resultado),
        title: Text(resultado.nombre!),
        subtitle: Text(resultado.nregistro!),
      );
}
