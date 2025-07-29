// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'responsavel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Responsavel _$ResponsavelFromJson(Map<String, dynamic> json) {
  return _Responsavel.fromJson(json);
}

/// @nodoc
mixin _$Responsavel {
  String get cpf => throw _privateConstructorUsedError;
  String get nome => throw _privateConstructorUsedError;
  String get cep => throw _privateConstructorUsedError;
  int get numero => throw _privateConstructorUsedError;
  String? get complemento => throw _privateConstructorUsedError;
  int? get telefone => throw _privateConstructorUsedError;
  String? get bairro => throw _privateConstructorUsedError;
  String? get logradouro => throw _privateConstructorUsedError;
  String? get nomeMae => throw _privateConstructorUsedError;
  DateTime? get dataNasc => throw _privateConstructorUsedError;
  DateTime? get timestamp => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get codRge => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String cpf,
            String nome,
            String cep,
            int numero,
            String? complemento,
            int? telefone,
            String? bairro,
            String? logradouro,
            String? nomeMae,
            DateTime? dataNasc,
            DateTime? timestamp,
            String? status,
            int? codRge)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String cpf,
            String nome,
            String cep,
            int numero,
            String? complemento,
            int? telefone,
            String? bairro,
            String? logradouro,
            String? nomeMae,
            DateTime? dataNasc,
            DateTime? timestamp,
            String? status,
            int? codRge)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String cpf,
            String nome,
            String cep,
            int numero,
            String? complemento,
            int? telefone,
            String? bairro,
            String? logradouro,
            String? nomeMae,
            DateTime? dataNasc,
            DateTime? timestamp,
            String? status,
            int? codRge)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Responsavel value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Responsavel value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Responsavel value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Responsavel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Responsavel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponsavelCopyWith<Responsavel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponsavelCopyWith<$Res> {
  factory $ResponsavelCopyWith(
          Responsavel value, $Res Function(Responsavel) then) =
      _$ResponsavelCopyWithImpl<$Res, Responsavel>;
  @useResult
  $Res call(
      {String cpf,
      String nome,
      String cep,
      int numero,
      String? complemento,
      int? telefone,
      String? bairro,
      String? logradouro,
      String? nomeMae,
      DateTime? dataNasc,
      DateTime? timestamp,
      String? status,
      int? codRge});
}

/// @nodoc
class _$ResponsavelCopyWithImpl<$Res, $Val extends Responsavel>
    implements $ResponsavelCopyWith<$Res> {
  _$ResponsavelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Responsavel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpf = null,
    Object? nome = null,
    Object? cep = null,
    Object? numero = null,
    Object? complemento = freezed,
    Object? telefone = freezed,
    Object? bairro = freezed,
    Object? logradouro = freezed,
    Object? nomeMae = freezed,
    Object? dataNasc = freezed,
    Object? timestamp = freezed,
    Object? status = freezed,
    Object? codRge = freezed,
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
      cep: null == cep
          ? _value.cep
          : cep // ignore: cast_nullable_to_non_nullable
              as String,
      numero: null == numero
          ? _value.numero
          : numero // ignore: cast_nullable_to_non_nullable
              as int,
      complemento: freezed == complemento
          ? _value.complemento
          : complemento // ignore: cast_nullable_to_non_nullable
              as String?,
      telefone: freezed == telefone
          ? _value.telefone
          : telefone // ignore: cast_nullable_to_non_nullable
              as int?,
      bairro: freezed == bairro
          ? _value.bairro
          : bairro // ignore: cast_nullable_to_non_nullable
              as String?,
      logradouro: freezed == logradouro
          ? _value.logradouro
          : logradouro // ignore: cast_nullable_to_non_nullable
              as String?,
      nomeMae: freezed == nomeMae
          ? _value.nomeMae
          : nomeMae // ignore: cast_nullable_to_non_nullable
              as String?,
      dataNasc: freezed == dataNasc
          ? _value.dataNasc
          : dataNasc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      codRge: freezed == codRge
          ? _value.codRge
          : codRge // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponsavelImplCopyWith<$Res>
    implements $ResponsavelCopyWith<$Res> {
  factory _$$ResponsavelImplCopyWith(
          _$ResponsavelImpl value, $Res Function(_$ResponsavelImpl) then) =
      __$$ResponsavelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cpf,
      String nome,
      String cep,
      int numero,
      String? complemento,
      int? telefone,
      String? bairro,
      String? logradouro,
      String? nomeMae,
      DateTime? dataNasc,
      DateTime? timestamp,
      String? status,
      int? codRge});
}

