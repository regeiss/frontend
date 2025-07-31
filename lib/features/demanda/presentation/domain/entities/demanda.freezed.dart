// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'demanda.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Demanda {
  String get cpfResponsavel;
  TipoDemanda get tipo;
  String get demanda;
  DateTime get data;
  int? get id;
  String? get status;
  String? get evolucao;
  Map<String, dynamic>? get dadosEspecificos;

  /// Create a copy of Demanda
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DemandaCopyWith<Demanda> get copyWith =>
      _$DemandaCopyWithImpl<Demanda>(this as Demanda, _$identity);

  /// Serializes this Demanda to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Demanda &&
            (identical(other.cpfResponsavel, cpfResponsavel) ||
                other.cpfResponsavel == cpfResponsavel) &&
            (identical(other.tipo, tipo) || other.tipo == tipo) &&
            (identical(other.demanda, demanda) || other.demanda == demanda) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.evolucao, evolucao) ||
                other.evolucao == evolucao) &&
            const DeepCollectionEquality()
                .equals(other.dadosEspecificos, dadosEspecificos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cpfResponsavel,
      tipo,
      demanda,
      data,
      id,
      status,
      evolucao,
      const DeepCollectionEquality().hash(dadosEspecificos));

  @override
  String toString() {
    return 'Demanda(cpfResponsavel: $cpfResponsavel, tipo: $tipo, demanda: $demanda, data: $data, id: $id, status: $status, evolucao: $evolucao, dadosEspecificos: $dadosEspecificos)';
  }
}

/// @nodoc
abstract mixin class $DemandaCopyWith<$Res> {
  factory $DemandaCopyWith(Demanda value, $Res Function(Demanda) _then) =
      _$DemandaCopyWithImpl;
  @useResult
  $Res call(
      {String cpfResponsavel,
      TipoDemanda tipo,
      String demanda,
      DateTime data,
      int? id,
      String? status,
      String? evolucao,
      Map<String, dynamic>? dadosEspecificos});
}

/// @nodoc
class _$DemandaCopyWithImpl<$Res> implements $DemandaCopyWith<$Res> {
  _$DemandaCopyWithImpl(this._self, this._then);

  final Demanda _self;
  final $Res Function(Demanda) _then;

  /// Create a copy of Demanda
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpfResponsavel = null,
    Object? tipo = null,
    Object? demanda = null,
    Object? data = null,
    Object? id = freezed,
    Object? status = freezed,
    Object? evolucao = freezed,
    Object? dadosEspecificos = freezed,
  }) {
    return _then(_self.copyWith(
      cpfResponsavel: null == cpfResponsavel
          ? _self.cpfResponsavel
          : cpfResponsavel // ignore: cast_nullable_to_non_nullable
              as String,
      tipo: null == tipo
          ? _self.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as TipoDemanda,
      demanda: null == demanda
          ? _self.demanda
          : demanda // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      evolucao: freezed == evolucao
          ? _self.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
      dadosEspecificos: freezed == dadosEspecificos
          ? _self.dadosEspecificos
          : dadosEspecificos // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Demanda].
extension DemandaPatterns on Demanda {
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
    TResult Function(_Demanda value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Demanda() when $default != null:
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
    TResult Function(_Demanda value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Demanda():
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
    TResult? Function(_Demanda value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Demanda() when $default != null:
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
            String cpfResponsavel,
            TipoDemanda tipo,
            String demanda,
            DateTime data,
            int? id,
            String? status,
            String? evolucao,
            Map<String, dynamic>? dadosEspecificos)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Demanda() when $default != null:
        return $default(
            _that.cpfResponsavel,
            _that.tipo,
            _that.demanda,
            _that.data,
            _that.id,
            _that.status,
            _that.evolucao,
            _that.dadosEspecificos);
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
            String cpfResponsavel,
            TipoDemanda tipo,
            String demanda,
            DateTime data,
            int? id,
            String? status,
            String? evolucao,
            Map<String, dynamic>? dadosEspecificos)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Demanda():
        return $default(
            _that.cpfResponsavel,
            _that.tipo,
            _that.demanda,
            _that.data,
            _that.id,
            _that.status,
            _that.evolucao,
            _that.dadosEspecificos);
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
            String cpfResponsavel,
            TipoDemanda tipo,
            String demanda,
            DateTime data,
            int? id,
            String? status,
            String? evolucao,
            Map<String, dynamic>? dadosEspecificos)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Demanda() when $default != null:
        return $default(
            _that.cpfResponsavel,
            _that.tipo,
            _that.demanda,
            _that.data,
            _that.id,
            _that.status,
            _that.evolucao,
            _that.dadosEspecificos);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Demanda implements Demanda {
  const _Demanda(
      {required this.cpfResponsavel,
      required this.tipo,
      required this.demanda,
      required this.data,
      this.id,
      this.status,
      this.evolucao,
      final Map<String, dynamic>? dadosEspecificos})
      : _dadosEspecificos = dadosEspecificos;
  factory _Demanda.fromJson(Map<String, dynamic> json) =>
      _$DemandaFromJson(json);

  @override
  final String cpfResponsavel;
  @override
  final TipoDemanda tipo;
  @override
  final String demanda;
  @override
  final DateTime data;
  @override
  final int? id;
  @override
  final String? status;
  @override
  final String? evolucao;
  final Map<String, dynamic>? _dadosEspecificos;
  @override
  Map<String, dynamic>? get dadosEspecificos {
    final value = _dadosEspecificos;
    if (value == null) return null;
    if (_dadosEspecificos is EqualUnmodifiableMapView) return _dadosEspecificos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of Demanda
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DemandaCopyWith<_Demanda> get copyWith =>
      __$DemandaCopyWithImpl<_Demanda>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DemandaToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Demanda &&
            (identical(other.cpfResponsavel, cpfResponsavel) ||
                other.cpfResponsavel == cpfResponsavel) &&
            (identical(other.tipo, tipo) || other.tipo == tipo) &&
            (identical(other.demanda, demanda) || other.demanda == demanda) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.evolucao, evolucao) ||
                other.evolucao == evolucao) &&
            const DeepCollectionEquality()
                .equals(other._dadosEspecificos, _dadosEspecificos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cpfResponsavel,
      tipo,
      demanda,
      data,
      id,
      status,
      evolucao,
      const DeepCollectionEquality().hash(_dadosEspecificos));

  @override
  String toString() {
    return 'Demanda(cpfResponsavel: $cpfResponsavel, tipo: $tipo, demanda: $demanda, data: $data, id: $id, status: $status, evolucao: $evolucao, dadosEspecificos: $dadosEspecificos)';
  }
}

/// @nodoc
abstract mixin class _$DemandaCopyWith<$Res> implements $DemandaCopyWith<$Res> {
  factory _$DemandaCopyWith(_Demanda value, $Res Function(_Demanda) _then) =
      __$DemandaCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String cpfResponsavel,
      TipoDemanda tipo,
      String demanda,
      DateTime data,
      int? id,
      String? status,
      String? evolucao,
      Map<String, dynamic>? dadosEspecificos});
}

/// @nodoc
class __$DemandaCopyWithImpl<$Res> implements _$DemandaCopyWith<$Res> {
  __$DemandaCopyWithImpl(this._self, this._then);

  final _Demanda _self;
  final $Res Function(_Demanda) _then;

  /// Create a copy of Demanda
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cpfResponsavel = null,
    Object? tipo = null,
    Object? demanda = null,
    Object? data = null,
    Object? id = freezed,
    Object? status = freezed,
    Object? evolucao = freezed,
    Object? dadosEspecificos = freezed,
  }) {
    return _then(_Demanda(
      cpfResponsavel: null == cpfResponsavel
          ? _self.cpfResponsavel
          : cpfResponsavel // ignore: cast_nullable_to_non_nullable
              as String,
      tipo: null == tipo
          ? _self.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as TipoDemanda,
      demanda: null == demanda
          ? _self.demanda
          : demanda // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      evolucao: freezed == evolucao
          ? _self.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
      dadosEspecificos: freezed == dadosEspecificos
          ? _self._dadosEspecificos
          : dadosEspecificos // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$DemandaSaude {
  String get cpf;
  String get gestPuerNutriz;
  String get mobReduzida;
  String get cuidaOutrem;
  String get pcdOuMental;
  String? get genero;
  String? get saudeCid;
  DateTime? get dataNasc;
  String? get alergiaIntol;
  String? get subsPsicoativas;
  String? get medControlada;
  String? get localRef;
  String? get evolucao;

  /// Create a copy of DemandaSaude
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DemandaSaudeCopyWith<DemandaSaude> get copyWith =>
      _$DemandaSaudeCopyWithImpl<DemandaSaude>(
          this as DemandaSaude, _$identity);

  /// Serializes this DemandaSaude to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DemandaSaude &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.gestPuerNutriz, gestPuerNutriz) ||
                other.gestPuerNutriz == gestPuerNutriz) &&
            (identical(other.mobReduzida, mobReduzida) ||
                other.mobReduzida == mobReduzida) &&
            (identical(other.cuidaOutrem, cuidaOutrem) ||
                other.cuidaOutrem == cuidaOutrem) &&
            (identical(other.pcdOuMental, pcdOuMental) ||
                other.pcdOuMental == pcdOuMental) &&
            (identical(other.genero, genero) || other.genero == genero) &&
            (identical(other.saudeCid, saudeCid) ||
                other.saudeCid == saudeCid) &&
            (identical(other.dataNasc, dataNasc) ||
                other.dataNasc == dataNasc) &&
            (identical(other.alergiaIntol, alergiaIntol) ||
                other.alergiaIntol == alergiaIntol) &&
            (identical(other.subsPsicoativas, subsPsicoativas) ||
                other.subsPsicoativas == subsPsicoativas) &&
            (identical(other.medControlada, medControlada) ||
                other.medControlada == medControlada) &&
            (identical(other.localRef, localRef) ||
                other.localRef == localRef) &&
            (identical(other.evolucao, evolucao) ||
                other.evolucao == evolucao));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cpf,
      gestPuerNutriz,
      mobReduzida,
      cuidaOutrem,
      pcdOuMental,
      genero,
      saudeCid,
      dataNasc,
      alergiaIntol,
      subsPsicoativas,
      medControlada,
      localRef,
      evolucao);

  @override
  String toString() {
    return 'DemandaSaude(cpf: $cpf, gestPuerNutriz: $gestPuerNutriz, mobReduzida: $mobReduzida, cuidaOutrem: $cuidaOutrem, pcdOuMental: $pcdOuMental, genero: $genero, saudeCid: $saudeCid, dataNasc: $dataNasc, alergiaIntol: $alergiaIntol, subsPsicoativas: $subsPsicoativas, medControlada: $medControlada, localRef: $localRef, evolucao: $evolucao)';
  }
}

