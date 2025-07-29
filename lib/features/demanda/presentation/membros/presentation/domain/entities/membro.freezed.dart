// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'membro.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Membro _$MembroFromJson(Map<String, dynamic> json) {
  return _Membro.fromJson(json);
}

/// @nodoc
mixin _$Membro {
  String get cpf => throw _privateConstructorUsedError;
  String get nome => throw _privateConstructorUsedError;
  String get cpfResponsavel => throw _privateConstructorUsedError;
  DateTime? get timestamp => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String cpf, String nome, String cpfResponsavel,
            DateTime? timestamp, String? status)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String cpf, String nome, String cpfResponsavel,
            DateTime? timestamp, String? status)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String cpf, String nome, String cpfResponsavel,
            DateTime? timestamp, String? status)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Membro value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Membro value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Membro value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Membro to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Membro
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MembroCopyWith<Membro> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembroCopyWith<$Res> {
  factory $MembroCopyWith(Membro value, $Res Function(Membro) then) =
      _$MembroCopyWithImpl<$Res, Membro>;
  @useResult
  $Res call(
      {String cpf,
      String nome,
      String cpfResponsavel,
      DateTime? timestamp,
      String? status});
}

/// @nodoc
class _$MembroCopyWithImpl<$Res, $Val extends Membro>
    implements $MembroCopyWith<$Res> {
  _$MembroCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Membro
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpf = null,
    Object? nome = null,
    Object? cpfResponsavel = null,
    Object? timestamp = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      cpfResponsavel: null == cpfResponsavel
          ? _value.cpfResponsavel
          : cpfResponsavel // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MembroImplCopyWith<$Res> implements $MembroCopyWith<$Res> {
  factory _$$MembroImplCopyWith(
          _$MembroImpl value, $Res Function(_$MembroImpl) then) =
      __$$MembroImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cpf,
      String nome,
      String cpfResponsavel,
      DateTime? timestamp,
      String? status});
}

/// @nodoc
class __$$MembroImplCopyWithImpl<$Res>
    extends _$MembroCopyWithImpl<$Res, _$MembroImpl>
    implements _$$MembroImplCopyWith<$Res> {
  __$$MembroImplCopyWithImpl(
      _$MembroImpl _value, $Res Function(_$MembroImpl) _then)
      : super(_value, _then);

  /// Create a copy of Membro
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpf = null,
    Object? nome = null,
    Object? cpfResponsavel = null,
    Object? timestamp = freezed,
    Object? status = freezed,
  }) {
    return _then(_$MembroImpl(
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      cpfResponsavel: null == cpfResponsavel
          ? _value.cpfResponsavel
          : cpfResponsavel // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MembroImpl implements _Membro {
  const _$MembroImpl(
      {required this.cpf,
      required this.nome,
      required this.cpfResponsavel,
      this.timestamp,
      this.status});

  factory _$MembroImpl.fromJson(Map<String, dynamic> json) =>
      _$$MembroImplFromJson(json);

  @override
  final String cpf;
  @override
  final String nome;
  @override
  final String cpfResponsavel;
  @override
  final DateTime? timestamp;
  @override
  final String? status;

  @override
  String toString() {
    return 'Membro(cpf: $cpf, nome: $nome, cpfResponsavel: $cpfResponsavel, timestamp: $timestamp, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MembroImpl &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.cpfResponsavel, cpfResponsavel) ||
                other.cpfResponsavel == cpfResponsavel) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cpf, nome, cpfResponsavel, timestamp, status);

  /// Create a copy of Membro
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MembroImplCopyWith<_$MembroImpl> get copyWith =>
      __$$MembroImplCopyWithImpl<_$MembroImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String cpf, String nome, String cpfResponsavel,
            DateTime? timestamp, String? status)
        $default,
  ) {
    return $default(cpf, nome, cpfResponsavel, timestamp, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String cpf, String nome, String cpfResponsavel,
            DateTime? timestamp, String? status)?
        $default,
  ) {
    return $default?.call(cpf, nome, cpfResponsavel, timestamp, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String cpf, String nome, String cpfResponsavel,
            DateTime? timestamp, String? status)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(cpf, nome, cpfResponsavel, timestamp, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Membro value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Membro value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Membro value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MembroImplToJson(
      this,
    );
  }
}

abstract class _Membro implements Membro {
  const factory _Membro(
      {required final String cpf,
      required final String nome,
      required final String cpfResponsavel,
      final DateTime? timestamp,
      final String? status}) = _$MembroImpl;

  factory _Membro.fromJson(Map<String, dynamic> json) = _$MembroImpl.fromJson;

  @override
  String get cpf;
  @override
  String get nome;
  @override
  String get cpfResponsavel;
  @override
  DateTime? get timestamp;
  @override
  String? get status;

  /// Create a copy of Membro
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MembroImplCopyWith<_$MembroImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
