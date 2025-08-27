import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_track/blocs/auth_bloc/auth_event.dart';
import 'package:live_track/extensions/context_extension.dart';
import 'package:live_track/helpers/responsive_ui.dart';

class LogoutDialog extends StatefulWidget {
  const LogoutDialog({super.key});

  void show() {
    showDialog(
      context: Get.context!,
      barrierDismissible: true,
      builder: (c) {
        return LogoutDialog();
      },
    );
  }

  @override
  State<StatefulWidget> createState() {
    return Local();
  }
}

class Local extends ResponsiveUI<LogoutDialog> {
  @override
  Color get currentBackgroundColor => Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: AlertDialog(
        content: SizedBox(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Cerrar sesion",
                style: context.textTheme.titleLarge?.copyWith(fontSize: 25),
              ),
              vspacer(),
              vspacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  button(
                    label: "Si",
                    width: 100,
                    onTap: () {
                      Get.back();
                      context.authBloc.add(AuthEvent.signOutRequested());
                    },
                  ),
                  button(
                    label: "No",
                    width: 100,
                    onTap: () {
                      Get.back();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