/// @nodoc
abstract mixin class $DemandaSaudeCopyWith<$Res> {
  factory $DemandaSaudeCopyWith(
          DemandaSaude value, $Res Function(DemandaSaude) _then) =
      _$DemandaSaudeCopyWithImpl;
  @useResult
  $Res call(
      {String cpf,
      String gestPuerNutriz,
      String mobReduzida,
      String cuidaOutrem,
      String pcdOuMental,
      String? genero,
      String? saudeCid,
      DateTime? dataNasc,
      String? alergiaIntol,
      String? subsPsicoativas,
      String? medControlada,
      String? localRef,
      String? evolucao});
}

/// @nodoc
class _$DemandaSaudeCopyWithImpl<$Res> implements $DemandaSaudeCopyWith<$Res> {
  _$DemandaSaudeCopyWithImpl(this._self, this._then);

  final DemandaSaude _self;
  final $Res Function(DemandaSaude) _then;

  /// Create a copy of DemandaSaude
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpf = null,
    Object? gestPuerNutriz = null,
    Object? mobReduzida = null,
    Object? cuidaOutrem = null,
    Object? pcdOuMental = null,
    Object? genero = freezed,
    Object? saudeCid = freezed,
    Object? dataNasc = freezed,
    Object? alergiaIntol = freezed,
    Object? subsPsicoativas = freezed,
    Object? medControlada = freezed,
    Object? localRef = freezed,
    Object? evolucao = freezed,
  }) {
    return _then(_self.copyWith(
      cpf: null == cpf
          ? _self.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      gestPuerNutriz: null == gestPuerNutriz
          ? _self.gestPuerNutriz
          : gestPuerNutriz // ignore: cast_nullable_to_non_nullable
              as String,
      mobReduzida: null == mobReduzida
          ? _self.mobReduzida
          : mobReduzida // ignore: cast_nullable_to_non_nullable
              as String,
      cuidaOutrem: null == cuidaOutrem
          ? _self.cuidaOutrem
          : cuidaOutrem // ignore: cast_nullable_to_non_nullable
              as String,
      pcdOuMental: null == pcdOuMental
          ? _self.pcdOuMental
          : pcdOuMental // ignore: cast_nullable_to_non_nullable
              as String,
      genero: freezed == genero
          ? _self.genero
          : genero // ignore: cast_nullable_to_non_nullable
              as String?,
      saudeCid: freezed == saudeCid
          ? _self.saudeCid
          : saudeCid // ignore: cast_nullable_to_non_nullable
              as String?,
      dataNasc: freezed == dataNasc
          ? _self.dataNasc
          : dataNasc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      alergiaIntol: freezed == alergiaIntol
          ? _self.alergiaIntol
          : alergiaIntol // ignore: cast_nullable_to_non_nullable
              as String?,
      subsPsicoativas: freezed == subsPsicoativas
          ? _self.subsPsicoativas
          : subsPsicoativas // ignore: cast_nullable_to_non_nullable
              as String?,
      medControlada: freezed == medControlada
          ? _self.medControlada
          : medControlada // ignore: cast_nullable_to_non_nullable
              as String?,
      localRef: freezed == localRef
          ? _self.localRef
          : localRef // ignore: cast_nullable_to_non_nullable
              as String?,
      evolucao: freezed == evolucao
          ? _self.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DemandaSaude].
extension DemandaSaudePatterns on DemandaSaude {
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
    TResult Function(_DemandaSaude value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DemandaSaude() when $default != null:
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
    TResult Function(_DemandaSaude value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DemandaSaude():
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
    TResult? Function(_DemandaSaude value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DemandaSaude() when $default != null:
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
            String gestPuerNutriz,
            String mobReduzida,
            String cuidaOutrem,
            String pcdOuMental,
            String? genero,
            String? saudeCid,
            DateTime? dataNasc,
            String? alergiaIntol,
            String? subsPsicoativas,
            String? medControlada,
            String? localRef,
            String? evolucao)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DemandaSaude() when $default != null:
        return $default(
            _that.cpf,
            _that.gestPuerNutriz,
            _that.mobReduzida,
            _that.cuidaOutrem,
            _that.pcdOuMental,
            _that.genero,
            _that.saudeCid,
            _that.dataNasc,
            _that.alergiaIntol,
            _that.subsPsicoativas,
            _that.medControlada,
            _that.localRef,
            _that.evolucao);
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
            String gestPuerNutriz,
            String mobReduzida,
            String cuidaOutrem,
            String pcdOuMental,
            String? genero,
            String? saudeCid,
            DateTime? dataNasc,
            String? alergiaIntol,
            String? subsPsicoativas,
            String? medControlada,
            String? localRef,
            String? evolucao)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DemandaSaude():
        return $default(
            _that.cpf,
            _that.gestPuerNutriz,
            _that.mobReduzida,
            _that.cuidaOutrem,
            _that.pcdOuMental,
            _that.genero,
            _that.saudeCid,
            _that.dataNasc,
            _that.alergiaIntol,
            _that.subsPsicoativas,
            _that.medControlada,
            _that.localRef,
            _that.evolucao);
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
            String gestPuerNutriz,
            String mobReduzida,
            String cuidaOutrem,
            String pcdOuMental,
            String? genero,
            String? saudeCid,
            DateTime? dataNasc,
            String? alergiaIntol,
            String? subsPsicoativas,
            String? medControlada,
            String? localRef,
            String? evolucao)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DemandaSaude() when $default != null:
        return $default(
            _that.cpf,
            _that.gestPuerNutriz,
            _that.mobReduzida,
            _that.cuidaOutrem,
            _that.pcdOuMental,
            _that.genero,
            _that.saudeCid,
            _that.dataNasc,
            _that.alergiaIntol,
            _that.subsPsicoativas,
            _that.medControlada,
            _that.localRef,
            _that.evolucao);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DemandaSaude implements DemandaSaude {
  const _DemandaSaude(
      {required this.cpf,
      required this.gestPuerNutriz,
      required this.mobReduzida,
      required this.cuidaOutrem,
      required this.pcdOuMental,
      this.genero,
      this.saudeCid,
      this.dataNasc,
      this.alergiaIntol,
      this.subsPsicoativas,
      this.medControlada,
      this.localRef,
      this.evolucao});
  factory _DemandaSaude.fromJson(Map<String, dynamic> json) =>
      _$DemandaSaudeFromJson(json);

  @override
  final String cpf;
  @override
  final String gestPuerNutriz;
  @override
  final String mobReduzida;
  @override
  final String cuidaOutrem;
  @override
  final String pcdOuMental;
  @override
  final String? genero;
  @override
  final String? saudeCid;
  @override
  final DateTime? dataNasc;
  @override
  final String? alergiaIntol;
  @override
  final String? subsPsicoativas;
  @override
  final String? medControlada;
  @override
  final String? localRef;
  @override
  final String? evolucao;

  /// Create a copy of DemandaSaude
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DemandaSaudeCopyWith<_DemandaSaude> get copyWith =>
      __$DemandaSaudeCopyWithImpl<_DemandaSaude>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DemandaSaudeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DemandaSaude &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.gestPuerNutriz, gestPuerNutriz) ||
                other.gestPuerNutriz == gestPuerNutriz) &&
            (identical(other.mobReduzida, mobReduzida) ||
                other.mobReduzida == mobReduzida) &&
            (identical(other.cuidaOutrem, cuidaOutrem) ||
                other.cuidaOutrem == cuidaOutrem) &&
            (identical(other.pcdOuMental, pcdOuMental) ||
                other.pcdOuMental == pcdOuMental) &&
            (identical(other.genero, genero) || other.genero == genero) &&
            (identical(other.saudeCid, saudeCid) ||
                other.saudeCid == saudeCid) &&
            (identical(other.dataNasc, dataNasc) ||
                other.dataNasc == dataNasc) &&
            (identical(other.alergiaIntol, alergiaIntol) ||
                other.alergiaIntol == alergiaIntol) &&
            (identical(other.subsPsicoativas, subsPsicoativas) ||
                other.subsPsicoativas == subsPsicoativas) &&
            (identical(other.medControlada, medControlada) ||
                other.medControlada == medControlada) &&
            (identical(other.localRef, localRef) ||
                other.localRef == localRef) &&
            (identical(other.evolucao, evolucao) ||
                other.evolucao == evolucao));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cpf,
      gestPuerNutriz,
      mobReduzida,
      cuidaOutrem,
      pcdOuMental,
      genero,
      saudeCid,
      dataNasc,
      alergiaIntol,
      subsPsicoativas,
      medControlada,
      localRef,
      evolucao);

  @override
  String toString() {
    return 'DemandaSaude(cpf: $cpf, gestPuerNutriz: $gestPuerNutriz, mobReduzida: $mobReduzida, cuidaOutrem: $cuidaOutrem, pcdOuMental: $pcdOuMental, genero: $genero, saudeCid: $saudeCid, dataNasc: $dataNasc, alergiaIntol: $alergiaIntol, subsPsicoativas: $subsPsicoativas, medControlada: $medControlada, localRef: $localRef, evolucao: $evolucao)';
  }
}

