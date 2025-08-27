import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_track/blocs/auth_bloc/auth_bloc.dart';
import 'package:live_track/blocs/controller_cubit/controller_cubit.dart';
import 'package:live_track/blocs/controller_cubit/controller_state.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ThemeContextExtension on BuildContext {
  /// Accede rápido al tema actual
  ThemeData get theme => Theme.of(this);

  /// Accede rápido a los estilos de texto
  // TextTheme get textTheme => theme.textTheme;

  /// Accede rápido a los colores del esquema de color
  ColorScheme get colorScheme => theme.colorScheme;

  /// Accede rápido al tamaño del dispositivo
  Size get screenSize => MediaQuery.of(this).size;

  /// Accede rápido al ancho del dispositivo
  double get screenWidth => screenSize.width;

  /// Accede rápido al alto del dispositivo
  double get screenHeight => screenSize.height;

  /// Accede rápido al controller cubit
  ControllerCubit get controllerCubit => read<ControllerCubit>();

  /// Accede rápido al controller cubit
  ControllerState get controllerState => read<ControllerCubit>().state;

  /// Accede rápido al auth bloc
  AuthBloc get authBloc => read<AuthBloc>();

  /// Traducciones
  // AppLocalizations get localization => AppLocalizations.of(this)!;
}
