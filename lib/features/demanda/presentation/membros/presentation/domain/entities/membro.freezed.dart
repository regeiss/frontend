// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'membro.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Membro {
  String get cpf;
  String get nome;
  String get cpfResponsavel;
  DateTime? get timestamp;
  String? get status;

  /// Create a copy of Membro
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MembroCopyWith<Membro> get copyWith =>
      _$MembroCopyWithImpl<Membro>(this as Membro, _$identity);

  /// Serializes this Membro to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Membro &&
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

  @override
  String toString() {
    return 'Membro(cpf: $cpf, nome: $nome, cpfResponsavel: $cpfResponsavel, timestamp: $timestamp, status: $status)';
  }
}

/// @nodoc
abstract mixin class $MembroCopyWith<$Res> {
  factory $MembroCopyWith(Membro value, $Res Function(Membro) _then) =
      _$MembroCopyWithImpl;
  @useResult
  $Res call(
      {String cpf,
      String nome,
      String cpfResponsavel,
      DateTime? timestamp,
      String? status});
}

/// @nodoc
class _$MembroCopyWithImpl<$Res> implements $MembroCopyWith<$Res> {
  _$MembroCopyWithImpl(this._self, this._then);

  final Membro _self;
  final $Res Function(Membro) _then;

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
    return _then(_self.copyWith(
      cpf: null == cpf
          ? _self.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      nome: null == nome
          ? _self.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      cpfResponsavel: null == cpfResponsavel
          ? _self.cpfResponsavel
          : cpfResponsavel // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: freezed == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Membro].
extension MembroPatterns on Membro {
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
    TResult Function(_Membro value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Membro() when $default != null:
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
    TResult Function(_Membro value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Membro():
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
    TResult? Function(_Membro value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Membro() when $default != null:
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
    TResult Function(String cpf, String nome, String cpfResponsavel,
            DateTime? timestamp, String? status)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Membro() when $default != null:
        return $default(_that.cpf, _that.nome, _that.cpfResponsavel,
            _that.timestamp, _that.status);
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
    TResult Function(String cpf, String nome, String cpfResponsavel,
            DateTime? timestamp, String? status)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Membro():
        return $default(_that.cpf, _that.nome, _that.cpfResponsavel,
            _that.timestamp, _that.status);
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
    TResult? Function(String cpf, String nome, String cpfResponsavel,
            DateTime? timestamp, String? status)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Membro() when $default != null:
        return $default(_that.cpf, _that.nome, _that.cpfResponsavel,
            _that.timestamp, _that.status);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Membro implements Membro {
  const _Membro(
      {required this.cpf,
      required this.nome,
      required this.cpfResponsavel,
      this.timestamp,
      this.status});
  factory _Membro.fromJson(Map<String, dynamic> json) => _$MembroFromJson(json);

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

  /// Create a copy of Membro
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MembroCopyWith<_Membro> get copyWith =>
      __$MembroCopyWithImpl<_Membro>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MembroToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Membro &&
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

  @override
  String toString() {
    return 'Membro(cpf: $cpf, nome: $nome, cpfResponsavel: $cpfResponsavel, timestamp: $timestamp, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$MembroCopyWith<$Res> implements $MembroCopyWith<$Res> {
  factory _$MembroCopyWith(_Membro value, $Res Function(_Membro) _then) =
      __$MembroCopyWithImpl;
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
class __$MembroCopyWithImpl<$Res> implements _$MembroCopyWith<$Res> {
  __$MembroCopyWithImpl(this._self, this._then);

  final _Membro _self;
  final $Res Function(_Membro) _then;

  /// Create a copy of Membro
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cpf = null,
    Object? nome = null,
    Object? cpfResponsavel = null,
    Object? timestamp = freezed,
    Object? status = freezed,
  }) {
    return _then(_Membro(
      cpf: null == cpf
          ? _self.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      nome: null == nome
          ? _self.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      cpfResponsavel: null == cpfResponsavel
          ? _self.cpfResponsavel
          : cpfResponsavel // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: freezed == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