/// @nodoc
abstract mixin class _$DemandaSaudeCopyWith<$Res>
    implements $DemandaSaudeCopyWith<$Res> {
  factory _$DemandaSaudeCopyWith(
          _DemandaSaude value, $Res Function(_DemandaSaude) _then) =
      __$DemandaSaudeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String cpf,
      String gestPuerNutriz,
      String mobReduzida,
      String cuidaOutrem,
      String pcdOuMental,
      String? genero,
      String? saudeCid,
      DateTime? dataNasc,
      String? alergiaIntol,
      String? subsPsicoativas,
      String? medControlada,
      String? localRef,
      String? evolucao});
}

/// @nodoc
class __$DemandaSaudeCopyWithImpl<$Res>
    implements _$DemandaSaudeCopyWith<$Res> {
  __$DemandaSaudeCopyWithImpl(this._self, this._then);

  final _DemandaSaude _self;
  final $Res Function(_DemandaSaude) _then;

  /// Create a copy of DemandaSaude
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cpf = null,
    Object? gestPuerNutriz = null,
    Object? mobReduzida = null,
    Object? cuidaOutrem = null,
    Object? pcdOuMental = null,
    Object? genero = freezed,
    Object? saudeCid = freezed,
    Object? dataNasc = freezed,
    Object? alergiaIntol = freezed,
    Object? subsPsicoativas = freezed,
    Object? medControlada = freezed,
    Object? localRef = freezed,
    Object? evolucao = freezed,
  }) {
    return _then(_DemandaSaude(
      cpf: null == cpf
          ? _self.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      gestPuerNutriz: null == gestPuerNutriz
          ? _self.gestPuerNutriz
          : gestPuerNutriz // ignore: cast_nullable_to_non_nullable
              as String,
      mobReduzida: null == mobReduzida
          ? _self.mobReduzida
          : mobReduzida // ignore: cast_nullable_to_non_nullable
              as String,
      cuidaOutrem: null == cuidaOutrem
          ? _self.cuidaOutrem
          : cuidaOutrem // ignore: cast_nullable_to_non_nullable
              as String,
      pcdOuMental: null == pcdOuMental
          ? _self.pcdOuMental
          : pcdOuMental // ignore: cast_nullable_to_non_nullable
              as String,
      genero: freezed == genero
          ? _self.genero
          : genero // ignore: cast_nullable_to_non_nullable
              as String?,
      saudeCid: freezed == saudeCid
          ? _self.saudeCid
          : saudeCid // ignore: cast_nullable_to_non_nullable
              as String?,
      dataNasc: freezed == dataNasc
          ? _self.dataNasc
          : dataNasc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      alergiaIntol: freezed == alergiaIntol
          ? _self.alergiaIntol
          : alergiaIntol // ignore: cast_nullable_to_non_nullable
              as String?,
      subsPsicoativas: freezed == subsPsicoativas
          ? _self.subsPsicoativas
          : subsPsicoativas // ignore: cast_nullable_to_non_nullable
              as String?,
      medControlada: freezed == medControlada
          ? _self.medControlada
          : medControlada // ignore: cast_nullable_to_non_nullable
              as String?,
      localRef: freezed == localRef
          ? _self.localRef
          : localRef // ignore: cast_nullable_to_non_nullable
              as String?,
      evolucao: freezed == evolucao
          ? _self.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$DemandaEducacao {
  String get cpfResponsavel;
  String get nome;
  String get cpf;
  String? get genero;
  int? get alojamento;
  DateTime? get dataNasc;
  int? get unidadeEnsino;
  String? get turno;
  String? get demanda;
  String? get evolucao;

  /// Create a copy of DemandaEducacao
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DemandaEducacaoCopyWith<DemandaEducacao> get copyWith =>
      _$DemandaEducacaoCopyWithImpl<DemandaEducacao>(
          this as DemandaEducacao, _$identity);

  /// Serializes this DemandaEducacao to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DemandaEducacao &&
            (identical(other.cpfResponsavel, cpfResponsavel) ||
                other.cpfResponsavel == cpfResponsavel) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.genero, genero) || other.genero == genero) &&
            (identical(other.alojamento, alojamento) ||
                other.alojamento == alojamento) &&
            (identical(other.dataNasc, dataNasc) ||
                other.dataNasc == dataNasc) &&
            (identical(other.unidadeEnsino, unidadeEnsino) ||
                other.unidadeEnsino == unidadeEnsino) &&
            (identical(other.turno, turno) || other.turno == turno) &&
            (identical(other.demanda, demanda) || other.demanda == demanda) &&
            (identical(other.evolucao, evolucao) ||
                other.evolucao == evolucao));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cpfResponsavel, nome, cpf,
      genero, alojamento, dataNasc, unidadeEnsino, turno, demanda, evolucao);

  @override
  String toString() {
    return 'DemandaEducacao(cpfResponsavel: $cpfResponsavel, nome: $nome, cpf: $cpf, genero: $genero, alojamento: $alojamento, dataNasc: $dataNasc, unidadeEnsino: $unidadeEnsino, turno: $turno, demanda: $demanda, evolucao: $evolucao)';
  }
}

