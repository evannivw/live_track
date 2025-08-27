import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_track/blocs/controller_cubit/controller_state.dart';
import 'package:live_track/models/flota_model.dart';
import 'package:live_track/models/lugares_model.dart';
import 'package:live_track/models/notifications_model.dart';

class ControllerCubit extends Cubit<ControllerState> {
  ControllerCubit(super.initialState);

  Future<void> initAll() async {
    final flotas = await _loadFlotas("assets/json/flotas_colombia.json");
    final notificaciones = await _loadNotificaciones(
      "assets/json/notifications_flotas.json",
    );
    final lugares = await _loadLugares("assets/json/lugares_colombia.json");
    emit(
      state.copyWith(
        flotasList: flotas,
        notificacionesList: notificaciones,
        lugaresList: lugares,
      ),
    );
  }

  Future<void> loadFlotas() async {
    final flotas = await _loadFlotas("assets/json/flotas_colombia.json");
    emit(state.copyWith(flotasList: flotas));
  }

  Future<void> loadNitificaciones() async {
    final notificaciones = await _loadNotificaciones(
      "assets/json/notifications_flotas.json",
    );
    emit(state.copyWith(notificacionesList: notificaciones));
  }

  ///Cargar las flotas de manera local
  Future<List<FlotaModel>> _loadFlotas(String asset) async {
    final String response = await rootBundle.loadString(asset);
    final data = json.decode(response);
    List<FlotaModel> list = [];
    for (var d in data as List) {
      list.add(FlotaModel.fromJson(d));
    }
    return list;
  }

  ///Cargar las notificaciones de manera local
  Future<List<NotificationsModel>> _loadNotificaciones(String asset) async {
    final String response = await rootBundle.loadString(asset);
    final data = json.decode(response);
    List<NotificationsModel> list = [];
    for (var d in data as List) {
      list.add(NotificationsModel.fromJson(d));
    }
    return list;
  }

  ///Cargar las lugares de manera local
  Future<List<LugaresModel>> _loadLugares(String asset) async {
    final String response = await rootBundle.loadString(asset);
    final data = json.decode(response);
    List<LugaresModel> list = [];
    for (var d in data as List) {
      list.add(LugaresModel.fromJson(d));
    }
    return list;
  }

  void searchFlotas(String query) {
    List<FlotaModel> l = List.from(
      state.flotasList.where((e) => e.name.toLowerCase().contains(query)),
    );
    debugPrint("searching flotas: $query : ${l.length}");
    emit(state.copyWith(searchFlotasList: l));
  }

  void searchLugares(String query) {
    List<LugaresModel> l = List.from(
      state.lugaresList.where((e) => e.name.toLowerCase().contains(query)),
    );
    debugPrint("searching lugares: $query : ${l.length}");
    emit(state.copyWith(searchLugaresList: l));
  }
}
