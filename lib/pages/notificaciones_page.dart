import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:live_track/blocs/controller_cubit/controller_cubit.dart';
import 'package:live_track/blocs/controller_cubit/controller_state.dart';
import 'package:live_track/config/images_helper.dart';
import 'package:live_track/extensions/context_extension.dart';
import 'package:live_track/helpers/global_data_helper.dart';
import 'package:live_track/helpers/responsive_ui.dart';
import 'package:get/get.dart' as gt;
import 'package:live_track/helpers/snackbar_helper.dart';
import 'package:live_track/models/notifications_model.dart';

class NotificacionesPage extends StatefulWidget {
  const NotificacionesPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return Local();
  }
}

class Local extends ResponsiveUI<NotificacionesPage> {
  @override
  Color get currentBackgroundColor => green1;

  DateTime? firstDatePicker;
  DateTime? lastDatePicker;

  Future<DateTime?> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      locale: const Locale("es", "ES"), // opcional: idioma español
    );
    if (picked != null) {
      print("Fecha seleccionada: $picked");
    }
    return picked;
  }

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
              "Notificaciones",
              style: context.textTheme.titleMedium?.copyWith(color: white),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  context.controllerCubit.loadNitificaciones().then((v) {
                    SnackbarHelper().showSuccessMessage(
                      "Notificaciones cargadas nuevamente",
                      context,
                    );
                    setState(() {});
                  });
                },
                icon: Icon(Icons.replay_outlined, color: white, size: 24),
              ),
            ],
          ),
          body: Column(children: [dateFilterWidget(), listWidget()]),
        );
      },
    );
  }

  Widget dateFilterWidget() {
    return Container(
      padding: EdgeInsets.only(left: 8, right: 8),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          dateButton(true),
          hspacer(),
          dateButton(false),
          button(
            width: 80,
            height: 38,
            label: "Filtrar",
            color: green1,
            onTap: () {
              if (firstDatePicker != null && lastDatePicker != null) {
                
              }
            },
          ),
        ],
      ),
    );
  }

  Widget dateButton(bool firstDate) {
    return Material(
      child: GestureDetector(
        onTap: () async {
          final date = await _selectDate(context);
          if (firstDate) {
            firstDatePicker = date;
          } else {
            lastDatePicker = date;
          }
        },
        child: SizedBox(
          width: 120,
          child: Column(
            children: [vspacer(8), Text("fecha"), expandedSpacer(), Divider()],
          ),
        ),
      ),
    );
  }

  Widget listWidget() {
    return Expanded(
      child: Padding(
        padding: smallMarginMobile,
        child: ListView.builder(
          padding: EdgeInsets.only(top: 16, bottom: 200),
          itemCount: context.controllerState.notificacionesList.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            final notification =
                context.controllerState.notificacionesList[index];
            return notificationsCard(notification);
          },
        ),
      ),
    );
  }

  Widget notificationsCard(NotificationsModel notification) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(bottom: 12),
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(ImagesHelper.notificacionIcono, height: 60),
              hspacer(8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notification.flotaName,
                    style: context.textTheme.titleMedium?.copyWith(
                      fontSize: 16,
                      height: 1,
                    ),
                  ),
                  Text("Contador de alertas"),
                  vspacer(8),
                  SizedBox(
                    width: Get.width - 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "🚨",
                          style: context.textTheme.bodySmall?.copyWith(
                            fontSize: 22,
                            height: 1,
                          ),
                        ),
                        Text(
                          "1",
                          style: context.textTheme.headlineLarge?.copyWith(
                            fontSize: 22,
                            height: 1,
                          ),
                        ),
                        Text(
                          "🚨",
                          style: context.textTheme.bodySmall?.copyWith(
                            fontSize: 22,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(color: gray2),
      ],
    );
  }
}
