// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_User',
      json,
      ($checkedConvert) {
        final val = _User(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          username: $checkedConvert('username', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          isStaff: $checkedConvert('is_staff', (v) => v as bool),
          isActive: $checkedConvert('is_active', (v) => v as bool),
          dateJoined: $checkedConvert(
              'date_joined', (v) => DateTime.parse(v as String)),
          firstName: $checkedConvert('first_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'isStaff': 'is_staff',
        'isActive': 'is_active',
        'dateJoined': 'date_joined',
        'firstName': 'first_name',
        'lastName': 'last_name'
      },
    );

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'is_staff': instance.isStaff,
      'is_active': instance.isActive,
      'date_joined': instance.dateJoined.toIso8601String(),
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };

_AuthTokens _$AuthTokensFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_AuthTokens',
      json,
      ($checkedConvert) {
        final val = _AuthTokens(
          accessToken: $checkedConvert('access_token', (v) => v as String),
          refreshToken: $checkedConvert('refresh_token', (v) => v as String),
          user: $checkedConvert(
              'user', (v) => User.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'accessToken': 'access_token',
        'refreshToken': 'refresh_token'
      },
    );

Map<String, dynamic> _$AuthTokensToJson(_AuthTokens instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'user': instance.user,
    };

_LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_LoginRequest',
      json,
      ($checkedConvert) {
        final val = _LoginRequest(
          username: $checkedConvert('username', (v) => v as String),
          password: $checkedConvert('password', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$LoginRequestToJson(_LoginRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

_RegisterRequest _$RegisterRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_RegisterRequest',
      json,
      ($checkedConvert) {
        final val = _RegisterRequest(
          username: $checkedConvert('username', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          password: $checkedConvert('password', (v) => v as String),
          passwordConfirm:
              $checkedConvert('password_confirm', (v) => v as String),
          firstName: $checkedConvert('first_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'passwordConfirm': 'password_confirm',
        'firstName': 'first_name',
        'lastName': 'last_name'
      },
    );

Map<String, dynamic> _$RegisterRequestToJson(_RegisterRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'password_confirm': instance.passwordConfirm,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };
