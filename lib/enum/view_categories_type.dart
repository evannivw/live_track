import 'package:live_track/config/images_helper.dart';

enum ViewCategoriesType {
  supervisor,
  notificaciones,
  lugares,
  cerrar;

  String get image {
    switch (this) {
      case ViewCategoriesType.supervisor:
        return ImagesHelper.supervisionIcono;
      case ViewCategoriesType.notificaciones:
        return ImagesHelper.notificacionesIcono;
      case ViewCategoriesType.lugares:
        return ImagesHelper.lugaresIcono;
      case ViewCategoriesType.cerrar:
        return ImagesHelper.cerrarSesionIcono;
    }
  }

  String get beautyName {
    switch (this) {
      case ViewCategoriesType.supervisor:
        return "Supervisor";
      case ViewCategoriesType.notificaciones:
        return "Notificaciones";
      case ViewCategoriesType.lugares:
        return "Lugares";
      case ViewCategoriesType.cerrar:
        return "Cerrar sesion";
    }
  }
}