/// @nodoc
abstract mixin class $DemandaEducacaoCopyWith<$Res> {
  factory $DemandaEducacaoCopyWith(
          DemandaEducacao value, $Res Function(DemandaEducacao) _then) =
      _$DemandaEducacaoCopyWithImpl;
  @useResult
  $Res call(
      {String cpfResponsavel,
      String nome,
      String cpf,
      String? genero,
      int? alojamento,
      DateTime? dataNasc,
      int? unidadeEnsino,
      String? turno,
      String? demanda,
      String? evolucao});
}

/// @nodoc
class _$DemandaEducacaoCopyWithImpl<$Res>
    implements $DemandaEducacaoCopyWith<$Res> {
  _$DemandaEducacaoCopyWithImpl(this._self, this._then);

  final DemandaEducacao _self;
  final $Res Function(DemandaEducacao) _then;

  /// Create a copy of DemandaEducacao
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpfResponsavel = null,
    Object? nome = null,
    Object? cpf = null,
    Object? genero = freezed,
    Object? alojamento = freezed,
    Object? dataNasc = freezed,
    Object? unidadeEnsino = freezed,
    Object? turno = freezed,
    Object? demanda = freezed,
    Object? evolucao = freezed,
  }) {
    return _then(_self.copyWith(
      cpfResponsavel: null == cpfResponsavel
          ? _self.cpfResponsavel
          : cpfResponsavel // ignore: cast_nullable_to_non_nullable
              as String,
      nome: null == nome
          ? _self.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      cpf: null == cpf
          ? _self.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      genero: freezed == genero
          ? _self.genero
          : genero // ignore: cast_nullable_to_non_nullable
              as String?,
      alojamento: freezed == alojamento
          ? _self.alojamento
          : alojamento // ignore: cast_nullable_to_non_nullable
              as int?,
      dataNasc: freezed == dataNasc
          ? _self.dataNasc
          : dataNasc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unidadeEnsino: freezed == unidadeEnsino
          ? _self.unidadeEnsino
          : unidadeEnsino // ignore: cast_nullable_to_non_nullable
              as int?,
      turno: freezed == turno
          ? _self.turno
          : turno // ignore: cast_nullable_to_non_nullable
              as String?,
      demanda: freezed == demanda
          ? _self.demanda
          : demanda // ignore: cast_nullable_to_non_nullable
              as String?,
      evolucao: freezed == evolucao
          ? _self.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DemandaEducacao].
extension DemandaEducacaoPatterns on DemandaEducacao {
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
    TResult Function(_DemandaEducacao value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DemandaEducacao() when $default != null:
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
    TResult Function(_DemandaEducacao value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DemandaEducacao():
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
    TResult? Function(_DemandaEducacao value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DemandaEducacao() when $default != null:
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
            String cpfResponsavel,
            String nome,
            String cpf,
            String? genero,
            int? alojamento,
            DateTime? dataNasc,
            int? unidadeEnsino,
            String? turno,
            String? demanda,
            String? evolucao)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DemandaEducacao() when $default != null:
        return $default(
            _that.cpfResponsavel,
            _that.nome,
            _that.cpf,
            _that.genero,
            _that.alojamento,
            _that.dataNasc,
            _that.unidadeEnsino,
            _that.turno,
            _that.demanda,
            _that.evolucao);
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
            String cpfResponsavel,
            String nome,
            String cpf,
            String? genero,
            int? alojamento,
            DateTime? dataNasc,
            int? unidadeEnsino,
            String? turno,
            String? demanda,
            String? evolucao)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DemandaEducacao():
        return $default(
            _that.cpfResponsavel,
            _that.nome,
            _that.cpf,
            _that.genero,
            _that.alojamento,
            _that.dataNasc,
            _that.unidadeEnsino,
            _that.turno,
            _that.demanda,
            _that.evolucao);
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
            String cpfResponsavel,
            String nome,
            String cpf,
            String? genero,
            int? alojamento,
            DateTime? dataNasc,
            int? unidadeEnsino,
            String? turno,
            String? demanda,
            String? evolucao)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DemandaEducacao() when $default != null:
        return $default(
            _that.cpfResponsavel,
            _that.nome,
            _that.cpf,
            _that.genero,
            _that.alojamento,
            _that.dataNasc,
            _that.unidadeEnsino,
            _that.turno,
            _that.demanda,
            _that.evolucao);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DemandaEducacao implements DemandaEducacao {
  const _DemandaEducacao(
      {required this.cpfResponsavel,
      required this.nome,
      required this.cpf,
      this.genero,
      this.alojamento,
      this.dataNasc,
      this.unidadeEnsino,
      this.turno,
      this.demanda,
      this.evolucao});
  factory _DemandaEducacao.fromJson(Map<String, dynamic> json) =>
      _$DemandaEducacaoFromJson(json);

  @override
  final String cpfResponsavel;
  @override
  final String nome;
  @override
  final String cpf;
  @override
  final String? genero;
  @override
  final int? alojamento;
  @override
  final DateTime? dataNasc;
  @override
  final int? unidadeEnsino;
  @override
  final String? turno;
  @override
  final String? demanda;
  @override
  final String? evolucao;

  /// Create a copy of DemandaEducacao
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DemandaEducacaoCopyWith<_DemandaEducacao> get copyWith =>
      __$DemandaEducacaoCopyWithImpl<_DemandaEducacao>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DemandaEducacaoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DemandaEducacao &&
            (identical(other.cpfResponsavel, cpfResponsavel) ||
                other.cpfResponsavel == cpfResponsavel) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.genero, genero) || other.genero == genero) &&
            (identical(other.alojamento, alojamento) ||
                other.alojamento == alojamento) &&
            (identical(other.dataNasc, dataNasc) ||
                other.dataNasc == dataNasc) &&
            (identical(other.unidadeEnsino, unidadeEnsino) ||
                other.unidadeEnsino == unidadeEnsino) &&
            (identical(other.turno, turno) || other.turno == turno) &&
            (identical(other.demanda, demanda) || other.demanda == demanda) &&
            (identical(other.evolucao, evolucao) ||
                other.evolucao == evolucao));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cpfResponsavel, nome, cpf,
      genero, alojamento, dataNasc, unidadeEnsino, turno, demanda, evolucao);

  @override
  String toString() {
    return 'DemandaEducacao(cpfResponsavel: $cpfResponsavel, nome: $nome, cpf: $cpf, genero: $genero, alojamento: $alojamento, dataNasc: $dataNasc, unidadeEnsino: $unidadeEnsino, turno: $turno, demanda: $demanda, evolucao: $evolucao)';
  }
}

