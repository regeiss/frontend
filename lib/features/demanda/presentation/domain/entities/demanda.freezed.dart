// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'demanda.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Demanda _$DemandaFromJson(Map<String, dynamic> json) {
  return _Demanda.fromJson(json);
}

/// @nodoc
mixin _$Demanda {
  String get cpfResponsavel => throw _privateConstructorUsedError;
  TipoDemanda get tipo => throw _privateConstructorUsedError;
  String get demanda => throw _privateConstructorUsedError;
  DateTime get data => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get evolucao => throw _privateConstructorUsedError;
  Map<String, dynamic>? get dadosEspecificos =>
      throw _privateConstructorUsedError;
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
  ) =>
      throw _privateConstructorUsedError;
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
  ) =>
      throw _privateConstructorUsedError;
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Demanda value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Demanda value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Demanda value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Demanda to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Demanda
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DemandaCopyWith<Demanda> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemandaCopyWith<$Res> {
  factory $DemandaCopyWith(Demanda value, $Res Function(Demanda) then) =
      _$DemandaCopyWithImpl<$Res, Demanda>;
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
class _$DemandaCopyWithImpl<$Res, $Val extends Demanda>
    implements $DemandaCopyWith<$Res> {
  _$DemandaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      cpfResponsavel: null == cpfResponsavel
          ? _value.cpfResponsavel
          : cpfResponsavel // ignore: cast_nullable_to_non_nullable
              as String,
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as TipoDemanda,
      demanda: null == demanda
          ? _value.demanda
          : demanda // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      evolucao: freezed == evolucao
          ? _value.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
      dadosEspecificos: freezed == dadosEspecificos
          ? _value.dadosEspecificos
          : dadosEspecificos // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DemandaImplCopyWith<$Res> implements $DemandaCopyWith<$Res> {
  factory _$$DemandaImplCopyWith(
          _$DemandaImpl value, $Res Function(_$DemandaImpl) then) =
      __$$DemandaImplCopyWithImpl<$Res>;
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
class __$$DemandaImplCopyWithImpl<$Res>
    extends _$DemandaCopyWithImpl<$Res, _$DemandaImpl>
    implements _$$DemandaImplCopyWith<$Res> {
  __$$DemandaImplCopyWithImpl(
      _$DemandaImpl _value, $Res Function(_$DemandaImpl) _then)
      : super(_value, _then);

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
    return _then(_$DemandaImpl(
      cpfResponsavel: null == cpfResponsavel
          ? _value.cpfResponsavel
          : cpfResponsavel // ignore: cast_nullable_to_non_nullable
              as String,
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as TipoDemanda,
      demanda: null == demanda
          ? _value.demanda
          : demanda // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      evolucao: freezed == evolucao
          ? _value.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
      dadosEspecificos: freezed == dadosEspecificos
          ? _value._dadosEspecificos
          : dadosEspecificos // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DemandaImpl implements _Demanda {
  const _$DemandaImpl(
      {required this.cpfResponsavel,
      required this.tipo,
      required this.demanda,
      required this.data,
      this.id,
      this.status,
      this.evolucao,
      final Map<String, dynamic>? dadosEspecificos})
      : _dadosEspecificos = dadosEspecificos;

  factory _$DemandaImpl.fromJson(Map<String, dynamic> json) =>
      _$$DemandaImplFromJson(json);

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

  @override
  String toString() {
    return 'Demanda(cpfResponsavel: $cpfResponsavel, tipo: $tipo, demanda: $demanda, data: $data, id: $id, status: $status, evolucao: $evolucao, dadosEspecificos: $dadosEspecificos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DemandaImpl &&
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

  /// Create a copy of Demanda
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DemandaImplCopyWith<_$DemandaImpl> get copyWith =>
      __$$DemandaImplCopyWithImpl<_$DemandaImpl>(this, _$identity);

  @override
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
    return $default(cpfResponsavel, tipo, demanda, data, id, status, evolucao,
        dadosEspecificos);
  }

  @override
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
    return $default?.call(cpfResponsavel, tipo, demanda, data, id, status,
        evolucao, dadosEspecificos);
  }

  @override
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
    if ($default != null) {
      return $default(cpfResponsavel, tipo, demanda, data, id, status, evolucao,
          dadosEspecificos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Demanda value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Demanda value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Demanda value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DemandaImplToJson(
      this,
    );
  }
}

abstract class _Demanda implements Demanda {
  const factory _Demanda(
      {required final String cpfResponsavel,
      required final TipoDemanda tipo,
      required final String demanda,
      required final DateTime data,
      final int? id,
      final String? status,
      final String? evolucao,
      final Map<String, dynamic>? dadosEspecificos}) = _$DemandaImpl;

  factory _Demanda.fromJson(Map<String, dynamic> json) = _$DemandaImpl.fromJson;

  @override
  String get cpfResponsavel;
  @override
  TipoDemanda get tipo;
  @override
  String get demanda;
  @override
  DateTime get data;
  @override
  int? get id;
  @override
  String? get status;
  @override
  String? get evolucao;
  @override
  Map<String, dynamic>? get dadosEspecificos;

  /// Create a copy of Demanda
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DemandaImplCopyWith<_$DemandaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DemandaSaude _$DemandaSaudeFromJson(Map<String, dynamic> json) {
  return _DemandaSaude.fromJson(json);
}

/// @nodoc
mixin _$DemandaSaude {
  String get cpf => throw _privateConstructorUsedError;
  String get gestPuerNutriz => throw _privateConstructorUsedError;
  String get mobReduzida => throw _privateConstructorUsedError;
  String get cuidaOutrem => throw _privateConstructorUsedError;
  String get pcdOuMental => throw _privateConstructorUsedError;
  String? get genero => throw _privateConstructorUsedError;
  String? get saudeCid => throw _privateConstructorUsedError;
  DateTime? get dataNasc => throw _privateConstructorUsedError;
  String? get alergiaIntol => throw _privateConstructorUsedError;
  String? get subsPsicoativas => throw _privateConstructorUsedError;
  String? get medControlada => throw _privateConstructorUsedError;
  String? get localRef => throw _privateConstructorUsedError;
  String? get evolucao => throw _privateConstructorUsedError;
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
  ) =>
      throw _privateConstructorUsedError;
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
  ) =>
      throw _privateConstructorUsedError;
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DemandaSaude value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DemandaSaude value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DemandaSaude value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this DemandaSaude to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DemandaSaude
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DemandaSaudeCopyWith<DemandaSaude> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemandaSaudeCopyWith<$Res> {
  factory $DemandaSaudeCopyWith(
          DemandaSaude value, $Res Function(DemandaSaude) then) =
      _$DemandaSaudeCopyWithImpl<$Res, DemandaSaude>;
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
class _$DemandaSaudeCopyWithImpl<$Res, $Val extends DemandaSaude>
    implements $DemandaSaudeCopyWith<$Res> {
  _$DemandaSaudeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      gestPuerNutriz: null == gestPuerNutriz
          ? _value.gestPuerNutriz
          : gestPuerNutriz // ignore: cast_nullable_to_non_nullable
              as String,
      mobReduzida: null == mobReduzida
          ? _value.mobReduzida
          : mobReduzida // ignore: cast_nullable_to_non_nullable
              as String,
      cuidaOutrem: null == cuidaOutrem
          ? _value.cuidaOutrem
          : cuidaOutrem // ignore: cast_nullable_to_non_nullable
              as String,
      pcdOuMental: null == pcdOuMental
          ? _value.pcdOuMental
          : pcdOuMental // ignore: cast_nullable_to_non_nullable
              as String,
      genero: freezed == genero
          ? _value.genero
          : genero // ignore: cast_nullable_to_non_nullable
              as String?,
      saudeCid: freezed == saudeCid
          ? _value.saudeCid
          : saudeCid // ignore: cast_nullable_to_non_nullable
              as String?,
      dataNasc: freezed == dataNasc
          ? _value.dataNasc
          : dataNasc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      alergiaIntol: freezed == alergiaIntol
          ? _value.alergiaIntol
          : alergiaIntol // ignore: cast_nullable_to_non_nullable
              as String?,
      subsPsicoativas: freezed == subsPsicoativas
          ? _value.subsPsicoativas
          : subsPsicoativas // ignore: cast_nullable_to_non_nullable
              as String?,
      medControlada: freezed == medControlada
          ? _value.medControlada
          : medControlada // ignore: cast_nullable_to_non_nullable
              as String?,
      localRef: freezed == localRef
          ? _value.localRef
          : localRef // ignore: cast_nullable_to_non_nullable
              as String?,
      evolucao: freezed == evolucao
          ? _value.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DemandaSaudeImplCopyWith<$Res>
    implements $DemandaSaudeCopyWith<$Res> {
  factory _$$DemandaSaudeImplCopyWith(
          _$DemandaSaudeImpl value, $Res Function(_$DemandaSaudeImpl) then) =
      __$$DemandaSaudeImplCopyWithImpl<$Res>;
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
class __$$DemandaSaudeImplCopyWithImpl<$Res>
    extends _$DemandaSaudeCopyWithImpl<$Res, _$DemandaSaudeImpl>
    implements _$$DemandaSaudeImplCopyWith<$Res> {
  __$$DemandaSaudeImplCopyWithImpl(
      _$DemandaSaudeImpl _value, $Res Function(_$DemandaSaudeImpl) _then)
      : super(_value, _then);

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
    return _then(_$DemandaSaudeImpl(
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      gestPuerNutriz: null == gestPuerNutriz
          ? _value.gestPuerNutriz
          : gestPuerNutriz // ignore: cast_nullable_to_non_nullable
              as String,
      mobReduzida: null == mobReduzida
          ? _value.mobReduzida
          : mobReduzida // ignore: cast_nullable_to_non_nullable
              as String,
      cuidaOutrem: null == cuidaOutrem
          ? _value.cuidaOutrem
          : cuidaOutrem // ignore: cast_nullable_to_non_nullable
              as String,
      pcdOuMental: null == pcdOuMental
          ? _value.pcdOuMental
          : pcdOuMental // ignore: cast_nullable_to_non_nullable
              as String,
      genero: freezed == genero
          ? _value.genero
          : genero // ignore: cast_nullable_to_non_nullable
              as String?,
      saudeCid: freezed == saudeCid
          ? _value.saudeCid
          : saudeCid // ignore: cast_nullable_to_non_nullable
              as String?,
      dataNasc: freezed == dataNasc
          ? _value.dataNasc
          : dataNasc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      alergiaIntol: freezed == alergiaIntol
          ? _value.alergiaIntol
          : alergiaIntol // ignore: cast_nullable_to_non_nullable
              as String?,
      subsPsicoativas: freezed == subsPsicoativas
          ? _value.subsPsicoativas
          : subsPsicoativas // ignore: cast_nullable_to_non_nullable
              as String?,
      medControlada: freezed == medControlada
          ? _value.medControlada
          : medControlada // ignore: cast_nullable_to_non_nullable
              as String?,
      localRef: freezed == localRef
          ? _value.localRef
          : localRef // ignore: cast_nullable_to_non_nullable
              as String?,
      evolucao: freezed == evolucao
          ? _value.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DemandaSaudeImpl implements _DemandaSaude {
  const _$DemandaSaudeImpl(
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

  factory _$DemandaSaudeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DemandaSaudeImplFromJson(json);

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

  @override
  String toString() {
    return 'DemandaSaude(cpf: $cpf, gestPuerNutriz: $gestPuerNutriz, mobReduzida: $mobReduzida, cuidaOutrem: $cuidaOutrem, pcdOuMental: $pcdOuMental, genero: $genero, saudeCid: $saudeCid, dataNasc: $dataNasc, alergiaIntol: $alergiaIntol, subsPsicoativas: $subsPsicoativas, medControlada: $medControlada, localRef: $localRef, evolucao: $evolucao)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DemandaSaudeImpl &&
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

  /// Create a copy of DemandaSaude
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DemandaSaudeImplCopyWith<_$DemandaSaudeImpl> get copyWith =>
      __$$DemandaSaudeImplCopyWithImpl<_$DemandaSaudeImpl>(this, _$identity);

  @override
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
    return $default(
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
  }

  @override
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
    return $default?.call(
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
  }

  @override
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
    if ($default != null) {
      return $default(
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
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DemandaSaude value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DemandaSaude value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DemandaSaude value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DemandaSaudeImplToJson(
      this,
    );
  }
}

abstract class _DemandaSaude implements DemandaSaude {
  const factory _DemandaSaude(
      {required final String cpf,
      required final String gestPuerNutriz,
      required final String mobReduzida,
      required final String cuidaOutrem,
      required final String pcdOuMental,
      final String? genero,
      final String? saudeCid,
      final DateTime? dataNasc,
      final String? alergiaIntol,
      final String? subsPsicoativas,
      final String? medControlada,
      final String? localRef,
      final String? evolucao}) = _$DemandaSaudeImpl;

  factory _DemandaSaude.fromJson(Map<String, dynamic> json) =
      _$DemandaSaudeImpl.fromJson;

  @override
  String get cpf;
  @override
  String get gestPuerNutriz;
  @override
  String get mobReduzida;
  @override
  String get cuidaOutrem;
  @override
  String get pcdOuMental;
  @override
  String? get genero;
  @override
  String? get saudeCid;
  @override
  DateTime? get dataNasc;
  @override
  String? get alergiaIntol;
  @override
  String? get subsPsicoativas;
  @override
  String? get medControlada;
  @override
  String? get localRef;
  @override
  String? get evolucao;

  /// Create a copy of DemandaSaude
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DemandaSaudeImplCopyWith<_$DemandaSaudeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DemandaEducacao _$DemandaEducacaoFromJson(Map<String, dynamic> json) {
  return _DemandaEducacao.fromJson(json);
}

/// @nodoc
mixin _$DemandaEducacao {
  String get cpfResponsavel => throw _privateConstructorUsedError;
  String get nome => throw _privateConstructorUsedError;
  String get cpf => throw _privateConstructorUsedError;
  String? get genero => throw _privateConstructorUsedError;
  int? get alojamento => throw _privateConstructorUsedError;
  DateTime? get dataNasc => throw _privateConstructorUsedError;
  int? get unidadeEnsino => throw _privateConstructorUsedError;
  String? get turno => throw _privateConstructorUsedError;
  String? get demanda => throw _privateConstructorUsedError;
  String? get evolucao => throw _privateConstructorUsedError;
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
  ) =>
      throw _privateConstructorUsedError;
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
  ) =>
      throw _privateConstructorUsedError;
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DemandaEducacao value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DemandaEducacao value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DemandaEducacao value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this DemandaEducacao to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DemandaEducacao
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DemandaEducacaoCopyWith<DemandaEducacao> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemandaEducacaoCopyWith<$Res> {
  factory $DemandaEducacaoCopyWith(
          DemandaEducacao value, $Res Function(DemandaEducacao) then) =
      _$DemandaEducacaoCopyWithImpl<$Res, DemandaEducacao>;
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
class _$DemandaEducacaoCopyWithImpl<$Res, $Val extends DemandaEducacao>
    implements $DemandaEducacaoCopyWith<$Res> {
  _$DemandaEducacaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      cpfResponsavel: null == cpfResponsavel
          ? _value.cpfResponsavel
          : cpfResponsavel // ignore: cast_nullable_to_non_nullable
              as String,
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      genero: freezed == genero
          ? _value.genero
          : genero // ignore: cast_nullable_to_non_nullable
              as String?,
      alojamento: freezed == alojamento
          ? _value.alojamento
          : alojamento // ignore: cast_nullable_to_non_nullable
              as int?,
      dataNasc: freezed == dataNasc
          ? _value.dataNasc
          : dataNasc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unidadeEnsino: freezed == unidadeEnsino
          ? _value.unidadeEnsino
          : unidadeEnsino // ignore: cast_nullable_to_non_nullable
              as int?,
      turno: freezed == turno
          ? _value.turno
          : turno // ignore: cast_nullable_to_non_nullable
              as String?,
      demanda: freezed == demanda
          ? _value.demanda
          : demanda // ignore: cast_nullable_to_non_nullable
              as String?,
      evolucao: freezed == evolucao
          ? _value.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DemandaEducacaoImplCopyWith<$Res>
    implements $DemandaEducacaoCopyWith<$Res> {
  factory _$$DemandaEducacaoImplCopyWith(_$DemandaEducacaoImpl value,
          $Res Function(_$DemandaEducacaoImpl) then) =
      __$$DemandaEducacaoImplCopyWithImpl<$Res>;
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
class __$$DemandaEducacaoImplCopyWithImpl<$Res>
    extends _$DemandaEducacaoCopyWithImpl<$Res, _$DemandaEducacaoImpl>
    implements _$$DemandaEducacaoImplCopyWith<$Res> {
  __$$DemandaEducacaoImplCopyWithImpl(
      _$DemandaEducacaoImpl _value, $Res Function(_$DemandaEducacaoImpl) _then)
      : super(_value, _then);

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
    return _then(_$DemandaEducacaoImpl(
      cpfResponsavel: null == cpfResponsavel
          ? _value.cpfResponsavel
          : cpfResponsavel // ignore: cast_nullable_to_non_nullable
              as String,
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      genero: freezed == genero
          ? _value.genero
          : genero // ignore: cast_nullable_to_non_nullable
              as String?,
      alojamento: freezed == alojamento
          ? _value.alojamento
          : alojamento // ignore: cast_nullable_to_non_nullable
              as int?,
      dataNasc: freezed == dataNasc
          ? _value.dataNasc
          : dataNasc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unidadeEnsino: freezed == unidadeEnsino
          ? _value.unidadeEnsino
          : unidadeEnsino // ignore: cast_nullable_to_non_nullable
              as int?,
      turno: freezed == turno
          ? _value.turno
          : turno // ignore: cast_nullable_to_non_nullable
              as String?,
      demanda: freezed == demanda
          ? _value.demanda
          : demanda // ignore: cast_nullable_to_non_nullable
              as String?,
      evolucao: freezed == evolucao
          ? _value.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DemandaEducacaoImpl implements _DemandaEducacao {
  const _$DemandaEducacaoImpl(
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

  factory _$DemandaEducacaoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DemandaEducacaoImplFromJson(json);

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

  @override
  String toString() {
    return 'DemandaEducacao(cpfResponsavel: $cpfResponsavel, nome: $nome, cpf: $cpf, genero: $genero, alojamento: $alojamento, dataNasc: $dataNasc, unidadeEnsino: $unidadeEnsino, turno: $turno, demanda: $demanda, evolucao: $evolucao)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DemandaEducacaoImpl &&
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

  /// Create a copy of DemandaEducacao
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DemandaEducacaoImplCopyWith<_$DemandaEducacaoImpl> get copyWith =>
      __$$DemandaEducacaoImplCopyWithImpl<_$DemandaEducacaoImpl>(
          this, _$identity);

  @override
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
    return $default(cpfResponsavel, nome, cpf, genero, alojamento, dataNasc,
        unidadeEnsino, turno, demanda, evolucao);
  }

  @override
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
    return $default?.call(cpfResponsavel, nome, cpf, genero, alojamento,
        dataNasc, unidadeEnsino, turno, demanda, evolucao);
  }

  @override
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
    if ($default != null) {
      return $default(cpfResponsavel, nome, cpf, genero, alojamento, dataNasc,
          unidadeEnsino, turno, demanda, evolucao);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DemandaEducacao value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DemandaEducacao value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DemandaEducacao value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DemandaEducacaoImplToJson(
      this,
    );
  }
}

abstract class _DemandaEducacao implements DemandaEducacao {
  const factory _DemandaEducacao(
      {required final String cpfResponsavel,
      required final String nome,
      required final String cpf,
      final String? genero,
      final int? alojamento,
      final DateTime? dataNasc,
      final int? unidadeEnsino,
      final String? turno,
      final String? demanda,
      final String? evolucao}) = _$DemandaEducacaoImpl;

  factory _DemandaEducacao.fromJson(Map<String, dynamic> json) =
      _$DemandaEducacaoImpl.fromJson;

  @override
  String get cpfResponsavel;
  @override
  String get nome;
  @override
  String get cpf;
  @override
  String? get genero;
  @override
  int? get alojamento;
  @override
  DateTime? get dataNasc;
  @override
  int? get unidadeEnsino;
  @override
  String? get turno;
  @override
  String? get demanda;
  @override
  String? get evolucao;

  /// Create a copy of DemandaEducacao
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DemandaEducacaoImplCopyWith<_$DemandaEducacaoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DemandaHabitacao _$DemandaHabitacaoFromJson(Map<String, dynamic> json) {
  return _DemandaHabitacao.fromJson(json);
}

/// @nodoc
mixin _$DemandaHabitacao {
  String get cpf => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  String? get areaVerde => throw _privateConstructorUsedError;
  String? get ocupacao => throw _privateConstructorUsedError;
  String? get material => throw _privateConstructorUsedError;
  String? get relacaoImovel => throw _privateConstructorUsedError;
  String? get usoImovel => throw _privateConstructorUsedError;
  int? get codRge => throw _privateConstructorUsedError;
  String? get evolucao => throw _privateConstructorUsedError;
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
  ) =>
      throw _privateConstructorUsedError;
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
  ) =>
      throw _privateConstructorUsedError;
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DemandaHabitacao value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DemandaHabitacao value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DemandaHabitacao value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this DemandaHabitacao to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DemandaHabitacao
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DemandaHabitacaoCopyWith<DemandaHabitacao> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemandaHabitacaoCopyWith<$Res> {
  factory $DemandaHabitacaoCopyWith(
          DemandaHabitacao value, $Res Function(DemandaHabitacao) then) =
      _$DemandaHabitacaoCopyWithImpl<$Res, DemandaHabitacao>;
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
class _$DemandaHabitacaoCopyWithImpl<$Res, $Val extends DemandaHabitacao>
    implements $DemandaHabitacaoCopyWith<$Res> {
  _$DemandaHabitacaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      areaVerde: freezed == areaVerde
          ? _value.areaVerde
          : areaVerde // ignore: cast_nullable_to_non_nullable
              as String?,
      ocupacao: freezed == ocupacao
          ? _value.ocupacao
          : ocupacao // ignore: cast_nullable_to_non_nullable
              as String?,
      material: freezed == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as String?,
      relacaoImovel: freezed == relacaoImovel
          ? _value.relacaoImovel
          : relacaoImovel // ignore: cast_nullable_to_non_nullable
              as String?,
      usoImovel: freezed == usoImovel
          ? _value.usoImovel
          : usoImovel // ignore: cast_nullable_to_non_nullable
              as String?,
      codRge: freezed == codRge
          ? _value.codRge
          : codRge // ignore: cast_nullable_to_non_nullable
              as int?,
      evolucao: freezed == evolucao
          ? _value.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DemandaHabitacaoImplCopyWith<$Res>
    implements $DemandaHabitacaoCopyWith<$Res> {
  factory _$$DemandaHabitacaoImplCopyWith(_$DemandaHabitacaoImpl value,
          $Res Function(_$DemandaHabitacaoImpl) then) =
      __$$DemandaHabitacaoImplCopyWithImpl<$Res>;
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
class __$$DemandaHabitacaoImplCopyWithImpl<$Res>
    extends _$DemandaHabitacaoCopyWithImpl<$Res, _$DemandaHabitacaoImpl>
    implements _$$DemandaHabitacaoImplCopyWith<$Res> {
  __$$DemandaHabitacaoImplCopyWithImpl(_$DemandaHabitacaoImpl _value,
      $Res Function(_$DemandaHabitacaoImpl) _then)
      : super(_value, _then);

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
    return _then(_$DemandaHabitacaoImpl(
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      areaVerde: freezed == areaVerde
          ? _value.areaVerde
          : areaVerde // ignore: cast_nullable_to_non_nullable
              as String?,
      ocupacao: freezed == ocupacao
          ? _value.ocupacao
          : ocupacao // ignore: cast_nullable_to_non_nullable
              as String?,
      material: freezed == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as String?,
      relacaoImovel: freezed == relacaoImovel
          ? _value.relacaoImovel
          : relacaoImovel // ignore: cast_nullable_to_non_nullable
              as String?,
      usoImovel: freezed == usoImovel
          ? _value.usoImovel
          : usoImovel // ignore: cast_nullable_to_non_nullable
              as String?,
      codRge: freezed == codRge
          ? _value.codRge
          : codRge // ignore: cast_nullable_to_non_nullable
              as int?,
      evolucao: freezed == evolucao
          ? _value.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DemandaHabitacaoImpl implements _DemandaHabitacao {
  const _$DemandaHabitacaoImpl(
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

  factory _$DemandaHabitacaoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DemandaHabitacaoImplFromJson(json);

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

  @override
  String toString() {
    return 'DemandaHabitacao(cpf: $cpf, latitude: $latitude, longitude: $longitude, areaVerde: $areaVerde, ocupacao: $ocupacao, material: $material, relacaoImovel: $relacaoImovel, usoImovel: $usoImovel, codRge: $codRge, evolucao: $evolucao)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DemandaHabitacaoImpl &&
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

  /// Create a copy of DemandaHabitacao
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DemandaHabitacaoImplCopyWith<_$DemandaHabitacaoImpl> get copyWith =>
      __$$DemandaHabitacaoImplCopyWithImpl<_$DemandaHabitacaoImpl>(
          this, _$identity);

  @override
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
    return $default(cpf, latitude, longitude, areaVerde, ocupacao, material,
        relacaoImovel, usoImovel, codRge, evolucao);
  }

  @override
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
    return $default?.call(cpf, latitude, longitude, areaVerde, ocupacao,
        material, relacaoImovel, usoImovel, codRge, evolucao);
  }

  @override
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
    if ($default != null) {
      return $default(cpf, latitude, longitude, areaVerde, ocupacao, material,
          relacaoImovel, usoImovel, codRge, evolucao);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DemandaHabitacao value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DemandaHabitacao value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DemandaHabitacao value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DemandaHabitacaoImplToJson(
      this,
    );
  }
}

abstract class _DemandaHabitacao implements DemandaHabitacao {
  const factory _DemandaHabitacao(
      {required final String cpf,
      final double? latitude,
      final double? longitude,
      final String? areaVerde,
      final String? ocupacao,
      final String? material,
      final String? relacaoImovel,
      final String? usoImovel,
      final int? codRge,
      final String? evolucao}) = _$DemandaHabitacaoImpl;

  factory _DemandaHabitacao.fromJson(Map<String, dynamic> json) =
      _$DemandaHabitacaoImpl.fromJson;

  @override
  String get cpf;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  String? get areaVerde;
  @override
  String? get ocupacao;
  @override
  String? get material;
  @override
  String? get relacaoImovel;
  @override
  String? get usoImovel;
  @override
  int? get codRge;
  @override
  String? get evolucao;

  /// Create a copy of DemandaHabitacao
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DemandaHabitacaoImplCopyWith<_$DemandaHabitacaoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DemandaAmbiente _$DemandaAmbienteFromJson(Map<String, dynamic> json) {
  return _DemandaAmbiente.fromJson(json);
}

/// @nodoc
mixin _$DemandaAmbiente {
  String get cpf => throw _privateConstructorUsedError;
  String get acompanhaTutor => throw _privateConstructorUsedError;
  int? get quantidade => throw _privateConstructorUsedError;
  String? get especie => throw _privateConstructorUsedError;
  String? get vacinado => throw _privateConstructorUsedError;
  String? get vacRaiva => throw _privateConstructorUsedError;
  String? get vacV8v10 => throw _privateConstructorUsedError;
  String? get necRacao => throw _privateConstructorUsedError;
  String? get castrado => throw _privateConstructorUsedError;
  String? get porte => throw _privateConstructorUsedError;
  String? get evolucao => throw _privateConstructorUsedError;
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
  ) =>
      throw _privateConstructorUsedError;
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
  ) =>
      throw _privateConstructorUsedError;
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DemandaAmbiente value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DemandaAmbiente value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DemandaAmbiente value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this DemandaAmbiente to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DemandaAmbiente
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DemandaAmbienteCopyWith<DemandaAmbiente> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemandaAmbienteCopyWith<$Res> {
  factory $DemandaAmbienteCopyWith(
          DemandaAmbiente value, $Res Function(DemandaAmbiente) then) =
      _$DemandaAmbienteCopyWithImpl<$Res, DemandaAmbiente>;
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
class _$DemandaAmbienteCopyWithImpl<$Res, $Val extends DemandaAmbiente>
    implements $DemandaAmbienteCopyWith<$Res> {
  _$DemandaAmbienteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      acompanhaTutor: null == acompanhaTutor
          ? _value.acompanhaTutor
          : acompanhaTutor // ignore: cast_nullable_to_non_nullable
              as String,
      quantidade: freezed == quantidade
          ? _value.quantidade
          : quantidade // ignore: cast_nullable_to_non_nullable
              as int?,
      especie: freezed == especie
          ? _value.especie
          : especie // ignore: cast_nullable_to_non_nullable
              as String?,
      vacinado: freezed == vacinado
          ? _value.vacinado
          : vacinado // ignore: cast_nullable_to_non_nullable
              as String?,
      vacRaiva: freezed == vacRaiva
          ? _value.vacRaiva
          : vacRaiva // ignore: cast_nullable_to_non_nullable
              as String?,
      vacV8v10: freezed == vacV8v10
          ? _value.vacV8v10
          : vacV8v10 // ignore: cast_nullable_to_non_nullable
              as String?,
      necRacao: freezed == necRacao
          ? _value.necRacao
          : necRacao // ignore: cast_nullable_to_non_nullable
              as String?,
      castrado: freezed == castrado
          ? _value.castrado
          : castrado // ignore: cast_nullable_to_non_nullable
              as String?,
      porte: freezed == porte
          ? _value.porte
          : porte // ignore: cast_nullable_to_non_nullable
              as String?,
      evolucao: freezed == evolucao
          ? _value.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DemandaAmbienteImplCopyWith<$Res>
    implements $DemandaAmbienteCopyWith<$Res> {
  factory _$$DemandaAmbienteImplCopyWith(_$DemandaAmbienteImpl value,
          $Res Function(_$DemandaAmbienteImpl) then) =
      __$$DemandaAmbienteImplCopyWithImpl<$Res>;
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
class __$$DemandaAmbienteImplCopyWithImpl<$Res>
    extends _$DemandaAmbienteCopyWithImpl<$Res, _$DemandaAmbienteImpl>
    implements _$$DemandaAmbienteImplCopyWith<$Res> {
  __$$DemandaAmbienteImplCopyWithImpl(
      _$DemandaAmbienteImpl _value, $Res Function(_$DemandaAmbienteImpl) _then)
      : super(_value, _then);

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
    return _then(_$DemandaAmbienteImpl(
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      acompanhaTutor: null == acompanhaTutor
          ? _value.acompanhaTutor
          : acompanhaTutor // ignore: cast_nullable_to_non_nullable
              as String,
      quantidade: freezed == quantidade
          ? _value.quantidade
          : quantidade // ignore: cast_nullable_to_non_nullable
              as int?,
      especie: freezed == especie
          ? _value.especie
          : especie // ignore: cast_nullable_to_non_nullable
              as String?,
      vacinado: freezed == vacinado
          ? _value.vacinado
          : vacinado // ignore: cast_nullable_to_non_nullable
              as String?,
      vacRaiva: freezed == vacRaiva
          ? _value.vacRaiva
          : vacRaiva // ignore: cast_nullable_to_non_nullable
              as String?,
      vacV8v10: freezed == vacV8v10
          ? _value.vacV8v10
          : vacV8v10 // ignore: cast_nullable_to_non_nullable
              as String?,
      necRacao: freezed == necRacao
          ? _value.necRacao
          : necRacao // ignore: cast_nullable_to_non_nullable
              as String?,
      castrado: freezed == castrado
          ? _value.castrado
          : castrado // ignore: cast_nullable_to_non_nullable
              as String?,
      porte: freezed == porte
          ? _value.porte
          : porte // ignore: cast_nullable_to_non_nullable
              as String?,
      evolucao: freezed == evolucao
          ? _value.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DemandaAmbienteImpl implements _DemandaAmbiente {
  const _$DemandaAmbienteImpl(
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

  factory _$DemandaAmbienteImpl.fromJson(Map<String, dynamic> json) =>
      _$$DemandaAmbienteImplFromJson(json);

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

  @override
  String toString() {
    return 'DemandaAmbiente(cpf: $cpf, acompanhaTutor: $acompanhaTutor, quantidade: $quantidade, especie: $especie, vacinado: $vacinado, vacRaiva: $vacRaiva, vacV8v10: $vacV8v10, necRacao: $necRacao, castrado: $castrado, porte: $porte, evolucao: $evolucao)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DemandaAmbienteImpl &&
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

  /// Create a copy of DemandaAmbiente
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DemandaAmbienteImplCopyWith<_$DemandaAmbienteImpl> get copyWith =>
      __$$DemandaAmbienteImplCopyWithImpl<_$DemandaAmbienteImpl>(
          this, _$identity);

  @override
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
    return $default(cpf, acompanhaTutor, quantidade, especie, vacinado,
        vacRaiva, vacV8v10, necRacao, castrado, porte, evolucao);
  }

  @override
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
    return $default?.call(cpf, acompanhaTutor, quantidade, especie, vacinado,
        vacRaiva, vacV8v10, necRacao, castrado, porte, evolucao);
  }

  @override
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
    if ($default != null) {
      return $default(cpf, acompanhaTutor, quantidade, especie, vacinado,
          vacRaiva, vacV8v10, necRacao, castrado, porte, evolucao);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DemandaAmbiente value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DemandaAmbiente value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DemandaAmbiente value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DemandaAmbienteImplToJson(
      this,
    );
  }
}

abstract class _DemandaAmbiente implements DemandaAmbiente {
  const factory _DemandaAmbiente(
      {required final String cpf,
      required final String acompanhaTutor,
      final int? quantidade,
      final String? especie,
      final String? vacinado,
      final String? vacRaiva,
      final String? vacV8v10,
      final String? necRacao,
      final String? castrado,
      final String? porte,
      final String? evolucao}) = _$DemandaAmbienteImpl;

  factory _DemandaAmbiente.fromJson(Map<String, dynamic> json) =
      _$DemandaAmbienteImpl.fromJson;

  @override
  String get cpf;
  @override
  String get acompanhaTutor;
  @override
  int? get quantidade;
  @override
  String? get especie;
  @override
  String? get vacinado;
  @override
  String? get vacRaiva;
  @override
  String? get vacV8v10;
  @override
  String? get necRacao;
  @override
  String? get castrado;
  @override
  String? get porte;
  @override
  String? get evolucao;

  /// Create a copy of DemandaAmbiente
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DemandaAmbienteImplCopyWith<_$DemandaAmbienteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DemandaInterna _$DemandaInternaFromJson(Map<String, dynamic> json) {
  return _DemandaInterna.fromJson(json);
}

/// @nodoc
mixin _$DemandaInterna {
  String get cpf => throw _privateConstructorUsedError;
  String get demanda => throw _privateConstructorUsedError;
  DateTime get data => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get evolucao => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String cpf, String demanda, DateTime data, String? status,
            String? evolucao)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String cpf, String demanda, DateTime data, String? status,
            String? evolucao)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String cpf, String demanda, DateTime data, String? status,
            String? evolucao)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DemandaInterna value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DemandaInterna value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DemandaInterna value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this DemandaInterna to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DemandaInterna
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DemandaInternaCopyWith<DemandaInterna> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemandaInternaCopyWith<$Res> {
  factory $DemandaInternaCopyWith(
          DemandaInterna value, $Res Function(DemandaInterna) then) =
      _$DemandaInternaCopyWithImpl<$Res, DemandaInterna>;
  @useResult
  $Res call(
      {String cpf,
      String demanda,
      DateTime data,
      String? status,
      String? evolucao});
}

/// @nodoc
class _$DemandaInternaCopyWithImpl<$Res, $Val extends DemandaInterna>
    implements $DemandaInternaCopyWith<$Res> {
  _$DemandaInternaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      demanda: null == demanda
          ? _value.demanda
          : demanda // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      evolucao: freezed == evolucao
          ? _value.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DemandaInternaImplCopyWith<$Res>
    implements $DemandaInternaCopyWith<$Res> {
  factory _$$DemandaInternaImplCopyWith(_$DemandaInternaImpl value,
          $Res Function(_$DemandaInternaImpl) then) =
      __$$DemandaInternaImplCopyWithImpl<$Res>;
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
class __$$DemandaInternaImplCopyWithImpl<$Res>
    extends _$DemandaInternaCopyWithImpl<$Res, _$DemandaInternaImpl>
    implements _$$DemandaInternaImplCopyWith<$Res> {
  __$$DemandaInternaImplCopyWithImpl(
      _$DemandaInternaImpl _value, $Res Function(_$DemandaInternaImpl) _then)
      : super(_value, _then);

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
    return _then(_$DemandaInternaImpl(
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      demanda: null == demanda
          ? _value.demanda
          : demanda // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      evolucao: freezed == evolucao
          ? _value.evolucao
          : evolucao // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DemandaInternaImpl implements _DemandaInterna {
  const _$DemandaInternaImpl(
      {required this.cpf,
      required this.demanda,
      required this.data,
      this.status,
      this.evolucao});

  factory _$DemandaInternaImpl.fromJson(Map<String, dynamic> json) =>
      _$$DemandaInternaImplFromJson(json);

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

  @override
  String toString() {
    return 'DemandaInterna(cpf: $cpf, demanda: $demanda, data: $data, status: $status, evolucao: $evolucao)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DemandaInternaImpl &&
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

  /// Create a copy of DemandaInterna
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DemandaInternaImplCopyWith<_$DemandaInternaImpl> get copyWith =>
      __$$DemandaInternaImplCopyWithImpl<_$DemandaInternaImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String cpf, String demanda, DateTime data, String? status,
            String? evolucao)
        $default,
  ) {
    return $default(cpf, demanda, data, status, evolucao);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String cpf, String demanda, DateTime data, String? status,
            String? evolucao)?
        $default,
  ) {
    return $default?.call(cpf, demanda, data, status, evolucao);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String cpf, String demanda, DateTime data, String? status,
            String? evolucao)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(cpf, demanda, data, status, evolucao);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DemandaInterna value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DemandaInterna value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DemandaInterna value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DemandaInternaImplToJson(
      this,
    );
  }
}

abstract class _DemandaInterna implements DemandaInterna {
  const factory _DemandaInterna(
      {required final String cpf,
      required final String demanda,
      required final DateTime data,
      final String? status,
      final String? evolucao}) = _$DemandaInternaImpl;

  factory _DemandaInterna.fromJson(Map<String, dynamic> json) =
      _$DemandaInternaImpl.fromJson;

  @override
  String get cpf;
  @override
  String get demanda;
  @override
  DateTime get data;
  @override
  String? get status;
  @override
  String? get evolucao;

  /// Create a copy of DemandaInterna
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DemandaInternaImplCopyWith<_$DemandaInternaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
