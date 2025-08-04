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
    700746062,
    2008154574,
    970021198,
    4174469982,
    2349032659,
    4081007913,
    1873535845,
    2342830224,
    1655384245,
    226472544,
    99210316,
    699413181,
    4017004030,
    4169879538,
    170746107,
    114208589,
    493489256,
    309015459,
  ];

  static const List<int> _envieddatafirebaseProjectId = <int>[
    700746029,
    2008154543,
    970021162,
    4174469951,
    2349032608,
    4081007965,
    1873535767,
    2342830335,
    1655384216,
    226472469,
    99210274,
    699413204,
    4017003928,
    4169879451,
    170746008,
    114208556,
    493489164,
    309015500,
  ];

  static final String firebaseProjectId = String.fromCharCodes(
      List<int>.generate(
    _envieddatafirebaseProjectId.length,
    (int i) => i,
    growable: false,
  ).map((int i) =>
          _envieddatafirebaseProjectId[i] ^ _enviedkeyfirebaseProjectId[i]));

  static const List<int> _enviedkeyfirebaseAppId = <int>[
    2889666302,
    1564801158,
    2886657164,
    425538303,
    945212076,
    2083117351,
    44629594,
    726106495,
    2511579390,
    3522597076,
    1314127006,
    1149096465,
    2149635795,
    154481996,
    3226215838,
    2236865705,
    95772107,
    2261305311,
    3339344747,
    2419185355,
    461545683,
    3524200797,
    200670217,
    1706413058,
    2498385059,
    3813409564,
  ];

  static const List<int> _envieddatafirebaseAppId = <int>[
    2889666255,
    1564801212,
    2886657213,
    425538253,
    945212063,
    2083117331,
    44629615,
    726106441,
    2511579337,
    3522597100,
    1314127015,
    1149096491,
    2149635762,
    154481954,
    3226215930,
    2236865755,
    95772068,
    2261305270,
    3339344655,
    2419185393,
    461545650,
    3524200767,
    200670314,
    1706413158,
    2498385094,
    3813409658,
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
