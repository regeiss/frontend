// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _Env {
  static const String apiBaseUrl = 'http://10.13.65.37:8001/api/v1';

  static const int apiTimeout = 30000;

  static const String environment = 'development';

  static const bool debugMode = true;

  static const List<int> _enviedkeyfirebaseProjectId = <int>[
    3630534419,
    4019756658,
    3500079806,
    1851428199,
    2426536916,
    845098022,
    2535554925,
    213948515,
    440634479,
    808820063,
    996162387,
    1186417484,
    908433990,
    224674007,
    3932085022,
    4130494484,
    3715102279,
    3777447163,
  ];

  static const List<int> _envieddatafirebaseProjectId = <int>[
    3630534512,
    4019756563,
    3500079834,
    1851428102,
    2426536871,
    845098066,
    2535554847,
    213948428,
    440634434,
    808820010,
    996162365,
    1186417445,
    908433952,
    224673982,
    3932085117,
    4130494581,
    3715102243,
    3777447060,
  ];

  static final String firebaseProjectId = String.fromCharCodes(
      List<int>.generate(
    _envieddatafirebaseProjectId.length,
    (int i) => i,
    growable: false,
  ).map((int i) =>
          _envieddatafirebaseProjectId[i] ^ _enviedkeyfirebaseProjectId[i]));

  static const List<int> _enviedkeyfirebaseAppId = <int>[
    607170884,
    3005029734,
    2863239022,
    2391551215,
    2230787824,
    2677542885,
    468241087,
    3447694304,
    983028311,
    4224591746,
    1672765096,
    797130458,
    1268549378,
    1899070033,
    4152778997,
    4269183130,
    3987509528,
    902072539,
    2008577578,
    4261280226,
    2053433730,
    1629638296,
    2543147164,
    546777765,
    1477305847,
    2313927470,
  ];

  static const List<int> _envieddatafirebaseAppId = <int>[
    607170933,
    3005029724,
    2863239007,
    2391551197,
    2230787779,
    2677542865,
    468241034,
    3447694294,
    983028320,
    4224591802,
    1672765073,
    797130464,
    1268549475,
    1899070015,
    4152778897,
    4269183208,
    3987509623,
    902072498,
    2008577614,
    4261280216,
    2053433827,
    1629638394,
    2543147263,
    546777793,
    1477305746,
    2313927496,
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
