import '../models/surah.dart';

class DemoData {
  static const surahs = <Surah>[
    Surah(number: 1, name: 'الفاتحة', translation: 'The Opening', ayahs: 7, revelation: 'مكية'),
    Surah(number: 2, name: 'البقرة', translation: 'The Cow', ayahs: 286, revelation: 'مدنية'),
    Surah(number: 3, name: 'آل عمران', translation: 'Family of Imran', ayahs: 200, revelation: 'مدنية'),
    Surah(number: 4, name: 'النساء', translation: 'The Women', ayahs: 176, revelation: 'مدنية'),
    Surah(number: 5, name: 'المائدة', translation: 'The Table Spread', ayahs: 120, revelation: 'مدنية'),
    Surah(number: 6, name: 'الأنعام', translation: 'The Cattle', ayahs: 165, revelation: 'مكية'),
    Surah(number: 7, name: 'الأعراف', translation: 'The Heights', ayahs: 206, revelation: 'مكية'),
    Surah(number: 8, name: 'الأنفال', translation: 'The Spoils of War', ayahs: 75, revelation: 'مدنية'),
  ];
}