/// @nodoc
abstract mixin class _$DemandaEducacaoCopyWith<$Res>
    implements $DemandaEducacaoCopyWith<$Res> {
  factory _$DemandaEducacaoCopyWith(
          _DemandaEducacao value, $Res Function(_DemandaEducacao) _then) =
      __$DemandaEducacaoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String cpfResponsavel,
      String nome,
      String cpf,
      String? genero,
      int? alojamento,
      DateTime? dataNasc,
      int? unidadeEnsino,
      String? turno,
      String? demanda,
      String? evolucao});
}

/// @nodoc
class __$DemandaEducacaoCopyWithImpl<$Res>
    implements _$DemandaEducacaoCopyWith<$Res> {
  __$DemandaEducacaoCopyWithImpl(this._self, this._then);

  final _DemandaEducacao _self;
  final $Res Function(_DemandaEducacao) _then;

  /// Create a copy of DemandaEducacao
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cpfResponsavel = null,
    Object? nome = null,
    Object? cpf = null,
    Object? genero = freezed,
    Object? alojamento = freezed,
    Object? dataNasc = freezed,
    Object? unidadeEnsino = freezed,
    Object? turno = freezed,
    Object? demanda = freezed,
    Object? evolucao = freezed,
  }) {
    return _then(_DemandaEducacao(
      cpfResponsavel: null == cpfResponsavel
          ? _self.cpfResponsavel
          : cpfResponsavel // ignore: cast_nullable_to_non_nullable
              as String,
      nome: null == nome
          ? _self.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      cpf: null == cpf
          ? _self.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      genero: freezed == genero
          ? _self.genero
          : genero // ignore: cast_nullable_to_non_nullable
              as String?,
      alojamento: freezed == alojamento
          ? _self.alojamento
          : alojamento // ignore: cast_nullable_to_non_nullable
              as int?,
      dataNasc: freezed == dataNasc
          ? _self.dataNasc
          : dataNasc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unidadeEnsino: freezed == unidadeEnsino
          ? _self.unidadeEnsino
          : unidadeEnsino // ignore: cast_nullable_to_non_nullable
              as int?,
      turno: freezed == turno
          ? _self.turno
          : turno // ignore: cast_nullable_to_non_nullable
              as String?,
      demanda: freezed == demanda
          ? _self.demanda
          : demanda // ignore: cast_nullable_to_non_nullable
              as String?,
      evolucao: freezed == evolucao
          ? _self.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$DemandaHabitacao {
  String get cpf;
  double? get latitude;
  double? get longitude;
  String? get areaVerde;
  String? get ocupacao;
  String? get material;
  String? get relacaoImovel;
  String? get usoImovel;
  int? get codRge;
  String? get evolucao;

  /// Create a copy of DemandaHabitacao
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DemandaHabitacaoCopyWith<DemandaHabitacao> get copyWith =>
      _$DemandaHabitacaoCopyWithImpl<DemandaHabitacao>(
          this as DemandaHabitacao, _$identity);

  /// Serializes this DemandaHabitacao to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DemandaHabitacao &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.areaVerde, areaVerde) ||
                other.areaVerde == areaVerde) &&
            (identical(other.ocupacao, ocupacao) ||
                other.ocupacao == ocupacao) &&
            (identical(other.material, material) ||
                other.material == material) &&
            (identical(other.relacaoImovel, relacaoImovel) ||
                other.relacaoImovel == relacaoImovel) &&
            (identical(other.usoImovel, usoImovel) ||
                other.usoImovel == usoImovel) &&
            (identical(other.codRge, codRge) || other.codRge == codRge) &&
            (identical(other.evolucao, evolucao) ||
                other.evolucao == evolucao));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cpf,
      latitude,
      longitude,
      areaVerde,
      ocupacao,
      material,
      relacaoImovel,
      usoImovel,
      codRge,
      evolucao);

  @override
  String toString() {
    return 'DemandaHabitacao(cpf: $cpf, latitude: $latitude, longitude: $longitude, areaVerde: $areaVerde, ocupacao: $ocupacao, material: $material, relacaoImovel: $relacaoImovel, usoImovel: $usoImovel, codRge: $codRge, evolucao: $evolucao)';
  }
}

/// @nodoc
abstract mixin class $DemandaHabitacaoCopyWith<$Res> {
  factory $DemandaHabitacaoCopyWith(
          DemandaHabitacao value, $Res Function(DemandaHabitacao) _then) =
      _$DemandaHabitacaoCopyWithImpl;
  @useResult
  $Res call(
      {String cpf,
      double? latitude,
      double? longitude,
      String? areaVerde,
      String? ocupacao,
      String? material,
      String? relacaoImovel,
      String? usoImovel,
      int? codRge,
      String? evolucao});
}