/// @nodoc
class __$$ResponsavelImplCopyWithImpl<$Res>
    extends _$ResponsavelCopyWithImpl<$Res, _$ResponsavelImpl>
    implements _$$ResponsavelImplCopyWith<$Res> {
  __$$ResponsavelImplCopyWithImpl(
      _$ResponsavelImpl _value, $Res Function(_$ResponsavelImpl) _then)
      : super(_value, _then);

  /// Create a copy of Responsavel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpf = null,
    Object? nome = null,
    Object? cep = null,
    Object? numero = null,
    Object? complemento = freezed,
    Object? telefone = freezed,
    Object? bairro = freezed,
    Object? logradouro = freezed,
    Object? nomeMae = freezed,
    Object? dataNasc = freezed,
    Object? timestamp = freezed,
    Object? status = freezed,
    Object? codRge = freezed,
  }) {
    return _then(_$ResponsavelImpl(
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      cep: null == cep
          ? _value.cep
          : cep // ignore: cast_nullable_to_non_nullable
              as String,
      numero: null == numero
          ? _value.numero
          : numero // ignore: cast_nullable_to_non_nullable
              as int,
      complemento: freezed == complemento
          ? _value.complemento
          : complemento // ignore: cast_nullable_to_non_nullable
              as String?,
      telefone: freezed == telefone
          ? _value.telefone
          : telefone // ignore: cast_nullable_to_non_nullable
              as int?,
      bairro: freezed == bairro
          ? _value.bairro
          : bairro // ignore: cast_nullable_to_non_nullable
              as String?,
      logradouro: freezed == logradouro
          ? _value.logradouro
          : logradouro // ignore: cast_nullable_to_non_nullable
              as String?,
      nomeMae: freezed == nomeMae
          ? _value.nomeMae
          : nomeMae // ignore: cast_nullable_to_non_nullable
              as String?,
      dataNasc: freezed == dataNasc
          ? _value.dataNasc
          : dataNasc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      codRge: freezed == codRge
          ? _value.codRge
          : codRge // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponsavelImpl implements _Responsavel {
  const _$ResponsavelImpl(
      {required this.cpf,
      required this.nome,
      required this.cep,
      required this.numero,
      this.complemento,
      this.telefone,
      this.bairro,
      this.logradouro,
      this.nomeMae,
      this.dataNasc,
      this.timestamp,
      this.status,
      this.codRge});

  factory _$ResponsavelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponsavelImplFromJson(json);

  @override
  final String cpf;
  @override
  final String nome;
  @override
  final String cep;
  @override
  final int numero;
  @override
  final String? complemento;
  @override
  final int? telefone;
  @override
  final String? bairro;
  @override
  final String? logradouro;
  @override
  final String? nomeMae;
  @override
  final DateTime? dataNasc;
  @override
  final DateTime? timestamp;
  @override
  final String? status;
  @override
  final int? codRge;

  @override
  String toString() {
    return 'Responsavel(cpf: $cpf, nome: $nome, cep: $cep, numero: $numero, complemento: $complemento, telefone: $telefone, bairro: $bairro, logradouro: $logradouro, nomeMae: $nomeMae, dataNasc: $dataNasc, timestamp: $timestamp, status: $status, codRge: $codRge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponsavelImpl &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.cep, cep) || other.cep == cep) &&
            (identical(other.numero, numero) || other.numero == numero) &&
            (identical(other.complemento, complemento) ||
                other.complemento == complemento) &&
            (identical(other.telefone, telefone) ||
                other.telefone == telefone) &&
            (identical(other.bairro, bairro) || other.bairro == bairro) &&
            (identical(other.logradouro, logradouro) ||
                other.logradouro == logradouro) &&
            (identical(other.nomeMae, nomeMae) || other.nomeMae == nomeMae) &&
            (identical(other.dataNasc, dataNasc) ||
                other.dataNasc == dataNasc) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.codRge, codRge) || other.codRge == codRge));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cpf,
      nome,
      cep,
      numero,
      complemento,
      telefone,
      bairro,
      logradouro,
      nomeMae,
      dataNasc,
      timestamp,
      status,
      codRge);

  /// Create a copy of Responsavel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponsavelImplCopyWith<_$ResponsavelImpl> get copyWith =>
      __$$ResponsavelImplCopyWithImpl<_$ResponsavelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String cpf,
            String nome,
            String cep,
            int numero,
            String? complemento,
            int? telefone,
            String? bairro,
            String? logradouro,
            String? nomeMae,
            DateTime? dataNasc,
            DateTime? timestamp,
            String? status,
            int? codRge)
        $default,
  ) {
    return $default(cpf, nome, cep, numero, complemento, telefone, bairro,
        logradouro, nomeMae, dataNasc, timestamp, status, codRge);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String cpf,
            String nome,
            String cep,
            int numero,
            String? complemento,
            int? telefone,
            String? bairro,
            String? logradouro,
            String? nomeMae,
            DateTime? dataNasc,
            DateTime? timestamp,
            String? status,
            int? codRge)?
        $default,
  ) {
    return $default?.call(cpf, nome, cep, numero, complemento, telefone, bairro,
        logradouro, nomeMae, dataNasc, timestamp, status, codRge);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String cpf,
            String nome,
            String cep,
            int numero,
            String? complemento,
            int? telefone,
            String? bairro,
            String? logradouro,
            String? nomeMae,
            DateTime? dataNasc,
            DateTime? timestamp,
            String? status,
            int? codRge)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(cpf, nome, cep, numero, complemento, telefone, bairro,
          logradouro, nomeMae, dataNasc, timestamp, status, codRge);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Responsavel value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Responsavel value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Responsavel value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponsavelImplToJson(
      this,
    );
  }
}

abstract class _Responsavel implements Responsavel {
  const factory _Responsavel(
      {required final String cpf,
      required final String nome,
      required final String cep,
      required final int numero,
      final String? complemento,
      final int? telefone,
      final String? bairro,
      final String? logradouro,
      final String? nomeMae,
      final DateTime? dataNasc,
      final DateTime? timestamp,
      final String? status,
      final int? codRge}) = _$ResponsavelImpl;

  factory _Responsavel.fromJson(Map<String, dynamic> json) =
      _$ResponsavelImpl.fromJson;

  @override
  String get cpf;
  @override
  String get nome;
  @override
  String get cep;
  @override
  int get numero;
  @override
  String? get complemento;
  @override
  int? get telefone;
  @override
  String? get bairro;
  @override
  String? get logradouro;
  @override
  String? get nomeMae;
  @override
  DateTime? get dataNasc;
  @override
  DateTime? get timestamp;
  @override
  String? get status;
  @override
  int? get codRge;

  /// Create a copy of Responsavel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponsavelImplCopyWith<_$ResponsavelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
