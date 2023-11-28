import 'package:colortaxi/lang/app_de.dart';
import 'package:colortaxi/lang/app_en.dart';
import 'package:colortaxi/lang/app_fr.dart';
import 'package:colortaxi/lang/app_hi.dart';
import 'package:colortaxi/lang/app_ja.dart';
import 'package:colortaxi/lang/app_pt.dart';
import 'package:colortaxi/lang/app_ru.dart';
import 'package:colortaxi/lang/app_zh.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalizationService extends Translations {
  // Default locale
  static const locale = Locale('en', 'US');

  static final locales = [
    const Locale('en'),

  ];

  // Keys and their translations
  // Translations are separated maps in `lang` file
  @override
  Map<String, Map<String, String>> get keys => {
        'en': enUS,

      };

  // Gets locale from language, and updates the locale
  void changeLocale(String lang) {
    Get.updateLocale(Locale(lang));
  }
}
