import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import 'global_data_helper.dart';

class SnackbarHelper {
  void showSuccessMessage(String text, BuildContext context) {
    showTopSnackBar(
      Overlay.of(context),
      _successContent(text),
      displayDuration: const Duration(milliseconds: 300),
    );
  }

  void showErrorMessage(String text, BuildContext context) {
    showTopSnackBar(
      Overlay.of(context),
      _baseContent(text),
      displayDuration: const Duration(milliseconds: 300),
    );
  }

  void showWarningMessage(String text, BuildContext context) {
    showTopSnackBar(
      Overlay.of(context),
      _warningContent(text),
      displayDuration: const Duration(milliseconds: 300),
    );
  }

  Widget _warningContent(String text) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 700),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: purple,
        ),
        child: Material(
          color: Colors.black.withOpacity(0),
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 12,
              bottom: 12,
            ),
            child: Text(text, style: const TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }

  Widget _baseContent(String text) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 700),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: red1,
        ),
        child: Material(
          color: Colors.black.withOpacity(0),
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 12,
              bottom: 12,
            ),
            child: Text(text, style: const TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }

  Widget _successContent(String text) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 700),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.green,
        ),
        child: Material(
          color: Colors.black.withOpacity(0),
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 12,
              bottom: 12,
            ),
            child: Text(text, style: const TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
