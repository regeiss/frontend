import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String username,
    required String email,
    required bool isStaff, 
    required bool isActive, 
    required DateTime dateJoined, 
    String? firstName,
    String? lastName,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class AuthTokens with _$AuthTokens {
  const factory AuthTokens({
    required String accessToken,
    required String refreshToken,
    required User user,
  }) = _AuthTokens;

  factory AuthTokens.fromJson(Map<String, dynamic> json) =>
      _$AuthTokensFromJson(json);
}

@freezed
class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String username,
    required String password,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);

  // CORREÇÃO: Implementar o método toJson corretamente
  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}

@freezed
class RegisterRequest with _$RegisterRequest {
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