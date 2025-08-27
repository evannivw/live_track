import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum FlotaStatusType {
  active,
  inactive,
  maintenance;

  Color get color {
    switch (this) {
      case FlotaStatusType.active:
        return Colors.green;
      case FlotaStatusType.inactive:
        return Colors.black;
      case FlotaStatusType.maintenance:
        return Colors.red;
    }
  }
}
