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
    2241863748,
    2976275490,
    1410933537,
    691044629,
    3748314199,
    2275179500,
    4189131163,
    1518403033,
    610141889,
    1006704655,
    3714971970,
    3886429954,
    436473259,
    326449801,
    1085367329,
    1229237213,
    3086029223,
    8154479,
  ];

  static const List<int> _envieddatafirebaseProjectId = <int>[
    2241863719,
    2976275523,
    1410933573,
    691044724,
    3748314148,
    2275179416,
    4189131241,
    1518402998,
    610141932,
    1006704762,
    3714971948,
    3886430059,
    436473293,
    326449888,
    1085367362,
    1229237180,
    3086029251,
    8154368,
  ];

  static final String firebaseProjectId = String.fromCharCodes(
      List<int>.generate(
    _envieddatafirebaseProjectId.length,
    (int i) => i,
    growable: false,
  ).map((int i) =>
          _envieddatafirebaseProjectId[i] ^ _enviedkeyfirebaseProjectId[i]));

  static const List<int> _enviedkeyfirebaseAppId = <int>[
    2531146342,
    3648093372,
    274593848,
    1690086850,
    1838171328,
    1415375451,
    1921569396,
    306666996,
    3775911582,
    2144753841,
    660431765,
    1509692879,
    3309376037,
    3652968143,
    3681266775,
    1615956179,
    626610605,
    2756962607,
    3247518275,
    67242522,
    2439997087,
    3157460822,
    2160342054,
    2168315795,
    3297009820,
    2430318734,
  ];

  static const List<int> _envieddatafirebaseAppId = <int>[
    2531146327,
    3648093318,
    274593801,
    1690086896,
    1838171379,
    1415375471,
    1921569345,
    306666946,
    3775911593,
    2144753801,
    660431788,
    1509692917,
    3309376068,
    3652968097,
    3681266739,
    1615956129,
    626610626,
    2756962630,
    3247518247,
    67242528,
    2439997182,
    3157460788,
    2160342085,
    2168315895,
    3297009913,
    2430318824,
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
