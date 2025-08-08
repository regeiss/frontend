// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// generated_from: .env
final class _Env {
  static const String apiBaseUrl =
      'https://dev-ca-unico.novohamburgo.rs.gov.br/api/v1';

  static const int apiTimeout = 30000;

  static const String environment = 'development';

  static const bool debugMode = true;

  static const List<int> _enviedkeyfirebaseProjectId = <int>[
    2080604425,
    1438175225,
    1652255122,
    735208308,
    4061186075,
    3964717078,
    1547853357,
    1566569225,
    3230764870,
    3862328624,
    4214351540,
    4108059541,
    3629498740,
    484756588,
    111484660,
    913765859,
    1172973169,
    1128451272,
  ];

  static const List<int> _envieddatafirebaseProjectId = <int>[
    2080604522,
    1438175128,
    1652255222,
    735208213,
    4061186152,
    3964717154,
    1547853407,
    1566569318,
    3230764907,
    3862328645,
    4214351578,
    4108059644,
    3629498642,
    484756485,
    111484567,
    913765762,
    1172973077,
    1128451239,
  ];

  static final String firebaseProjectId = String.fromCharCodes(
      List<int>.generate(
    _envieddatafirebaseProjectId.length,
    (int i) => i,
    growable: false,
  ).map((int i) =>
          _envieddatafirebaseProjectId[i] ^ _enviedkeyfirebaseProjectId[i]));

  static const List<int> _enviedkeyfirebaseAppId = <int>[
    776039528,
    605464005,
    680782372,
    2904333890,
    3826271364,
    75241119,
    973050576,
    1727501564,
    1913920895,
    2016407413,
    4187075059,
    3693028092,
    1226755753,
    1684053782,
    3296448716,
    675571412,
    552582467,
    838114961,
    1688667204,
    1034084457,
    2633071659,
    1715997053,
    3136764549,
    3982432179,
    1995321224,
    2799463324,
  ];

  static const List<int> _envieddatafirebaseAppId = <int>[
    776039513,
    605464063,
    680782357,
    2904333936,
    3826271415,
    75241131,
    973050597,
    1727501514,
    1913920840,
    2016407373,
    4187075018,
    3693028038,
    1226755784,
    1684053880,
    3296448680,
    675571366,
    552582444,
    838115064,
    1688667168,
    1034084435,
    2633071690,
    1715996959,
    3136764646,
    3982432215,
    1995321325,
    2799463418,
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
