import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:live_track/blocs/controller_cubit/controller_cubit.dart';
import 'package:live_track/blocs/controller_cubit/controller_state.dart';
import 'package:live_track/extensions/context_extension.dart';
import 'package:live_track/helpers/animated_button.dart';
import 'package:live_track/helpers/global_data_helper.dart';
import 'package:live_track/helpers/responsive_ui.dart';
import 'package:get/get.dart' as gt;
import 'package:live_track/helpers/snackbar_helper.dart';
import 'package:live_track/models/flota_model.dart';
import 'package:live_track/pages/mapa_page.dart';

class SupervisionPage extends StatefulWidget {
  const SupervisionPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return Local();
  }
}

class Local extends ResponsiveUI<SupervisionPage> {
  @override
  Color get currentBackgroundColor => green1;
  bool isSearching = false;
  @override
  Widget desktopView(BuildContext context) {
    return BlocBuilder<ControllerCubit, ControllerState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: white,
          appBar: AppBar(
            backgroundColor: green1,
            foregroundColor: white,
            title: Text(
              "Supervision de flota",
              style: context.textTheme.titleMedium?.copyWith(color: white),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  isSearching = !isSearching;
                  setState(() {});
                },
                icon: Icon(
                  isSearching ? Icons.close : Icons.search,
                  color: white,
                  size: 24,
                ),
              ),
              IconButton(
                onPressed: () {
                  context.controllerCubit.loadFlotas().then((v) {
                    SnackbarHelper().showSuccessMessage(
                      "Flotas cargadas nuevamente",
                      context,
                    );
                    isSearching = false;
                    setState(() {});
                  });
                },
                icon: Icon(Icons.replay_outlined, color: white, size: 24),
              ),
            ],
          ),
          floatingActionButton: mapaButton(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (isSearching) vspacer(4),
              if (isSearching) searchField(),
              Expanded(child: listView()),
            ],
          ),
        );
      },
    );
  }

  Widget searchField() {
    return Container(
      margin: EdgeInsets.only(left: 8, right: 8),
      child: textField(
        label: "Buscar",
        color: gray1,
        titleColor: gray3,
        width: double.infinity,
        onChanged: (str) {
          context.controllerCubit.searchFlotas(str);
        },
      ),
    );
  }

  Widget mapaButton() {
    final list =
        isSearching
            ? context.controllerState.searchFlotasList ?? []
            : context.controllerState.flotasList;
    return Container(
      margin: EdgeInsets.only(bottom: 0),
      child: button(
        onTap: () {
          gt.Get.to(
            () => MapaPage(
              points:
                  list
                      .map((e) => LatLng(e.position.first, e.position.last))
                      .toList(),
            ),
            transition: gt.Transition.fadeIn,
          );
        },
        width: Get.width - 50,
        label: "Ver todos en el mapa",
        color: green1,
      ),
    );
  }

  Widget listView() {
    final list =
        isSearching
            ? context.controllerState.searchFlotasList ?? []
            : context.controllerState.flotasList;
    return Padding(
      padding: smallMarginMobile,
      child: ListView.builder(
        padding: EdgeInsets.only(top: 16, bottom: 200),
        itemCount: list.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          final flota = list[index];
          return flotaCard(flota);
        },
      ),
    );
  }

  Widget flotaCard(FlotaModel flota) {
    return AnimatedButton(
      onPressed: () {
        gt.Get.to(
          () => MapaPage(
            points: [LatLng(flota.position.first, flota.position.last)],
          ),
          transition: gt.Transition.fadeIn,
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 12),
            padding: EdgeInsets.only(left: 16, right: 16),
            color: white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      flota.name,
                      style: context.textTheme.titleLarge?.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(flota.id),
                  ],
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: flota.status.color,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ],
            ),
          ),
          Divider(color: gray2),
        ],
      ),
    );
  }
}
