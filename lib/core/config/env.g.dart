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
    2443853151,
    3892149628,
    2877861111,
    200103462,
    3494044053,
    2654269786,
    3546469383,
    2527488011,
    399572659,
    348639422,
    36984299,
    3088144834,
    1240588604,
    2038247271,
    3836465736,
    831464380,
    2222294753,
    1702543979,
  ];

  static const List<int> _envieddatafirebaseProjectId = <int>[
    2443853116,
    3892149533,
    2877861011,
    200103495,
    3494044134,
    2654269742,
    3546469493,
    2527488100,
    399572638,
    348639435,
    36984197,
    3088144811,
    1240588634,
    2038247182,
    3836465707,
    831464413,
    2222294661,
    1702543876,
  ];

  static final String firebaseProjectId = String.fromCharCodes(
      List<int>.generate(
    _envieddatafirebaseProjectId.length,
    (int i) => i,
    growable: false,
  ).map((int i) =>
          _envieddatafirebaseProjectId[i] ^ _enviedkeyfirebaseProjectId[i]));

  static const List<int> _enviedkeyfirebaseAppId = <int>[
    1825909173,
    92941803,
    3417487748,
    2354154169,
    1484520519,
    248634315,
    548373949,
    3515908683,
    3615507266,
    2213713828,
    2474928368,
    2524027259,
    1343387174,
    2164307697,
    2434403274,
    1449379198,
    3771218041,
    1337774054,
    3118551908,
    4266687328,
    1664246536,
    3395170804,
    4049991632,
    3266785457,
    505171461,
    3038502726,
  ];

  static const List<int> _envieddatafirebaseAppId = <int>[
    1825909124,
    92941777,
    3417487797,
    2354154123,
    1484520564,
    248634367,
    548373896,
    3515908733,
    3615507317,
    2213713820,
    2474928329,
    2524027201,
    1343387207,
    2164307615,
    2434403246,
    1449379084,
    3771217942,
    1337773967,
    3118551808,
    4266687322,
    1664246633,
    3395170710,
    4049991603,
    3266785493,
    505171552,
    3038502688,
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
