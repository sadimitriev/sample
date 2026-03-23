import 'package:flutter/material.dart';
import 'package:sample/localization/l10n/app_localizations.dart';
import 'package:sample/localization/s.dart';
import 'package:sample/presentation/style/app_text_styles.dart';

class UIHelpers {
  static final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
  static GlobalKey<ScaffoldMessengerState> get rootScaffoldMessengerKey =>
      _scaffoldMessengerKey;

  static void showSnackBar(String message) {
    _scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(content: Text(message, style: AppTextStyles.s18w400)),
    );
  }

  static AppLocalizations get s {
    if (_scaffoldMessengerKey.currentContext == null) {
      throw Exception("CONTEXT IS NULL");
    }
    return S.of(_scaffoldMessengerKey.currentContext!);
  }

  static String errorMessageBuilder(String prefix, String? originalErrorText){
    var notSpecifiedText = s.initiatorFioNotSpecified;
    return "$prefix${originalErrorText ?? notSpecifiedText}";
  }
}

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message, style: AppTextStyles.s18w400)),
  );
}
