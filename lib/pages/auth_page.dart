import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_track/blocs/auth_bloc/auth_bloc.dart';
import 'package:live_track/blocs/auth_bloc/auth_event.dart';
import 'package:live_track/blocs/auth_bloc/auth_state.dart';
import 'package:live_track/config/images_helper.dart';
import 'package:live_track/enum/auth_type.dart';
import 'package:live_track/extensions/context_extension.dart';
import 'package:live_track/helpers/global_data_helper.dart';
import 'package:live_track/helpers/responsive_ui.dart';
import 'package:live_track/helpers/snackbar_helper.dart';
import 'package:get/get.dart' as gt;

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return Local();
  }
}

class Local extends ResponsiveUI<AuthPage> {
  @override
  Color get currentBackgroundColor => green1;

  String email = "";
  String pass = "";
  final _formKey = GlobalKey<FormState>();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();

  @override
  void initState() {
    context.controllerCubit.initAll();
    super.initState();
  }

  @override
  Widget desktopView(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (BuildContext context, AuthState state) {
        if (state.authType == AuthType.error && state.errorMessage != null) {
          SnackbarHelper().showErrorMessage(
            "Error al iniciar sesion, verifica las credenciales",
            context,
          );
        }
      },
      child: Container(
        width: gt.Get.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [green1, green2],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [imageWidget(), vspacer(), loginWidget()],
        ),
      ),
    );
  }

  Widget imageWidget() {
    return Image.asset(ImagesHelper.logoLivetrack, width: 300);
  }

  Widget loginWidget() {
    return Form(
      key: _formKey,
      child: Container(
        padding: marginMobile,
        width: gt.Get.width - 100,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: [
            textFormField(
              label: "Correo electronico",
              width: double.maxFinite,
              onChanged: (p0) => email = p0,
              inputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Ingrese un correo';
                }
                if (!value.contains('@')) {
                  return 'Correo no válido';
                }
                return null;
              },
            ),
            vspacer(),
            textFormField(
              label: "Contraseña",
              width: double.maxFinite,
              onChanged: (p0) => pass = p0,
              inputType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Ingrese la contraseña';
                }
                if (value.length < 6) {
                  return 'Mínimo 6 caracteres';
                }
                return null;
              },
            ),
            expandedSpacer(),
            button(
              label: "Ingresar",
              color: green1,
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  context.authBloc.add(
                    AuthEvent.signInRequested(email: email, password: pass),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
