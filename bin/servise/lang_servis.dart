
import 'locals/en_US.dart';
import 'locals/ru_RU.dart';
import 'locals/uz_UZ.dart';


enum Language { en, ru, uz }

class LangServise {
  // feild
  static Language _language = Language.en;




  // getter setter
  static set language(Language language) {
    _language = language;
  }

  static Language get language => _language;

  static String tr(String key) {
    switch (language) {
      case Language.en:
        return enUS[key] ?? key;
      case Language.ru:
        return ruRU[key] ?? key;
      case Language.uz:
        return uzUZ[key] ?? key;
    }
  }
}
