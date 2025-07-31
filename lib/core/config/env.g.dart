// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// generated_from: .env
final class _Env {
  static const String apiBaseUrl = 'http://10.13.65.37:8001/api/v1';

  static const int apiTimeout = 30000;

  static const String environment = 'development';

  static const bool debugMode = true;

  static const List<int> _enviedkeyfirebaseProjectId = <int>[
    924160691,
    772173312,
    1305463025,
    4233812315,
    1234168496,
    1136965395,
    2213710271,
    1796344551,
    1623141024,
    2623447631,
    4077710772,
    4142567067,
    481927674,
    1690728967,
    1884236589,
    4080890826,
    2183210104,
    3869948650,
  ];

  static const List<int> _envieddatafirebaseProjectId = <int>[
    924160720,
    772173409,
    1305462933,
    4233812282,
    1234168515,
    1136965479,
    2213710285,
    1796344456,
    1623141005,
    2623447610,
    4077710810,
    4142567154,
    481927580,
    1690729070,
    1884236622,
    4080890795,
    2183210012,
    3869948549,
  ];

  static final String firebaseProjectId = String.fromCharCodes(
      List<int>.generate(
    _envieddatafirebaseProjectId.length,
    (int i) => i,
    growable: false,
  ).map((int i) =>
          _envieddatafirebaseProjectId[i] ^ _enviedkeyfirebaseProjectId[i]));

  static const List<int> _enviedkeyfirebaseAppId = <int>[
    2353141289,
    117499537,
    3098259075,
    2943798196,
    2576764143,
    1122839548,
    501363121,
    915784096,
    2813568615,
    2227079110,
    1251375200,
    153743104,
    874849905,
    1478256643,
    4165596426,
    1647379807,
    3946557561,
    1586910734,
    661160237,
    1099063698,
    2322432702,
    181071331,
    1874315636,
    3670564066,
    4070894819,
    1492529640,
  ];

  static const List<int> _envieddatafirebaseAppId = <int>[
    2353141272,
    117499563,
    3098259122,
    2943798150,
    2576764124,
    1122839496,
    501363076,
    915784086,
    2813568592,
    2227079166,
    1251375193,
    153743162,
    874849808,
    1478256749,
    4165596526,
    1647379757,
    3946557462,
    1586910823,
    661160265,
    1099063720,
    2322432735,
    181071233,
    1874315543,
    3670563974,
    4070894726,
    1492529550,
  ];

  static final String firebaseAppId = String.fromCharCodes(List<int>.generate(
    _envieddatafirebaseAppId.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddatafirebaseAppId[i] ^ _enviedkeyfirebaseAppId[i]));

  static const bool enableAnalytics = true;

  static const bool enableCrashlytics = true;

  static const bool enableLogging = true;

  static const String appName = 'Cadastro Unificado';

  static const String appVersion = '1.0.0';
}
