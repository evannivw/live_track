import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:live_track/blocs/controller_cubit/controller_cubit.dart';
import 'package:live_track/blocs/controller_cubit/controller_state.dart';
import 'package:live_track/config/images_helper.dart';
import 'package:live_track/extensions/context_extension.dart';
import 'package:live_track/helpers/animated_button.dart';
import 'package:live_track/helpers/global_data_helper.dart';
import 'package:live_track/helpers/responsive_ui.dart';
import 'package:get/get.dart' as gt;
import 'package:live_track/models/lugares_model.dart';
import 'package:live_track/pages/mapa_page.dart';

class LugaresPage extends StatefulWidget {
  const LugaresPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return Local();
  }
}

class Local extends ResponsiveUI<LugaresPage> {
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
                onPressed: () {},
                icon: Icon(Icons.add, color: white, size: 24),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert_outlined, color: white, size: 24),
              ),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (isSearching) vspacer(4),
              if (isSearching) searchField(),
              Expanded(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [listView()],
                ),
              ),
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
          context.controllerCubit.searchLugares(str);
        },
      ),
    );
  }

  Widget listView() {
    final l =
        isSearching
            ? context.controllerState.searchLugaresList ?? []
            : context.controllerState.lugaresList;
    return Padding(
      padding: smallMarginMobile,
      child: ListView.builder(
        padding: EdgeInsets.only(top: 16, bottom: 200),
        itemCount: l.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          final lugar = l[index];
          return placesCard(lugar);
        },
      ),
    );
  }

  Widget placesCard(LugaresModel lugar) {
    return AnimatedButton(
      onPressed: () {
        gt.Get.to(
          () => MapaPage(
            points: [LatLng(lugar.position.first, lugar.position.last)],
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
            padding: EdgeInsets.only(left: 8, right: 16),
            color: white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(ImagesHelper.lugarIcono, height: 50),
                hspacer(8),
                SizedBox(
                  width: Get.width - 100,
                  child: Text(
                    lugar.name,
                    style: context.textTheme.titleMedium?.copyWith(
                      fontSize: 18,
                      height: 1.2,
                    ),
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
