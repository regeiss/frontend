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
    2650225543,
    531844543,
    3508331304,
    1993534836,
    1867775733,
    1096154494,
    3629189140,
    2224435896,
    197148787,
    409409166,
    3586463001,
    2100871592,
    159876288,
    1250430771,
    3390340401,
    2162902548,
    4084635944,
    362636918,
  ];

  static const List<int> _envieddatafirebaseProjectId = <int>[
    2650225636,
    531844574,
    3508331340,
    1993534741,
    1867775622,
    1096154378,
    3629189222,
    2224435927,
    197148766,
    409409275,
    3586463095,
    2100871617,
    159876262,
    1250430810,
    3390340434,
    2162902645,
    4084635980,
    362636825,
  ];

  static final String firebaseProjectId = String.fromCharCodes(
      List<int>.generate(
    _envieddatafirebaseProjectId.length,
    (int i) => i,
    growable: false,
  ).map((int i) =>
          _envieddatafirebaseProjectId[i] ^ _enviedkeyfirebaseProjectId[i]));

  static const List<int> _enviedkeyfirebaseAppId = <int>[
    3786849815,
    3353038845,
    1031991376,
    1215290091,
    2326215667,
    1307605434,
    3344550961,
    2280971404,
    1416208598,
    2122656351,
    3749439127,
    2474582895,
    1691825435,
    3709025670,
    3294122863,
    838707147,
    3577923281,
    4007154717,
    3932082732,
    984606442,
    2725834282,
    548004018,
    3979741531,
    410467559,
    828267754,
    1209107143,
  ];

  static const List<int> _envieddatafirebaseAppId = <int>[
    3786849830,
    3353038791,
    1031991393,
    1215290073,
    2326215616,
    1307605390,
    3344550916,
    2280971450,
    1416208609,
    2122656359,
    3749439150,
    2474582869,
    1691825530,
    3709025768,
    3294122763,
    838707129,
    3577923262,
    4007154804,
    3932082760,
    984606416,
    2725834315,
    548004048,
    3979741496,
    410467459,
    828267663,
    1209107105,
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