/// @nodoc
class _$DemandaHabitacaoCopyWithImpl<$Res>
    implements $DemandaHabitacaoCopyWith<$Res> {
  _$DemandaHabitacaoCopyWithImpl(this._self, this._then);

  final DemandaHabitacao _self;
  final $Res Function(DemandaHabitacao) _then;

  /// Create a copy of DemandaHabitacao
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpf = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? areaVerde = freezed,
    Object? ocupacao = freezed,
    Object? material = freezed,
    Object? relacaoImovel = freezed,
    Object? usoImovel = freezed,
    Object? codRge = freezed,
    Object? evolucao = freezed,
  }) {
    return _then(_self.copyWith(
      cpf: null == cpf
          ? _self.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      areaVerde: freezed == areaVerde
          ? _self.areaVerde
          : areaVerde // ignore: cast_nullable_to_non_nullable
              as String?,
      ocupacao: freezed == ocupacao
          ? _self.ocupacao
          : ocupacao // ignore: cast_nullable_to_non_nullable
              as String?,
      material: freezed == material
          ? _self.material
          : material // ignore: cast_nullable_to_non_nullable
              as String?,
      relacaoImovel: freezed == relacaoImovel
          ? _self.relacaoImovel
          : relacaoImovel // ignore: cast_nullable_to_non_nullable
              as String?,
      usoImovel: freezed == usoImovel
          ? _self.usoImovel
          : usoImovel // ignore: cast_nullable_to_non_nullable
              as String?,
      codRge: freezed == codRge
          ? _self.codRge
          : codRge // ignore: cast_nullable_to_non_nullable
              as int?,
      evolucao: freezed == evolucao
          ? _self.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DemandaHabitacao].
extension DemandaHabitacaoPatterns on DemandaHabitacao {
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
    TResult Function(_DemandaHabitacao value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DemandaHabitacao() when $default != null:
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
    TResult Function(_DemandaHabitacao value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DemandaHabitacao():
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
    TResult? Function(_DemandaHabitacao value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DemandaHabitacao() when $default != null:
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
            double? latitude,
            double? longitude,
            String? areaVerde,
            String? ocupacao,
            String? material,
            String? relacaoImovel,
            String? usoImovel,
            int? codRge,
            String? evolucao)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DemandaHabitacao() when $default != null:
        return $default(
            _that.cpf,
            _that.latitude,
            _that.longitude,
            _that.areaVerde,
            _that.ocupacao,
            _that.material,
            _that.relacaoImovel,
            _that.usoImovel,
            _that.codRge,
            _that.evolucao);
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
            double? latitude,
            double? longitude,
            String? areaVerde,
            String? ocupacao,
            String? material,
            String? relacaoImovel,
            String? usoImovel,
            int? codRge,
            String? evolucao)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DemandaHabitacao():
        return $default(
            _that.cpf,
            _that.latitude,
            _that.longitude,
            _that.areaVerde,
            _that.ocupacao,
            _that.material,
            _that.relacaoImovel,
            _that.usoImovel,
            _that.codRge,
            _that.evolucao);
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
            double? latitude,
            double? longitude,
            String? areaVerde,
            String? ocupacao,
            String? material,
            String? relacaoImovel,
            String? usoImovel,
            int? codRge,
            String? evolucao)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DemandaHabitacao() when $default != null:
        return $default(
            _that.cpf,
            _that.latitude,
            _that.longitude,
            _that.areaVerde,
            _that.ocupacao,
            _that.material,
            _that.relacaoImovel,
            _that.usoImovel,
            _that.codRge,
            _that.evolucao);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DemandaHabitacao implements DemandaHabitacao {
  const _DemandaHabitacao(
      {required this.cpf,
      this.latitude,
      this.longitude,
      this.areaVerde,
      this.ocupacao,
      this.material,
      this.relacaoImovel,
      this.usoImovel,
      this.codRge,
      this.evolucao});
  factory _DemandaHabitacao.fromJson(Map<String, dynamic> json) =>
      _$DemandaHabitacaoFromJson(json);

  @override
  final String cpf;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? areaVerde;
  @override
  final String? ocupacao;
  @override
  final String? material;
  @override
  final String? relacaoImovel;
  @override
  final String? usoImovel;
  @override
  final int? codRge;
  @override
  final String? evolucao;

  /// Create a copy of DemandaHabitacao
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DemandaHabitacaoCopyWith<_DemandaHabitacao> get copyWith =>
      __$DemandaHabitacaoCopyWithImpl<_DemandaHabitacao>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DemandaHabitacaoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DemandaHabitacao &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.areaVerde, areaVerde) ||
                other.areaVerde == areaVerde) &&
            (identical(other.ocupacao, ocupacao) ||
                other.ocupacao == ocupacao) &&
            (identical(other.material, material) ||
                other.material == material) &&
            (identical(other.relacaoImovel, relacaoImovel) ||
                other.relacaoImovel == relacaoImovel) &&
            (identical(other.usoImovel, usoImovel) ||
                other.usoImovel == usoImovel) &&
            (identical(other.codRge, codRge) || other.codRge == codRge) &&
            (identical(other.evolucao, evolucao) ||
                other.evolucao == evolucao));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cpf,
      latitude,
      longitude,
      areaVerde,
      ocupacao,
      material,
      relacaoImovel,
      usoImovel,
      codRge,
      evolucao);

  @override
  String toString() {
    return 'DemandaHabitacao(cpf: $cpf, latitude: $latitude, longitude: $longitude, areaVerde: $areaVerde, ocupacao: $ocupacao, material: $material, relacaoImovel: $relacaoImovel, usoImovel: $usoImovel, codRge: $codRge, evolucao: $evolucao)';
  }
}

/// @nodoc
abstract mixin class _$DemandaHabitacaoCopyWith<$Res>
    implements $DemandaHabitacaoCopyWith<$Res> {
  factory _$DemandaHabitacaoCopyWith(
          _DemandaHabitacao value, $Res Function(_DemandaHabitacao) _then) =
      __$DemandaHabitacaoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String cpf,
      double? latitude,
      double? longitude,
      String? areaVerde,
      String? ocupacao,
      String? material,
      String? relacaoImovel,
      String? usoImovel,
      int? codRge,
      String? evolucao});
}

/// @nodoc
class __$DemandaHabitacaoCopyWithImpl<$Res>
    implements _$DemandaHabitacaoCopyWith<$Res> {
  __$DemandaHabitacaoCopyWithImpl(this._self, this._then);

  final _DemandaHabitacao _self;
  final $Res Function(_DemandaHabitacao) _then;

  /// Create a copy of DemandaHabitacao
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cpf = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? areaVerde = freezed,
    Object? ocupacao = freezed,
    Object? material = freezed,
    Object? relacaoImovel = freezed,
    Object? usoImovel = freezed,
    Object? codRge = freezed,
    Object? evolucao = freezed,
  }) {
    return _then(_DemandaHabitacao(
      cpf: null == cpf
          ? _self.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      areaVerde: freezed == areaVerde
          ? _self.areaVerde
          : areaVerde // ignore: cast_nullable_to_non_nullable
              as String?,
      ocupacao: freezed == ocupacao
          ? _self.ocupacao
          : ocupacao // ignore: cast_nullable_to_non_nullable
              as String?,
      material: freezed == material
          ? _self.material
          : material // ignore: cast_nullable_to_non_nullable
              as String?,
      relacaoImovel: freezed == relacaoImovel
          ? _self.relacaoImovel
          : relacaoImovel // ignore: cast_nullable_to_non_nullable
              as String?,
      usoImovel: freezed == usoImovel
          ? _self.usoImovel
          : usoImovel // ignore: cast_nullable_to_non_nullable
              as String?,
      codRge: freezed == codRge
          ? _self.codRge
          : codRge // ignore: cast_nullable_to_non_nullable
              as int?,
      evolucao: freezed == evolucao
          ? _self.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$DemandaAmbiente {
  String get cpf;
  String get acompanhaTutor;
  int? get quantidade;
  String? get especie;
  String? get vacinado;
  String? get vacRaiva;
  String? get vacV8v10;
  String? get necRacao;
  String? get castrado;
  String? get porte;
  String? get evolucao;

  /// Create a copy of DemandaAmbiente
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DemandaAmbienteCopyWith<DemandaAmbiente> get copyWith =>
      _$DemandaAmbienteCopyWithImpl<DemandaAmbiente>(
          this as DemandaAmbiente, _$identity);

  /// Serializes this DemandaAmbiente to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DemandaAmbiente &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.acompanhaTutor, acompanhaTutor) ||
                other.acompanhaTutor == acompanhaTutor) &&
            (identical(other.quantidade, quantidade) ||
                other.quantidade == quantidade) &&
            (identical(other.especie, especie) || other.especie == especie) &&
            (identical(other.vacinado, vacinado) ||
                other.vacinado == vacinado) &&
            (identical(other.vacRaiva, vacRaiva) ||
                other.vacRaiva == vacRaiva) &&
            (identical(other.vacV8v10, vacV8v10) ||
                other.vacV8v10 == vacV8v10) &&
            (identical(other.necRacao, necRacao) ||
                other.necRacao == necRacao) &&
            (identical(other.castrado, castrado) ||
                other.castrado == castrado) &&
            (identical(other.porte, porte) || other.porte == porte) &&
            (identical(other.evolucao, evolucao) ||
                other.evolucao == evolucao));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cpf,
      acompanhaTutor,
      quantidade,
      especie,
      vacinado,
      vacRaiva,
      vacV8v10,
      necRacao,
      castrado,
      porte,
      evolucao);

  @override
  String toString() {
    return 'DemandaAmbiente(cpf: $cpf, acompanhaTutor: $acompanhaTutor, quantidade: $quantidade, especie: $especie, vacinado: $vacinado, vacRaiva: $vacRaiva, vacV8v10: $vacV8v10, necRacao: $necRacao, castrado: $castrado, porte: $porte, evolucao: $evolucao)';
  }
}

