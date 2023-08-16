import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:riverside/data/repository/local/local_repository.dart';

enum LanguageApp { ru, en }

extension LanguageAppEx on LanguageApp {
  String get name => describeEnum(this);
}

class LanguageScreenService extends GetxService {
  LanguageScreenService({LocalRepository? repo})
      : repoLocal = repo ?? GetIt.I.get();

  final LocalRepository repoLocal;

  final _language = LanguageApp.ru.obs;
  LanguageApp get language$ => _language();

  //выбор языка
  final mapLang = {
    'ru': Language(lang: 'Русский', path: ''),
    'en': Language(lang: 'English', path: ''),
  };

  bool selectedLang(String lang) => language$.name == lang;

  LanguageApp _lang(String l) => LanguageApp.values.byName(l);

  Future changeLanguage(String language, BuildContext context) async {
    _language(_lang(language));
    EasyLocalization.of(context)?.setLocale(Locale(language));
    // await repoLocal.writeLanguage(NonEmptyString.asLanguage(language));
  }

  Future startLang(Locale? locale, BuildContext context) async {
    _language(_lang(locale?.languageCode ?? ''));
    EasyLocalization.of(context)?.setLocale(context.locale);
    // await repoLocal
    //     .writeLanguage(NonEmptyString.asLanguage(locale?.languageCode ?? ''));
  }
}

class Language {
  Language({required this.path, required this.lang});
  final String path;
  final String lang;
}
