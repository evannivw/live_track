import 'package:intl/intl.dart';

extension PrettyDate on DateTime {
  /// Retorna algo como: "26 ago 2025, 14:35"
  String toPrettyString() {
    return DateFormat("d MMM yyyy, HH:mm", "es_ES").format(this);
  }

  /// Solo la fecha: "26/08/2025"
  String toShortDate() {
    return DateFormat("dd/MM/yyyy").format(this);
  }

  /// Solo la hora: "14:35"
  String toHourMinute() {
    return DateFormat("HH:mm").format(this);
  }

  /// Relativo: "hace 2 horas", "ayer", "justo ahora"
  String toRelative() {
    final now = DateTime.now();
    final diff = now.difference(this);

    if (diff.inSeconds < 60) return "justo ahora";
    if (diff.inMinutes < 60) return "hace ${diff.inMinutes} min";
    if (diff.inHours < 24) return "hace ${diff.inHours} h";
    if (diff.inDays == 1) return "ayer";
    if (diff.inDays < 7) return "hace ${diff.inDays} días";
    return DateFormat("d MMM yyyy").format(this);
  }
}