/// @nodoc
abstract mixin class $DemandaAmbienteCopyWith<$Res> {
  factory $DemandaAmbienteCopyWith(
          DemandaAmbiente value, $Res Function(DemandaAmbiente) _then) =
      _$DemandaAmbienteCopyWithImpl;
  @useResult
  $Res call(
      {String cpf,
      String acompanhaTutor,
      int? quantidade,
      String? especie,
      String? vacinado,
      String? vacRaiva,
      String? vacV8v10,
      String? necRacao,
      String? castrado,
      String? porte,
      String? evolucao});
}

/// @nodoc
class _$DemandaAmbienteCopyWithImpl<$Res>
    implements $DemandaAmbienteCopyWith<$Res> {
  _$DemandaAmbienteCopyWithImpl(this._self, this._then);

  final DemandaAmbiente _self;
  final $Res Function(DemandaAmbiente) _then;

  /// Create a copy of DemandaAmbiente
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpf = null,
    Object? acompanhaTutor = null,
    Object? quantidade = freezed,
    Object? especie = freezed,
    Object? vacinado = freezed,
    Object? vacRaiva = freezed,
    Object? vacV8v10 = freezed,
    Object? necRacao = freezed,
    Object? castrado = freezed,
    Object? porte = freezed,
    Object? evolucao = freezed,
  }) {
    return _then(_self.copyWith(
      cpf: null == cpf
          ? _self.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      acompanhaTutor: null == acompanhaTutor
          ? _self.acompanhaTutor
          : acompanhaTutor // ignore: cast_nullable_to_non_nullable
              as String,
      quantidade: freezed == quantidade
          ? _self.quantidade
          : quantidade // ignore: cast_nullable_to_non_nullable
              as int?,
      especie: freezed == especie
          ? _self.especie
          : especie // ignore: cast_nullable_to_non_nullable
              as String?,
      vacinado: freezed == vacinado
          ? _self.vacinado
          : vacinado // ignore: cast_nullable_to_non_nullable
              as String?,
      vacRaiva: freezed == vacRaiva
          ? _self.vacRaiva
          : vacRaiva // ignore: cast_nullable_to_non_nullable
              as String?,
      vacV8v10: freezed == vacV8v10
          ? _self.vacV8v10
          : vacV8v10 // ignore: cast_nullable_to_non_nullable
              as String?,
      necRacao: freezed == necRacao
          ? _self.necRacao
          : necRacao // ignore: cast_nullable_to_non_nullable
              as String?,
      castrado: freezed == castrado
          ? _self.castrado
          : castrado // ignore: cast_nullable_to_non_nullable
              as String?,
      porte: freezed == porte
          ? _self.porte
          : porte // ignore: cast_nullable_to_non_nullable
              as String?,
      evolucao: freezed == evolucao
          ? _self.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DemandaAmbiente].
extension DemandaAmbientePatterns on DemandaAmbiente {
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
    TResult Function(_DemandaAmbiente value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DemandaAmbiente() when $default != null:
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
    TResult Function(_DemandaAmbiente value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DemandaAmbiente():
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
    TResult? Function(_DemandaAmbiente value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DemandaAmbiente() when $default != null:
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
            String acompanhaTutor,
            int? quantidade,
            String? especie,
            String? vacinado,
            String? vacRaiva,
            String? vacV8v10,
            String? necRacao,
            String? castrado,
            String? porte,
            String? evolucao)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DemandaAmbiente() when $default != null:
        return $default(
            _that.cpf,
            _that.acompanhaTutor,
            _that.quantidade,
            _that.especie,
            _that.vacinado,
            _that.vacRaiva,
            _that.vacV8v10,
            _that.necRacao,
            _that.castrado,
            _that.porte,
            _that.evolucao);
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
            String acompanhaTutor,
            int? quantidade,
            String? especie,
            String? vacinado,
            String? vacRaiva,
            String? vacV8v10,
            String? necRacao,
            String? castrado,
            String? porte,
            String? evolucao)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DemandaAmbiente():
        return $default(
            _that.cpf,
            _that.acompanhaTutor,
            _that.quantidade,
            _that.especie,
            _that.vacinado,
            _that.vacRaiva,
            _that.vacV8v10,
            _that.necRacao,
            _that.castrado,
            _that.porte,
            _that.evolucao);
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
            String acompanhaTutor,
            int? quantidade,
            String? especie,
            String? vacinado,
            String? vacRaiva,
            String? vacV8v10,
            String? necRacao,
            String? castrado,
            String? porte,
            String? evolucao)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DemandaAmbiente() when $default != null:
        return $default(
            _that.cpf,
            _that.acompanhaTutor,
            _that.quantidade,
            _that.especie,
            _that.vacinado,
            _that.vacRaiva,
            _that.vacV8v10,
            _that.necRacao,
            _that.castrado,
            _that.porte,
            _that.evolucao);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DemandaAmbiente implements DemandaAmbiente {
  const _DemandaAmbiente(
      {required this.cpf,
      required this.acompanhaTutor,
      this.quantidade,
      this.especie,
      this.vacinado,
      this.vacRaiva,
      this.vacV8v10,
      this.necRacao,
      this.castrado,
      this.porte,
      this.evolucao});
  factory _DemandaAmbiente.fromJson(Map<String, dynamic> json) =>
      _$DemandaAmbienteFromJson(json);

  @override
  final String cpf;
  @override
  final String acompanhaTutor;
  @override
  final int? quantidade;
  @override
  final String? especie;
  @override
  final String? vacinado;
  @override
  final String? vacRaiva;
  @override
  final String? vacV8v10;
  @override
  final String? necRacao;
  @override
  final String? castrado;
  @override
  final String? porte;
  @override
  final String? evolucao;

  /// Create a copy of DemandaAmbiente
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DemandaAmbienteCopyWith<_DemandaAmbiente> get copyWith =>
      __$DemandaAmbienteCopyWithImpl<_DemandaAmbiente>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DemandaAmbienteToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DemandaAmbiente &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.acompanhaTutor, acompanhaTutor) ||
                other.acompanhaTutor == acompanhaTutor) &&
            (identical(other.quantidade, quantidade) ||
                other.quantidade == quantidade) &&
            (identical(other.especie, especie) || other.especie == especie) &&
            (identical(other.vacinado, vacinado) ||
                other.vacinado == vacinado) &&
            (identical(other.vacRaiva, vacRaiva) ||
                other.vacRaiva == vacRaiva) &&
            (identical(other.vacV8v10, vacV8v10) ||
                other.vacV8v10 == vacV8v10) &&
            (identical(other.necRacao, necRacao) ||
                other.necRacao == necRacao) &&
            (identical(other.castrado, castrado) ||
                other.castrado == castrado) &&
            (identical(other.porte, porte) || other.porte == porte) &&
            (identical(other.evolucao, evolucao) ||
                other.evolucao == evolucao));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cpf,
      acompanhaTutor,
      quantidade,
      especie,
      vacinado,
      vacRaiva,
      vacV8v10,
      necRacao,
      castrado,
      porte,
      evolucao);

  @override
  String toString() {
    return 'DemandaAmbiente(cpf: $cpf, acompanhaTutor: $acompanhaTutor, quantidade: $quantidade, especie: $especie, vacinado: $vacinado, vacRaiva: $vacRaiva, vacV8v10: $vacV8v10, necRacao: $necRacao, castrado: $castrado, porte: $porte, evolucao: $evolucao)';
  }
}

