import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_track/blocs/auth_bloc/auth_event.dart';
import 'package:live_track/enum/view_categories_type.dart';
import 'package:live_track/extensions/context_extension.dart';
import 'package:live_track/helpers/animated_button.dart';
import 'package:live_track/helpers/global_data_helper.dart';
import 'package:live_track/helpers/responsive_ui.dart';
import 'package:get/get.dart' as gt;
import 'package:live_track/pages/dialogs/logout_dialog.dart';
import 'package:live_track/pages/lugares_page.dart';
import 'package:live_track/pages/notificaciones_page.dart';
import 'package:live_track/pages/supervision_page.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return Local();
  }
}

class Local extends ResponsiveUI<CategoriesPage> {
  @override
  Color get currentBackgroundColor => green1;
  @override
  Widget desktopView(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [green1, green2],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: white,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings, color: white, size: 24),
            ),
          ],
        ),
        body: gridWidget(),
      ),
    );
  }

  Widget gridWidget() {
    return Padding(
      padding: smallMarginMobile,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of items in each row
          mainAxisSpacing: 8.0, // spacing between rows
          crossAxisSpacing: 8.0, // spacing between columns
          mainAxisExtent: 175,
        ),
        children: [
          gridCard(ViewCategoriesType.supervisor),
          gridCard(ViewCategoriesType.notificaciones),
          gridCard(ViewCategoriesType.lugares),
          gridCard(ViewCategoriesType.cerrar),
        ],
      ),
    );
  }

  Widget gridCard(ViewCategoriesType type) {
    return AnimatedButton(
      onPressed: () {
        switch (type) {
          case ViewCategoriesType.supervisor:
            gt.Get.to(
              () => SupervisionPage(),
              transition: gt.Transition.fadeIn,
            );
          case ViewCategoriesType.notificaciones:
            gt.Get.to(
              () => NotificacionesPage(),
              transition: gt.Transition.fadeIn,
            );
          case ViewCategoriesType.lugares:
            gt.Get.to(() => LugaresPage(), transition: gt.Transition.fadeIn);
          case ViewCategoriesType.cerrar:
            LogoutDialog().show();
            return;
        }
      },
      child: Container(
        padding: marginMobile,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: white,
          border: Border.all(color: white, width: 1),
        ),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                SizedBox(height: 20, width: double.infinity),
                Positioned(
                  top: -10,
                  child: Image.asset(type.image, height: 120),
                ),
              ],
            ),
            expandedSpacer(),
            Text(
              type.beautyName,
              style: context.textTheme.titleLarge?.copyWith(
                color: black2,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
