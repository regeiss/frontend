// ignore_for_file: always_put_required_named_parameters_first

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required int id,
    required String username,
    required String email,
    bool? isStaff, // Made nullable to handle API response
    bool? isActive, // Made nullable to handle API response
    required DateTime dateJoined,
    required String name,
    String? firstName,
    String? lastName,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
abstract class AuthTokens with _$AuthTokens {
  // Construtor privado para extensões

  const factory AuthTokens({
    required String accessToken,
    required String refreshToken,
    required User user,
  }) = _AuthTokens;
  const AuthTokens._();

  factory AuthTokens.fromJson(Map<String, dynamic> json) =>
      _$AuthTokensFromJson(json);
}

@freezed
abstract class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String username,
    required String password,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);

  // REMOVIDO: Override incorreto do toJson() que estava causando conflito
}

@freezed
abstract class RegisterRequest with _$RegisterRequest {
  const factory RegisterRequest({
    required String username,
    required String email,
    required String password,
    required String passwordConfirm,
    String? firstName,
    String? lastName,
  }) = _RegisterRequest;

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);
}

extension UserExtension on User {
  String get fullName {
    final parts = <String>[];
    if (firstName != null && firstName!.isNotEmpty) {
      parts.add(firstName!);
    }
    if (lastName != null && lastName!.isNotEmpty) {
      parts.add(lastName!);
    }
    return parts.isNotEmpty ? parts.join(' ') : username;
  }

  String get initials {
    final parts = <String>[];
    if (firstName != null && firstName!.isNotEmpty) {
      parts.add(firstName!.substring(0, 1).toUpperCase());
    }
    if (lastName != null && lastName!.isNotEmpty) {
      parts.add(lastName!.substring(0, 1).toUpperCase());
    }
    if (parts.isEmpty) {
      parts.add(username.substring(0, 1).toUpperCase());
    }
    return parts.join();
  }

  String get displayName => fullName.isNotEmpty ? fullName : username;
}