/// @nodoc
abstract mixin class _$DemandaAmbienteCopyWith<$Res>
    implements $DemandaAmbienteCopyWith<$Res> {
  factory _$DemandaAmbienteCopyWith(
          _DemandaAmbiente value, $Res Function(_DemandaAmbiente) _then) =
      __$DemandaAmbienteCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String cpf,
      String acompanhaTutor,
      int? quantidade,
      String? especie,
      String? vacinado,
      String? vacRaiva,
      String? vacV8v10,
      String? necRacao,
      String? castrado,
      String? porte,
      String? evolucao});
}

/// @nodoc
class __$DemandaAmbienteCopyWithImpl<$Res>
    implements _$DemandaAmbienteCopyWith<$Res> {
  __$DemandaAmbienteCopyWithImpl(this._self, this._then);

  final _DemandaAmbiente _self;
  final $Res Function(_DemandaAmbiente) _then;

  /// Create a copy of DemandaAmbiente
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cpf = null,
    Object? acompanhaTutor = null,
    Object? quantidade = freezed,
    Object? especie = freezed,
    Object? vacinado = freezed,
    Object? vacRaiva = freezed,
    Object? vacV8v10 = freezed,
    Object? necRacao = freezed,
    Object? castrado = freezed,
    Object? porte = freezed,
    Object? evolucao = freezed,
  }) {
    return _then(_DemandaAmbiente(
      cpf: null == cpf
          ? _self.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      acompanhaTutor: null == acompanhaTutor
          ? _self.acompanhaTutor
          : acompanhaTutor // ignore: cast_nullable_to_non_nullable
              as String,
      quantidade: freezed == quantidade
          ? _self.quantidade
          : quantidade // ignore: cast_nullable_to_non_nullable
              as int?,
      especie: freezed == especie
          ? _self.especie
          : especie // ignore: cast_nullable_to_non_nullable
              as String?,
      vacinado: freezed == vacinado
          ? _self.vacinado
          : vacinado // ignore: cast_nullable_to_non_nullable
              as String?,
      vacRaiva: freezed == vacRaiva
          ? _self.vacRaiva
          : vacRaiva // ignore: cast_nullable_to_non_nullable
              as String?,
      vacV8v10: freezed == vacV8v10
          ? _self.vacV8v10
          : vacV8v10 // ignore: cast_nullable_to_non_nullable
              as String?,
      necRacao: freezed == necRacao
          ? _self.necRacao
          : necRacao // ignore: cast_nullable_to_non_nullable
              as String?,
      castrado: freezed == castrado
          ? _self.castrado
          : castrado // ignore: cast_nullable_to_non_nullable
              as String?,
      porte: freezed == porte
          ? _self.porte
          : porte // ignore: cast_nullable_to_non_nullable
              as String?,
      evolucao: freezed == evolucao
          ? _self.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$DemandaInterna {
  String get cpf;
  String get demanda;
  DateTime get data;
  String? get status;
  String? get evolucao;

  /// Create a copy of DemandaInterna
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DemandaInternaCopyWith<DemandaInterna> get copyWith =>
      _$DemandaInternaCopyWithImpl<DemandaInterna>(
          this as DemandaInterna, _$identity);

  /// Serializes this DemandaInterna to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DemandaInterna &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.demanda, demanda) || other.demanda == demanda) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.evolucao, evolucao) ||
                other.evolucao == evolucao));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cpf, demanda, data, status, evolucao);

  @override
  String toString() {
    return 'DemandaInterna(cpf: $cpf, demanda: $demanda, data: $data, status: $status, evolucao: $evolucao)';
  }
}

/// @nodoc
abstract mixin class $DemandaInternaCopyWith<$Res> {
  factory $DemandaInternaCopyWith(
          DemandaInterna value, $Res Function(DemandaInterna) _then) =
      _$DemandaInternaCopyWithImpl;
  @useResult
  $Res call(
      {String cpf,
      String demanda,
      DateTime data,
      String? status,
      String? evolucao});
}

/// @nodoc
class _$DemandaInternaCopyWithImpl<$Res>
    implements $DemandaInternaCopyWith<$Res> {
  _$DemandaInternaCopyWithImpl(this._self, this._then);

  final DemandaInterna _self;
  final $Res Function(DemandaInterna) _then;

  /// Create a copy of DemandaInterna
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpf = null,
    Object? demanda = null,
    Object? data = null,
    Object? status = freezed,
    Object? evolucao = freezed,
  }) {
    return _then(_self.copyWith(
      cpf: null == cpf
          ? _self.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      demanda: null == demanda
          ? _self.demanda
          : demanda // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      evolucao: freezed == evolucao
          ? _self.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DemandaInterna].
extension DemandaInternaPatterns on DemandaInterna {
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
    TResult Function(_DemandaInterna value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DemandaInterna() when $default != null:
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
    TResult Function(_DemandaInterna value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DemandaInterna():
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
    TResult? Function(_DemandaInterna value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DemandaInterna() when $default != null:
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
    TResult Function(String cpf, String demanda, DateTime data, String? status,
            String? evolucao)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DemandaInterna() when $default != null:
        return $default(
            _that.cpf, _that.demanda, _that.data, _that.status, _that.evolucao);
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
    TResult Function(String cpf, String demanda, DateTime data, String? status,
            String? evolucao)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DemandaInterna():
        return $default(
            _that.cpf, _that.demanda, _that.data, _that.status, _that.evolucao);
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
    TResult? Function(String cpf, String demanda, DateTime data, String? status,
            String? evolucao)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DemandaInterna() when $default != null:
        return $default(
            _that.cpf, _that.demanda, _that.data, _that.status, _that.evolucao);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DemandaInterna implements DemandaInterna {
  const _DemandaInterna(
      {required this.cpf,
      required this.demanda,
      required this.data,
      this.status,
      this.evolucao});
  factory _DemandaInterna.fromJson(Map<String, dynamic> json) =>
      _$DemandaInternaFromJson(json);

  @override
  final String cpf;
  @override
  final String demanda;
  @override
  final DateTime data;
  @override
  final String? status;
  @override
  final String? evolucao;

  /// Create a copy of DemandaInterna
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DemandaInternaCopyWith<_DemandaInterna> get copyWith =>
      __$DemandaInternaCopyWithImpl<_DemandaInterna>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DemandaInternaToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DemandaInterna &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.demanda, demanda) || other.demanda == demanda) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.evolucao, evolucao) ||
                other.evolucao == evolucao));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cpf, demanda, data, status, evolucao);

  @override
  String toString() {
    return 'DemandaInterna(cpf: $cpf, demanda: $demanda, data: $data, status: $status, evolucao: $evolucao)';
  }
}

/// @nodoc
abstract mixin class _$DemandaInternaCopyWith<$Res>
    implements $DemandaInternaCopyWith<$Res> {
  factory _$DemandaInternaCopyWith(
          _DemandaInterna value, $Res Function(_DemandaInterna) _then) =
      __$DemandaInternaCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String cpf,
      String demanda,
      DateTime data,
      String? status,
      String? evolucao});
}

/// @nodoc
class __$DemandaInternaCopyWithImpl<$Res>
    implements _$DemandaInternaCopyWith<$Res> {
  __$DemandaInternaCopyWithImpl(this._self, this._then);

  final _DemandaInterna _self;
  final $Res Function(_DemandaInterna) _then;

  /// Create a copy of DemandaInterna
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cpf = null,
    Object? demanda = null,
    Object? data = null,
    Object? status = freezed,
    Object? evolucao = freezed,
  }) {
    return _then(_DemandaInterna(
      cpf: null == cpf
          ? _self.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      demanda: null == demanda
          ? _self.demanda
          : demanda // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      evolucao: freezed == evolucao
          ? _self.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
