// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'responsavel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Responsavel {
  String get cpf;
  String get nome;
  String get cep;
  int get numero;
  String? get complemento;
  int? get telefone;
  String? get bairro;
  String? get logradouro;
  String? get nomeMae;
  DateTime? get dataNasc;
  DateTime? get timestamp;
  String? get status;
  int? get codRge;

  /// Create a copy of Responsavel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponsavelCopyWith<Responsavel> get copyWith =>
      _$ResponsavelCopyWithImpl<Responsavel>(this as Responsavel, _$identity);

  /// Serializes this Responsavel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Responsavel &&
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

  @override
  String toString() {
    return 'Responsavel(cpf: $cpf, nome: $nome, cep: $cep, numero: $numero, complemento: $complemento, telefone: $telefone, bairro: $bairro, logradouro: $logradouro, nomeMae: $nomeMae, dataNasc: $dataNasc, timestamp: $timestamp, status: $status, codRge: $codRge)';
  }
}

/// @nodoc
abstract mixin class $ResponsavelCopyWith<$Res> {
  factory $ResponsavelCopyWith(
          Responsavel value, $Res Function(Responsavel) _then) =
      _$ResponsavelCopyWithImpl;
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
class _$ResponsavelCopyWithImpl<$Res> implements $ResponsavelCopyWith<$Res> {
  _$ResponsavelCopyWithImpl(this._self, this._then);

  final Responsavel _self;
  final $Res Function(Responsavel) _then;

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
    return _then(_self.copyWith(
      cpf: null == cpf
          ? _self.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      nome: null == nome
          ? _self.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      cep: null == cep
          ? _self.cep
          : cep // ignore: cast_nullable_to_non_nullable
              as String,
      numero: null == numero
          ? _self.numero
          : numero // ignore: cast_nullable_to_non_nullable
              as int,
      complemento: freezed == complemento
          ? _self.complemento
          : complemento // ignore: cast_nullable_to_non_nullable
              as String?,
      telefone: freezed == telefone
          ? _self.telefone
          : telefone // ignore: cast_nullable_to_non_nullable
              as int?,
      bairro: freezed == bairro
          ? _self.bairro
          : bairro // ignore: cast_nullable_to_non_nullable
              as String?,
      logradouro: freezed == logradouro
          ? _self.logradouro
          : logradouro // ignore: cast_nullable_to_non_nullable
              as String?,
      nomeMae: freezed == nomeMae
          ? _self.nomeMae
          : nomeMae // ignore: cast_nullable_to_non_nullable
              as String?,
      dataNasc: freezed == dataNasc
          ? _self.dataNasc
          : dataNasc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timestamp: freezed == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      codRge: freezed == codRge
          ? _self.codRge
          : codRge // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Responsavel].
extension ResponsavelPatterns on Responsavel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Responsavel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Responsavel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Responsavel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Responsavel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Responsavel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Responsavel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case _Responsavel() when $default != null:
        return $default(
            _that.cpf,
            _that.nome,
            _that.cep,
            _that.numero,
            _that.complemento,
            _that.telefone,
            _that.bairro,
            _that.logradouro,
            _that.nomeMae,
            _that.dataNasc,
            _that.timestamp,
            _that.status,
            _that.codRge);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case _Responsavel():
        return $default(
            _that.cpf,
            _that.nome,
            _that.cep,
            _that.numero,
            _that.complemento,
            _that.telefone,
            _that.bairro,
            _that.logradouro,
            _that.nomeMae,
            _that.dataNasc,
            _that.timestamp,
            _that.status,
            _that.codRge);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case _Responsavel() when $default != null:
        return $default(
            _that.cpf,
            _that.nome,
            _that.cep,
            _that.numero,
            _that.complemento,
            _that.telefone,
            _that.bairro,
            _that.logradouro,
            _that.nomeMae,
            _that.dataNasc,
            _that.timestamp,
            _that.status,
            _that.codRge);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Responsavel implements Responsavel {
  const _Responsavel(
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
  factory _Responsavel.fromJson(Map<String, dynamic> json) =>
      _$ResponsavelFromJson(json);

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

  /// Create a copy of Responsavel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResponsavelCopyWith<_Responsavel> get copyWith =>
      __$ResponsavelCopyWithImpl<_Responsavel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResponsavelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Responsavel &&
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

  @override
  String toString() {
    return 'Responsavel(cpf: $cpf, nome: $nome, cep: $cep, numero: $numero, complemento: $complemento, telefone: $telefone, bairro: $bairro, logradouro: $logradouro, nomeMae: $nomeMae, dataNasc: $dataNasc, timestamp: $timestamp, status: $status, codRge: $codRge)';
  }
}

/// @nodoc
abstract mixin class _$ResponsavelCopyWith<$Res>
    implements $ResponsavelCopyWith<$Res> {
  factory _$ResponsavelCopyWith(
          _Responsavel value, $Res Function(_Responsavel) _then) =
      __$ResponsavelCopyWithImpl;
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
class __$ResponsavelCopyWithImpl<$Res> implements _$ResponsavelCopyWith<$Res> {
  __$ResponsavelCopyWithImpl(this._self, this._then);

  final _Responsavel _self;
  final $Res Function(_Responsavel) _then;

  /// Create a copy of Responsavel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_Responsavel(
      cpf: null == cpf
          ? _self.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      nome: null == nome
          ? _self.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      cep: null == cep
          ? _self.cep
          : cep // ignore: cast_nullable_to_non_nullable
              as String,
      numero: null == numero
          ? _self.numero
          : numero // ignore: cast_nullable_to_non_nullable
              as int,
      complemento: freezed == complemento
          ? _self.complemento
          : complemento // ignore: cast_nullable_to_non_nullable
              as String?,
      telefone: freezed == telefone
          ? _self.telefone
          : telefone // ignore: cast_nullable_to_non_nullable
              as int?,
      bairro: freezed == bairro
          ? _self.bairro
          : bairro // ignore: cast_nullable_to_non_nullable
              as String?,
      logradouro: freezed == logradouro
          ? _self.logradouro
          : logradouro // ignore: cast_nullable_to_non_nullable
              as String?,
      nomeMae: freezed == nomeMae
          ? _self.nomeMae
          : nomeMae // ignore: cast_nullable_to_non_nullable
              as String?,
      dataNasc: freezed == dataNasc
          ? _self.dataNasc
          : dataNasc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timestamp: freezed == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      codRge: freezed == codRge
          ? _self.codRge
          : codRge // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
