// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ResponsavelTableTable extends ResponsavelTable
    with TableInfo<$ResponsavelTableTable, ResponsavelTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ResponsavelTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _cpfMeta = const VerificationMeta('cpf');
  @override
  late final GeneratedColumn<String> cpf = GeneratedColumn<String>(
      'cpf', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 11, maxTextLength: 11),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
      'nome', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 150),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _cepMeta = const VerificationMeta('cep');
  @override
  late final GeneratedColumn<String> cep = GeneratedColumn<String>(
      'cep', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 8),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _numeroMeta = const VerificationMeta('numero');
  @override
  late final GeneratedColumn<int> numero = GeneratedColumn<int>(
      'numero', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _complementoMeta =
      const VerificationMeta('complemento');
  @override
  late final GeneratedColumn<String> complemento = GeneratedColumn<String>(
      'complemento', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 300),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _telefoneMeta =
      const VerificationMeta('telefone');
  @override
  late final GeneratedColumn<int> telefone = GeneratedColumn<int>(
      'telefone', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _bairroMeta = const VerificationMeta('bairro');
  @override
  late final GeneratedColumn<String> bairro = GeneratedColumn<String>(
      'bairro', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _logradouroMeta =
      const VerificationMeta('logradouro');
  @override
  late final GeneratedColumn<String> logradouro = GeneratedColumn<String>(
      'logradouro', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _nomeMaeMeta =
      const VerificationMeta('nomeMae');
  @override
  late final GeneratedColumn<String> nomeMae = GeneratedColumn<String>(
      'nome_mae', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _dataNascMeta =
      const VerificationMeta('dataNasc');
  @override
  late final GeneratedColumn<DateTime> dataNasc = GeneratedColumn<DateTime>(
      'data_nasc', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _timestampMeta =
      const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
      'timestamp', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _codRgeMeta = const VerificationMeta('codRge');
  @override
  late final GeneratedColumn<int> codRge = GeneratedColumn<int>(
      'cod_rge', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _syncPendingMeta =
      const VerificationMeta('syncPending');
  @override
  late final GeneratedColumn<bool> syncPending = GeneratedColumn<bool>(
      'sync_pending', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("sync_pending" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _deletePendingMeta =
      const VerificationMeta('deletePending');
  @override
  late final GeneratedColumn<bool> deletePending = GeneratedColumn<bool>(
      'delete_pending', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("delete_pending" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
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
        codRge,
        createdAt,
        updatedAt,
        syncPending,
        deletePending
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'responsavel';
  @override
  VerificationContext validateIntegrity(
      Insertable<ResponsavelTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('cpf')) {
      context.handle(
          _cpfMeta, cpf.isAcceptableOrUnknown(data['cpf']!, _cpfMeta));
    } else if (isInserting) {
      context.missing(_cpfMeta);
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('cep')) {
      context.handle(
          _cepMeta, cep.isAcceptableOrUnknown(data['cep']!, _cepMeta));
    } else if (isInserting) {
      context.missing(_cepMeta);
    }
    if (data.containsKey('numero')) {
      context.handle(_numeroMeta,
          numero.isAcceptableOrUnknown(data['numero']!, _numeroMeta));
    } else if (isInserting) {
      context.missing(_numeroMeta);
    }
    if (data.containsKey('complemento')) {
      context.handle(
          _complementoMeta,
          complemento.isAcceptableOrUnknown(
              data['complemento']!, _complementoMeta));
    }
    if (data.containsKey('telefone')) {
      context.handle(_telefoneMeta,
          telefone.isAcceptableOrUnknown(data['telefone']!, _telefoneMeta));
    }
    if (data.containsKey('bairro')) {
      context.handle(_bairroMeta,
          bairro.isAcceptableOrUnknown(data['bairro']!, _bairroMeta));
    }
    if (data.containsKey('logradouro')) {
      context.handle(
          _logradouroMeta,
          logradouro.isAcceptableOrUnknown(
              data['logradouro']!, _logradouroMeta));
    }
    if (data.containsKey('nome_mae')) {
      context.handle(_nomeMaeMeta,
          nomeMae.isAcceptableOrUnknown(data['nome_mae']!, _nomeMaeMeta));
    }
    if (data.containsKey('data_nasc')) {
      context.handle(_dataNascMeta,
          dataNasc.isAcceptableOrUnknown(data['data_nasc']!, _dataNascMeta));
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('cod_rge')) {
      context.handle(_codRgeMeta,
          codRge.isAcceptableOrUnknown(data['cod_rge']!, _codRgeMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('sync_pending')) {
      context.handle(
          _syncPendingMeta,
          syncPending.isAcceptableOrUnknown(
              data['sync_pending']!, _syncPendingMeta));
    }
    if (data.containsKey('delete_pending')) {
      context.handle(
          _deletePendingMeta,
          deletePending.isAcceptableOrUnknown(
              data['delete_pending']!, _deletePendingMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {cpf};
  @override
  ResponsavelTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ResponsavelTableData(
      cpf: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cpf'])!,
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nome'])!,
      cep: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cep'])!,
      numero: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}numero'])!,
      complemento: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}complemento']),
      telefone: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}telefone']),
      bairro: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bairro']),
      logradouro: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}logradouro']),
      nomeMae: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nome_mae']),
      dataNasc: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}data_nasc']),
      timestamp: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}timestamp']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status']),
      codRge: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}cod_rge']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      syncPending: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}sync_pending'])!,
      deletePending: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}delete_pending'])!,
    );
  }

  @override
  $ResponsavelTableTable createAlias(String alias) {
    return $ResponsavelTableTable(attachedDatabase, alias);
  }
}

class ResponsavelTableData extends DataClass
    implements Insertable<ResponsavelTableData> {
  final String cpf;
  final String nome;
  final String cep;
  final int numero;
  final String? complemento;
  final int? telefone;
  final String? bairro;
  final String? logradouro;
  final String? nomeMae;
  final DateTime? dataNasc;
  final DateTime? timestamp;
  final String? status;
  final int? codRge;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool syncPending;
  final bool deletePending;
  const ResponsavelTableData(
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
      this.codRge,
      required this.createdAt,
      required this.updatedAt,
      required this.syncPending,
      required this.deletePending});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['cpf'] = Variable<String>(cpf);
    map['nome'] = Variable<String>(nome);
    map['cep'] = Variable<String>(cep);
    map['numero'] = Variable<int>(numero);
    if (!nullToAbsent || complemento != null) {
      map['complemento'] = Variable<String>(complemento);
    }
    if (!nullToAbsent || telefone != null) {
      map['telefone'] = Variable<int>(telefone);
    }
    if (!nullToAbsent || bairro != null) {
      map['bairro'] = Variable<String>(bairro);
    }
    if (!nullToAbsent || logradouro != null) {
      map['logradouro'] = Variable<String>(logradouro);
    }
    if (!nullToAbsent || nomeMae != null) {
      map['nome_mae'] = Variable<String>(nomeMae);
    }
    if (!nullToAbsent || dataNasc != null) {
      map['data_nasc'] = Variable<DateTime>(dataNasc);
    }
    if (!nullToAbsent || timestamp != null) {
      map['timestamp'] = Variable<DateTime>(timestamp);
    }
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<String>(status);
    }
    if (!nullToAbsent || codRge != null) {
      map['cod_rge'] = Variable<int>(codRge);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['sync_pending'] = Variable<bool>(syncPending);
    map['delete_pending'] = Variable<bool>(deletePending);
    return map;
  }

  ResponsavelTableCompanion toCompanion(bool nullToAbsent) {
    return ResponsavelTableCompanion(
      cpf: Value(cpf),
      nome: Value(nome),
      cep: Value(cep),
      numero: Value(numero),
      complemento: complemento == null && nullToAbsent
          ? const Value.absent()
          : Value(complemento),
      telefone: telefone == null && nullToAbsent
          ? const Value.absent()
          : Value(telefone),
      bairro:
          bairro == null && nullToAbsent ? const Value.absent() : Value(bairro),
      logradouro: logradouro == null && nullToAbsent
          ? const Value.absent()
          : Value(logradouro),
      nomeMae: nomeMae == null && nullToAbsent
          ? const Value.absent()
          : Value(nomeMae),
      dataNasc: dataNasc == null && nullToAbsent
          ? const Value.absent()
          : Value(dataNasc),
      timestamp: timestamp == null && nullToAbsent
          ? const Value.absent()
          : Value(timestamp),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      codRge:
          codRge == null && nullToAbsent ? const Value.absent() : Value(codRge),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      syncPending: Value(syncPending),
      deletePending: Value(deletePending),
    );
  }

  factory ResponsavelTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ResponsavelTableData(
      cpf: serializer.fromJson<String>(json['cpf']),
      nome: serializer.fromJson<String>(json['nome']),
      cep: serializer.fromJson<String>(json['cep']),
      numero: serializer.fromJson<int>(json['numero']),
      complemento: serializer.fromJson<String?>(json['complemento']),
      telefone: serializer.fromJson<int?>(json['telefone']),
      bairro: serializer.fromJson<String?>(json['bairro']),
      logradouro: serializer.fromJson<String?>(json['logradouro']),
      nomeMae: serializer.fromJson<String?>(json['nomeMae']),
      dataNasc: serializer.fromJson<DateTime?>(json['dataNasc']),
      timestamp: serializer.fromJson<DateTime?>(json['timestamp']),
      status: serializer.fromJson<String?>(json['status']),
      codRge: serializer.fromJson<int?>(json['codRge']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      syncPending: serializer.fromJson<bool>(json['syncPending']),
      deletePending: serializer.fromJson<bool>(json['deletePending']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'cpf': serializer.toJson<String>(cpf),
      'nome': serializer.toJson<String>(nome),
      'cep': serializer.toJson<String>(cep),
      'numero': serializer.toJson<int>(numero),
      'complemento': serializer.toJson<String?>(complemento),
      'telefone': serializer.toJson<int?>(telefone),
      'bairro': serializer.toJson<String?>(bairro),
      'logradouro': serializer.toJson<String?>(logradouro),
      'nomeMae': serializer.toJson<String?>(nomeMae),
      'dataNasc': serializer.toJson<DateTime?>(dataNasc),
      'timestamp': serializer.toJson<DateTime?>(timestamp),
      'status': serializer.toJson<String?>(status),
      'codRge': serializer.toJson<int?>(codRge),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'syncPending': serializer.toJson<bool>(syncPending),
      'deletePending': serializer.toJson<bool>(deletePending),
    };
  }

  ResponsavelTableData copyWith(
          {String? cpf,
          String? nome,
          String? cep,
          int? numero,
          Value<String?> complemento = const Value.absent(),
          Value<int?> telefone = const Value.absent(),
          Value<String?> bairro = const Value.absent(),
          Value<String?> logradouro = const Value.absent(),
          Value<String?> nomeMae = const Value.absent(),
          Value<DateTime?> dataNasc = const Value.absent(),
          Value<DateTime?> timestamp = const Value.absent(),
          Value<String?> status = const Value.absent(),
          Value<int?> codRge = const Value.absent(),
          DateTime? createdAt,
          DateTime? updatedAt,
          bool? syncPending,
          bool? deletePending}) =>
      ResponsavelTableData(
        cpf: cpf ?? this.cpf,
        nome: nome ?? this.nome,
        cep: cep ?? this.cep,
        numero: numero ?? this.numero,
        complemento: complemento.present ? complemento.value : this.complemento,
        telefone: telefone.present ? telefone.value : this.telefone,
        bairro: bairro.present ? bairro.value : this.bairro,
        logradouro: logradouro.present ? logradouro.value : this.logradouro,
        nomeMae: nomeMae.present ? nomeMae.value : this.nomeMae,
        dataNasc: dataNasc.present ? dataNasc.value : this.dataNasc,
        timestamp: timestamp.present ? timestamp.value : this.timestamp,
        status: status.present ? status.value : this.status,
        codRge: codRge.present ? codRge.value : this.codRge,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        syncPending: syncPending ?? this.syncPending,
        deletePending: deletePending ?? this.deletePending,
      );
  ResponsavelTableData copyWithCompanion(ResponsavelTableCompanion data) {
    return ResponsavelTableData(
      cpf: data.cpf.present ? data.cpf.value : this.cpf,
      nome: data.nome.present ? data.nome.value : this.nome,
      cep: data.cep.present ? data.cep.value : this.cep,
      numero: data.numero.present ? data.numero.value : this.numero,
      complemento:
          data.complemento.present ? data.complemento.value : this.complemento,
      telefone: data.telefone.present ? data.telefone.value : this.telefone,
      bairro: data.bairro.present ? data.bairro.value : this.bairro,
      logradouro:
          data.logradouro.present ? data.logradouro.value : this.logradouro,
      nomeMae: data.nomeMae.present ? data.nomeMae.value : this.nomeMae,
      dataNasc: data.dataNasc.present ? data.dataNasc.value : this.dataNasc,
      timestamp: data.timestamp.present ? data.timestamp.value : this.timestamp,
      status: data.status.present ? data.status.value : this.status,
      codRge: data.codRge.present ? data.codRge.value : this.codRge,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      syncPending:
          data.syncPending.present ? data.syncPending.value : this.syncPending,
      deletePending: data.deletePending.present
          ? data.deletePending.value
          : this.deletePending,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ResponsavelTableData(')
          ..write('cpf: $cpf, ')
          ..write('nome: $nome, ')
          ..write('cep: $cep, ')
          ..write('numero: $numero, ')
          ..write('complemento: $complemento, ')
          ..write('telefone: $telefone, ')
          ..write('bairro: $bairro, ')
          ..write('logradouro: $logradouro, ')
          ..write('nomeMae: $nomeMae, ')
          ..write('dataNasc: $dataNasc, ')
          ..write('timestamp: $timestamp, ')
          ..write('status: $status, ')
          ..write('codRge: $codRge, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('syncPending: $syncPending, ')
          ..write('deletePending: $deletePending')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
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
      codRge,
      createdAt,
      updatedAt,
      syncPending,
      deletePending);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ResponsavelTableData &&
          other.cpf == this.cpf &&
          other.nome == this.nome &&
          other.cep == this.cep &&
          other.numero == this.numero &&
          other.complemento == this.complemento &&
          other.telefone == this.telefone &&
          other.bairro == this.bairro &&
          other.logradouro == this.logradouro &&
          other.nomeMae == this.nomeMae &&
          other.dataNasc == this.dataNasc &&
          other.timestamp == this.timestamp &&
          other.status == this.status &&
          other.codRge == this.codRge &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.syncPending == this.syncPending &&
          other.deletePending == this.deletePending);
}

class ResponsavelTableCompanion extends UpdateCompanion<ResponsavelTableData> {
  final Value<String> cpf;
  final Value<String> nome;
  final Value<String> cep;
  final Value<int> numero;
  final Value<String?> complemento;
  final Value<int?> telefone;
  final Value<String?> bairro;
  final Value<String?> logradouro;
  final Value<String?> nomeMae;
  final Value<DateTime?> dataNasc;
  final Value<DateTime?> timestamp;
  final Value<String?> status;
  final Value<int?> codRge;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<bool> syncPending;
  final Value<bool> deletePending;
  final Value<int> rowid;
  const ResponsavelTableCompanion({
    this.cpf = const Value.absent(),
    this.nome = const Value.absent(),
    this.cep = const Value.absent(),
    this.numero = const Value.absent(),
    this.complemento = const Value.absent(),
    this.telefone = const Value.absent(),
    this.bairro = const Value.absent(),
    this.logradouro = const Value.absent(),
    this.nomeMae = const Value.absent(),
    this.dataNasc = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.status = const Value.absent(),
    this.codRge = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.syncPending = const Value.absent(),
    this.deletePending = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ResponsavelTableCompanion.insert({
    required String cpf,
    required String nome,
    required String cep,
    required int numero,
    this.complemento = const Value.absent(),
    this.telefone = const Value.absent(),
    this.bairro = const Value.absent(),
    this.logradouro = const Value.absent(),
    this.nomeMae = const Value.absent(),
    this.dataNasc = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.status = const Value.absent(),
    this.codRge = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.syncPending = const Value.absent(),
    this.deletePending = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : cpf = Value(cpf),
        nome = Value(nome),
        cep = Value(cep),
        numero = Value(numero);
  static Insertable<ResponsavelTableData> custom({
    Expression<String>? cpf,
    Expression<String>? nome,
    Expression<String>? cep,
    Expression<int>? numero,
    Expression<String>? complemento,
    Expression<int>? telefone,
    Expression<String>? bairro,
    Expression<String>? logradouro,
    Expression<String>? nomeMae,
    Expression<DateTime>? dataNasc,
    Expression<DateTime>? timestamp,
    Expression<String>? status,
    Expression<int>? codRge,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<bool>? syncPending,
    Expression<bool>? deletePending,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (cpf != null) 'cpf': cpf,
      if (nome != null) 'nome': nome,
      if (cep != null) 'cep': cep,
      if (numero != null) 'numero': numero,
      if (complemento != null) 'complemento': complemento,
      if (telefone != null) 'telefone': telefone,
      if (bairro != null) 'bairro': bairro,
      if (logradouro != null) 'logradouro': logradouro,
      if (nomeMae != null) 'nome_mae': nomeMae,
      if (dataNasc != null) 'data_nasc': dataNasc,
      if (timestamp != null) 'timestamp': timestamp,
      if (status != null) 'status': status,
      if (codRge != null) 'cod_rge': codRge,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (syncPending != null) 'sync_pending': syncPending,
      if (deletePending != null) 'delete_pending': deletePending,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ResponsavelTableCompanion copyWith(
      {Value<String>? cpf,
      Value<String>? nome,
      Value<String>? cep,
      Value<int>? numero,
      Value<String?>? complemento,
      Value<int?>? telefone,
      Value<String?>? bairro,
      Value<String?>? logradouro,
      Value<String?>? nomeMae,
      Value<DateTime?>? dataNasc,
      Value<DateTime?>? timestamp,
      Value<String?>? status,
      Value<int?>? codRge,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<bool>? syncPending,
      Value<bool>? deletePending,
      Value<int>? rowid}) {
    return ResponsavelTableCompanion(
      cpf: cpf ?? this.cpf,
      nome: nome ?? this.nome,
      cep: cep ?? this.cep,
      numero: numero ?? this.numero,
      complemento: complemento ?? this.complemento,
      telefone: telefone ?? this.telefone,
      bairro: bairro ?? this.bairro,
      logradouro: logradouro ?? this.logradouro,
      nomeMae: nomeMae ?? this.nomeMae,
      dataNasc: dataNasc ?? this.dataNasc,
      timestamp: timestamp ?? this.timestamp,
      status: status ?? this.status,
      codRge: codRge ?? this.codRge,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      syncPending: syncPending ?? this.syncPending,
      deletePending: deletePending ?? this.deletePending,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (cpf.present) {
      map['cpf'] = Variable<String>(cpf.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (cep.present) {
      map['cep'] = Variable<String>(cep.value);
    }
    if (numero.present) {
      map['numero'] = Variable<int>(numero.value);
    }
    if (complemento.present) {
      map['complemento'] = Variable<String>(complemento.value);
    }
    if (telefone.present) {
      map['telefone'] = Variable<int>(telefone.value);
    }
    if (bairro.present) {
      map['bairro'] = Variable<String>(bairro.value);
    }
    if (logradouro.present) {
      map['logradouro'] = Variable<String>(logradouro.value);
    }
    if (nomeMae.present) {
      map['nome_mae'] = Variable<String>(nomeMae.value);
    }
    if (dataNasc.present) {
      map['data_nasc'] = Variable<DateTime>(dataNasc.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (codRge.present) {
      map['cod_rge'] = Variable<int>(codRge.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (syncPending.present) {
      map['sync_pending'] = Variable<bool>(syncPending.value);
    }
    if (deletePending.present) {
      map['delete_pending'] = Variable<bool>(deletePending.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ResponsavelTableCompanion(')
          ..write('cpf: $cpf, ')
          ..write('nome: $nome, ')
          ..write('cep: $cep, ')
          ..write('numero: $numero, ')
          ..write('complemento: $complemento, ')
          ..write('telefone: $telefone, ')
          ..write('bairro: $bairro, ')
          ..write('logradouro: $logradouro, ')
          ..write('nomeMae: $nomeMae, ')
          ..write('dataNasc: $dataNasc, ')
          ..write('timestamp: $timestamp, ')
          ..write('status: $status, ')
          ..write('codRge: $codRge, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('syncPending: $syncPending, ')
          ..write('deletePending: $deletePending, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MembroTableTable extends MembroTable
    with TableInfo<$MembroTableTable, MembroTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MembroTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _cpfMeta = const VerificationMeta('cpf');
  @override
  late final GeneratedColumn<String> cpf = GeneratedColumn<String>(
      'cpf', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 11, maxTextLength: 11),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
      'nome', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 150),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _cpfResponsavelMeta =
      const VerificationMeta('cpfResponsavel');
  @override
  late final GeneratedColumn<String> cpfResponsavel = GeneratedColumn<String>(
      'cpf_responsavel', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 11, maxTextLength: 11),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _timestampMeta =
      const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
      'timestamp', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _syncPendingMeta =
      const VerificationMeta('syncPending');
  @override
  late final GeneratedColumn<bool> syncPending = GeneratedColumn<bool>(
      'sync_pending', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("sync_pending" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _deletePendingMeta =
      const VerificationMeta('deletePending');
  @override
  late final GeneratedColumn<bool> deletePending = GeneratedColumn<bool>(
      'delete_pending', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("delete_pending" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        cpf,
        nome,
        cpfResponsavel,
        timestamp,
        status,
        createdAt,
        updatedAt,
        syncPending,
        deletePending
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'membro';
  @override
  VerificationContext validateIntegrity(Insertable<MembroTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('cpf')) {
      context.handle(
          _cpfMeta, cpf.isAcceptableOrUnknown(data['cpf']!, _cpfMeta));
    } else if (isInserting) {
      context.missing(_cpfMeta);
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('cpf_responsavel')) {
      context.handle(
          _cpfResponsavelMeta,
          cpfResponsavel.isAcceptableOrUnknown(
              data['cpf_responsavel']!, _cpfResponsavelMeta));
    } else if (isInserting) {
      context.missing(_cpfResponsavelMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('sync_pending')) {
      context.handle(
          _syncPendingMeta,
          syncPending.isAcceptableOrUnknown(
              data['sync_pending']!, _syncPendingMeta));
    }
    if (data.containsKey('delete_pending')) {
      context.handle(
          _deletePendingMeta,
          deletePending.isAcceptableOrUnknown(
              data['delete_pending']!, _deletePendingMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {cpf};
  @override
  MembroTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MembroTableData(
      cpf: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cpf'])!,
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nome'])!,
      cpfResponsavel: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}cpf_responsavel'])!,
      timestamp: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}timestamp']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      syncPending: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}sync_pending'])!,
      deletePending: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}delete_pending'])!,
    );
  }

  @override
  $MembroTableTable createAlias(String alias) {
    return $MembroTableTable(attachedDatabase, alias);
  }
}

class MembroTableData extends DataClass implements Insertable<MembroTableData> {
  final String cpf;
  final String nome;
  final String cpfResponsavel;
  final DateTime? timestamp;
  final String? status;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool syncPending;
  final bool deletePending;
  const MembroTableData(
      {required this.cpf,
      required this.nome,
      required this.cpfResponsavel,
      this.timestamp,
      this.status,
      required this.createdAt,
      required this.updatedAt,
      required this.syncPending,
      required this.deletePending});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['cpf'] = Variable<String>(cpf);
    map['nome'] = Variable<String>(nome);
    map['cpf_responsavel'] = Variable<String>(cpfResponsavel);
    if (!nullToAbsent || timestamp != null) {
      map['timestamp'] = Variable<DateTime>(timestamp);
    }
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<String>(status);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['sync_pending'] = Variable<bool>(syncPending);
    map['delete_pending'] = Variable<bool>(deletePending);
    return map;
  }

  MembroTableCompanion toCompanion(bool nullToAbsent) {
    return MembroTableCompanion(
      cpf: Value(cpf),
      nome: Value(nome),
      cpfResponsavel: Value(cpfResponsavel),
      timestamp: timestamp == null && nullToAbsent
          ? const Value.absent()
          : Value(timestamp),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      syncPending: Value(syncPending),
      deletePending: Value(deletePending),
    );
  }

  factory MembroTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MembroTableData(
      cpf: serializer.fromJson<String>(json['cpf']),
      nome: serializer.fromJson<String>(json['nome']),
      cpfResponsavel: serializer.fromJson<String>(json['cpfResponsavel']),
      timestamp: serializer.fromJson<DateTime?>(json['timestamp']),
      status: serializer.fromJson<String?>(json['status']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      syncPending: serializer.fromJson<bool>(json['syncPending']),
      deletePending: serializer.fromJson<bool>(json['deletePending']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'cpf': serializer.toJson<String>(cpf),
      'nome': serializer.toJson<String>(nome),
      'cpfResponsavel': serializer.toJson<String>(cpfResponsavel),
      'timestamp': serializer.toJson<DateTime?>(timestamp),
      'status': serializer.toJson<String?>(status),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'syncPending': serializer.toJson<bool>(syncPending),
      'deletePending': serializer.toJson<bool>(deletePending),
    };
  }

  MembroTableData copyWith(
          {String? cpf,
          String? nome,
          String? cpfResponsavel,
          Value<DateTime?> timestamp = const Value.absent(),
          Value<String?> status = const Value.absent(),
          DateTime? createdAt,
          DateTime? updatedAt,
          bool? syncPending,
          bool? deletePending}) =>
      MembroTableData(
        cpf: cpf ?? this.cpf,
        nome: nome ?? this.nome,
        cpfResponsavel: cpfResponsavel ?? this.cpfResponsavel,
        timestamp: timestamp.present ? timestamp.value : this.timestamp,
        status: status.present ? status.value : this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        syncPending: syncPending ?? this.syncPending,
        deletePending: deletePending ?? this.deletePending,
      );
  MembroTableData copyWithCompanion(MembroTableCompanion data) {
    return MembroTableData(
      cpf: data.cpf.present ? data.cpf.value : this.cpf,
      nome: data.nome.present ? data.nome.value : this.nome,
      cpfResponsavel: data.cpfResponsavel.present
          ? data.cpfResponsavel.value
          : this.cpfResponsavel,
      timestamp: data.timestamp.present ? data.timestamp.value : this.timestamp,
      status: data.status.present ? data.status.value : this.status,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      syncPending:
          data.syncPending.present ? data.syncPending.value : this.syncPending,
      deletePending: data.deletePending.present
          ? data.deletePending.value
          : this.deletePending,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MembroTableData(')
          ..write('cpf: $cpf, ')
          ..write('nome: $nome, ')
          ..write('cpfResponsavel: $cpfResponsavel, ')
          ..write('timestamp: $timestamp, ')
          ..write('status: $status, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('syncPending: $syncPending, ')
          ..write('deletePending: $deletePending')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(cpf, nome, cpfResponsavel, timestamp, status,
      createdAt, updatedAt, syncPending, deletePending);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MembroTableData &&
          other.cpf == this.cpf &&
          other.nome == this.nome &&
          other.cpfResponsavel == this.cpfResponsavel &&
          other.timestamp == this.timestamp &&
          other.status == this.status &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.syncPending == this.syncPending &&
          other.deletePending == this.deletePending);
}

class MembroTableCompanion extends UpdateCompanion<MembroTableData> {
  final Value<String> cpf;
  final Value<String> nome;
  final Value<String> cpfResponsavel;
  final Value<DateTime?> timestamp;
  final Value<String?> status;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<bool> syncPending;
  final Value<bool> deletePending;
  final Value<int> rowid;
  const MembroTableCompanion({
    this.cpf = const Value.absent(),
    this.nome = const Value.absent(),
    this.cpfResponsavel = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.status = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.syncPending = const Value.absent(),
    this.deletePending = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MembroTableCompanion.insert({
    required String cpf,
    required String nome,
    required String cpfResponsavel,
    this.timestamp = const Value.absent(),
    this.status = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.syncPending = const Value.absent(),
    this.deletePending = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : cpf = Value(cpf),
        nome = Value(nome),
        cpfResponsavel = Value(cpfResponsavel);
  static Insertable<MembroTableData> custom({
    Expression<String>? cpf,
    Expression<String>? nome,
    Expression<String>? cpfResponsavel,
    Expression<DateTime>? timestamp,
    Expression<String>? status,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<bool>? syncPending,
    Expression<bool>? deletePending,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (cpf != null) 'cpf': cpf,
      if (nome != null) 'nome': nome,
      if (cpfResponsavel != null) 'cpf_responsavel': cpfResponsavel,
      if (timestamp != null) 'timestamp': timestamp,
      if (status != null) 'status': status,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (syncPending != null) 'sync_pending': syncPending,
      if (deletePending != null) 'delete_pending': deletePending,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MembroTableCompanion copyWith(
      {Value<String>? cpf,
      Value<String>? nome,
      Value<String>? cpfResponsavel,
      Value<DateTime?>? timestamp,
      Value<String?>? status,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<bool>? syncPending,
      Value<bool>? deletePending,
      Value<int>? rowid}) {
    return MembroTableCompanion(
      cpf: cpf ?? this.cpf,
      nome: nome ?? this.nome,
      cpfResponsavel: cpfResponsavel ?? this.cpfResponsavel,
      timestamp: timestamp ?? this.timestamp,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      syncPending: syncPending ?? this.syncPending,
      deletePending: deletePending ?? this.deletePending,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (cpf.present) {
      map['cpf'] = Variable<String>(cpf.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (cpfResponsavel.present) {
      map['cpf_responsavel'] = Variable<String>(cpfResponsavel.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (syncPending.present) {
      map['sync_pending'] = Variable<bool>(syncPending.value);
    }
    if (deletePending.present) {
      map['delete_pending'] = Variable<bool>(deletePending.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MembroTableCompanion(')
          ..write('cpf: $cpf, ')
          ..write('nome: $nome, ')
          ..write('cpfResponsavel: $cpfResponsavel, ')
          ..write('timestamp: $timestamp, ')
          ..write('status: $status, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('syncPending: $syncPending, ')
          ..write('deletePending: $deletePending, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DemandaTableTable extends DemandaTable
    with TableInfo<$DemandaTableTable, DemandaTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DemandaTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _cpfResponsavelMeta =
      const VerificationMeta('cpfResponsavel');
  @override
  late final GeneratedColumn<String> cpfResponsavel = GeneratedColumn<String>(
      'cpf_responsavel', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 11, maxTextLength: 11),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _tipoMeta = const VerificationMeta('tipo');
  @override
  late final GeneratedColumn<String> tipo = GeneratedColumn<String>(
      'tipo', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _demandaMeta =
      const VerificationMeta('demanda');
  @override
  late final GeneratedColumn<String> demanda = GeneratedColumn<String>(
      'demanda', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 500),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  @override
  late final GeneratedColumn<DateTime> data = GeneratedColumn<DateTime>(
      'data', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _evolucaoMeta =
      const VerificationMeta('evolucao');
  @override
  late final GeneratedColumn<String> evolucao = GeneratedColumn<String>(
      'evolucao', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 500),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _dadosEspecificosMeta =
      const VerificationMeta('dadosEspecificos');
  @override
  late final GeneratedColumn<String> dadosEspecificos = GeneratedColumn<String>(
      'dados_especificos', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _syncPendingMeta =
      const VerificationMeta('syncPending');
  @override
  late final GeneratedColumn<bool> syncPending = GeneratedColumn<bool>(
      'sync_pending', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("sync_pending" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _deletePendingMeta =
      const VerificationMeta('deletePending');
  @override
  late final GeneratedColumn<bool> deletePending = GeneratedColumn<bool>(
      'delete_pending', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("delete_pending" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        cpfResponsavel,
        tipo,
        demanda,
        status,
        data,
        evolucao,
        dadosEspecificos,
        createdAt,
        updatedAt,
        syncPending,
        deletePending
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'demanda';
  @override
  VerificationContext validateIntegrity(Insertable<DemandaTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('cpf_responsavel')) {
      context.handle(
          _cpfResponsavelMeta,
          cpfResponsavel.isAcceptableOrUnknown(
              data['cpf_responsavel']!, _cpfResponsavelMeta));
    } else if (isInserting) {
      context.missing(_cpfResponsavelMeta);
    }
    if (data.containsKey('tipo')) {
      context.handle(
          _tipoMeta, tipo.isAcceptableOrUnknown(data['tipo']!, _tipoMeta));
    } else if (isInserting) {
      context.missing(_tipoMeta);
    }
    if (data.containsKey('demanda')) {
      context.handle(_demandaMeta,
          demanda.isAcceptableOrUnknown(data['demanda']!, _demandaMeta));
    } else if (isInserting) {
      context.missing(_demandaMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('data')) {
      context.handle(
          _dataMeta, this.data.isAcceptableOrUnknown(data['data']!, _dataMeta));
    }
    if (data.containsKey('evolucao')) {
      context.handle(_evolucaoMeta,
          evolucao.isAcceptableOrUnknown(data['evolucao']!, _evolucaoMeta));
    }
    if (data.containsKey('dados_especificos')) {
      context.handle(
          _dadosEspecificosMeta,
          dadosEspecificos.isAcceptableOrUnknown(
              data['dados_especificos']!, _dadosEspecificosMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('sync_pending')) {
      context.handle(
          _syncPendingMeta,
          syncPending.isAcceptableOrUnknown(
              data['sync_pending']!, _syncPendingMeta));
    }
    if (data.containsKey('delete_pending')) {
      context.handle(
          _deletePendingMeta,
          deletePending.isAcceptableOrUnknown(
              data['delete_pending']!, _deletePendingMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DemandaTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DemandaTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      cpfResponsavel: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}cpf_responsavel'])!,
      tipo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tipo'])!,
      demanda: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}demanda'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status']),
      data: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}data'])!,
      evolucao: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}evolucao']),
      dadosEspecificos: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}dados_especificos']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      syncPending: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}sync_pending'])!,
      deletePending: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}delete_pending'])!,
    );
  }

  @override
  $DemandaTableTable createAlias(String alias) {
    return $DemandaTableTable(attachedDatabase, alias);
  }
}

class DemandaTableData extends DataClass
    implements Insertable<DemandaTableData> {
  final int id;
  final String cpfResponsavel;
  final String tipo;
  final String demanda;
  final String? status;
  final DateTime data;
  final String? evolucao;
  final String? dadosEspecificos;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool syncPending;
  final bool deletePending;
  const DemandaTableData(
      {required this.id,
      required this.cpfResponsavel,
      required this.tipo,
      required this.demanda,
      this.status,
      required this.data,
      this.evolucao,
      this.dadosEspecificos,
      required this.createdAt,
      required this.updatedAt,
      required this.syncPending,
      required this.deletePending});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['cpf_responsavel'] = Variable<String>(cpfResponsavel);
    map['tipo'] = Variable<String>(tipo);
    map['demanda'] = Variable<String>(demanda);
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<String>(status);
    }
    map['data'] = Variable<DateTime>(data);
    if (!nullToAbsent || evolucao != null) {
      map['evolucao'] = Variable<String>(evolucao);
    }
    if (!nullToAbsent || dadosEspecificos != null) {
      map['dados_especificos'] = Variable<String>(dadosEspecificos);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['sync_pending'] = Variable<bool>(syncPending);
    map['delete_pending'] = Variable<bool>(deletePending);
    return map;
  }

  DemandaTableCompanion toCompanion(bool nullToAbsent) {
    return DemandaTableCompanion(
      id: Value(id),
      cpfResponsavel: Value(cpfResponsavel),
      tipo: Value(tipo),
      demanda: Value(demanda),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      data: Value(data),
      evolucao: evolucao == null && nullToAbsent
          ? const Value.absent()
          : Value(evolucao),
      dadosEspecificos: dadosEspecificos == null && nullToAbsent
          ? const Value.absent()
          : Value(dadosEspecificos),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      syncPending: Value(syncPending),
      deletePending: Value(deletePending),
    );
  }

  factory DemandaTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DemandaTableData(
      id: serializer.fromJson<int>(json['id']),
      cpfResponsavel: serializer.fromJson<String>(json['cpfResponsavel']),
      tipo: serializer.fromJson<String>(json['tipo']),
      demanda: serializer.fromJson<String>(json['demanda']),
      status: serializer.fromJson<String?>(json['status']),
      data: serializer.fromJson<DateTime>(json['data']),
      evolucao: serializer.fromJson<String?>(json['evolucao']),
      dadosEspecificos: serializer.fromJson<String?>(json['dadosEspecificos']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      syncPending: serializer.fromJson<bool>(json['syncPending']),
      deletePending: serializer.fromJson<bool>(json['deletePending']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'cpfResponsavel': serializer.toJson<String>(cpfResponsavel),
      'tipo': serializer.toJson<String>(tipo),
      'demanda': serializer.toJson<String>(demanda),
      'status': serializer.toJson<String?>(status),
      'data': serializer.toJson<DateTime>(data),
      'evolucao': serializer.toJson<String?>(evolucao),
      'dadosEspecificos': serializer.toJson<String?>(dadosEspecificos),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'syncPending': serializer.toJson<bool>(syncPending),
      'deletePending': serializer.toJson<bool>(deletePending),
    };
  }

  DemandaTableData copyWith(
          {int? id,
          String? cpfResponsavel,
          String? tipo,
          String? demanda,
          Value<String?> status = const Value.absent(),
          DateTime? data,
          Value<String?> evolucao = const Value.absent(),
          Value<String?> dadosEspecificos = const Value.absent(),
          DateTime? createdAt,
          DateTime? updatedAt,
          bool? syncPending,
          bool? deletePending}) =>
      DemandaTableData(
        id: id ?? this.id,
        cpfResponsavel: cpfResponsavel ?? this.cpfResponsavel,
        tipo: tipo ?? this.tipo,
        demanda: demanda ?? this.demanda,
        status: status.present ? status.value : this.status,
        data: data ?? this.data,
        evolucao: evolucao.present ? evolucao.value : this.evolucao,
        dadosEspecificos: dadosEspecificos.present
            ? dadosEspecificos.value
            : this.dadosEspecificos,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        syncPending: syncPending ?? this.syncPending,
        deletePending: deletePending ?? this.deletePending,
      );
  DemandaTableData copyWithCompanion(DemandaTableCompanion data) {
    return DemandaTableData(
      id: data.id.present ? data.id.value : this.id,
      cpfResponsavel: data.cpfResponsavel.present
          ? data.cpfResponsavel.value
          : this.cpfResponsavel,
      tipo: data.tipo.present ? data.tipo.value : this.tipo,
      demanda: data.demanda.present ? data.demanda.value : this.demanda,
      status: data.status.present ? data.status.value : this.status,
      data: data.data.present ? data.data.value : this.data,
      evolucao: data.evolucao.present ? data.evolucao.value : this.evolucao,
      dadosEspecificos: data.dadosEspecificos.present
          ? data.dadosEspecificos.value
          : this.dadosEspecificos,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      syncPending:
          data.syncPending.present ? data.syncPending.value : this.syncPending,
      deletePending: data.deletePending.present
          ? data.deletePending.value
          : this.deletePending,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DemandaTableData(')
          ..write('id: $id, ')
          ..write('cpfResponsavel: $cpfResponsavel, ')
          ..write('tipo: $tipo, ')
          ..write('demanda: $demanda, ')
          ..write('status: $status, ')
          ..write('data: $data, ')
          ..write('evolucao: $evolucao, ')
          ..write('dadosEspecificos: $dadosEspecificos, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('syncPending: $syncPending, ')
          ..write('deletePending: $deletePending')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      cpfResponsavel,
      tipo,
      demanda,
      status,
      data,
      evolucao,
      dadosEspecificos,
      createdAt,
      updatedAt,
      syncPending,
      deletePending);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DemandaTableData &&
          other.id == this.id &&
          other.cpfResponsavel == this.cpfResponsavel &&
          other.tipo == this.tipo &&
          other.demanda == this.demanda &&
          other.status == this.status &&
          other.data == this.data &&
          other.evolucao == this.evolucao &&
          other.dadosEspecificos == this.dadosEspecificos &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.syncPending == this.syncPending &&
          other.deletePending == this.deletePending);
}

class DemandaTableCompanion extends UpdateCompanion<DemandaTableData> {
  final Value<int> id;
  final Value<String> cpfResponsavel;
  final Value<String> tipo;
  final Value<String> demanda;
  final Value<String?> status;
  final Value<DateTime> data;
  final Value<String?> evolucao;
  final Value<String?> dadosEspecificos;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<bool> syncPending;
  final Value<bool> deletePending;
  const DemandaTableCompanion({
    this.id = const Value.absent(),
    this.cpfResponsavel = const Value.absent(),
    this.tipo = const Value.absent(),
    this.demanda = const Value.absent(),
    this.status = const Value.absent(),
    this.data = const Value.absent(),
    this.evolucao = const Value.absent(),
    this.dadosEspecificos = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.syncPending = const Value.absent(),
    this.deletePending = const Value.absent(),
  });
  DemandaTableCompanion.insert({
    this.id = const Value.absent(),
    required String cpfResponsavel,
    required String tipo,
    required String demanda,
    this.status = const Value.absent(),
    this.data = const Value.absent(),
    this.evolucao = const Value.absent(),
    this.dadosEspecificos = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.syncPending = const Value.absent(),
    this.deletePending = const Value.absent(),
  })  : cpfResponsavel = Value(cpfResponsavel),
        tipo = Value(tipo),
        demanda = Value(demanda);
  static Insertable<DemandaTableData> custom({
    Expression<int>? id,
    Expression<String>? cpfResponsavel,
    Expression<String>? tipo,
    Expression<String>? demanda,
    Expression<String>? status,
    Expression<DateTime>? data,
    Expression<String>? evolucao,
    Expression<String>? dadosEspecificos,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<bool>? syncPending,
    Expression<bool>? deletePending,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (cpfResponsavel != null) 'cpf_responsavel': cpfResponsavel,
      if (tipo != null) 'tipo': tipo,
      if (demanda != null) 'demanda': demanda,
      if (status != null) 'status': status,
      if (data != null) 'data': data,
      if (evolucao != null) 'evolucao': evolucao,
      if (dadosEspecificos != null) 'dados_especificos': dadosEspecificos,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (syncPending != null) 'sync_pending': syncPending,
      if (deletePending != null) 'delete_pending': deletePending,
    });
  }

  DemandaTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? cpfResponsavel,
      Value<String>? tipo,
      Value<String>? demanda,
      Value<String?>? status,
      Value<DateTime>? data,
      Value<String?>? evolucao,
      Value<String?>? dadosEspecificos,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<bool>? syncPending,
      Value<bool>? deletePending}) {
    return DemandaTableCompanion(
      id: id ?? this.id,
      cpfResponsavel: cpfResponsavel ?? this.cpfResponsavel,
      tipo: tipo ?? this.tipo,
      demanda: demanda ?? this.demanda,
      status: status ?? this.status,
      data: data ?? this.data,
      evolucao: evolucao ?? this.evolucao,
      dadosEspecificos: dadosEspecificos ?? this.dadosEspecificos,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      syncPending: syncPending ?? this.syncPending,
      deletePending: deletePending ?? this.deletePending,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (cpfResponsavel.present) {
      map['cpf_responsavel'] = Variable<String>(cpfResponsavel.value);
    }
    if (tipo.present) {
      map['tipo'] = Variable<String>(tipo.value);
    }
    if (demanda.present) {
      map['demanda'] = Variable<String>(demanda.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (data.present) {
      map['data'] = Variable<DateTime>(data.value);
    }
    if (evolucao.present) {
      map['evolucao'] = Variable<String>(evolucao.value);
    }
    if (dadosEspecificos.present) {
      map['dados_especificos'] = Variable<String>(dadosEspecificos.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (syncPending.present) {
      map['sync_pending'] = Variable<bool>(syncPending.value);
    }
    if (deletePending.present) {
      map['delete_pending'] = Variable<bool>(deletePending.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DemandaTableCompanion(')
          ..write('id: $id, ')
          ..write('cpfResponsavel: $cpfResponsavel, ')
          ..write('tipo: $tipo, ')
          ..write('demanda: $demanda, ')
          ..write('status: $status, ')
          ..write('data: $data, ')
          ..write('evolucao: $evolucao, ')
          ..write('dadosEspecificos: $dadosEspecificos, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('syncPending: $syncPending, ')
          ..write('deletePending: $deletePending')
          ..write(')'))
        .toString();
  }
}

class $CacheTableTable extends CacheTable
    with TableInfo<$CacheTableTable, CacheTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CacheTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
      'key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  @override
  late final GeneratedColumn<String> data = GeneratedColumn<String>(
      'data', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _expiresAtMeta =
      const VerificationMeta('expiresAt');
  @override
  late final GeneratedColumn<DateTime> expiresAt = GeneratedColumn<DateTime>(
      'expires_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [key, data, expiresAt, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cache';
  @override
  VerificationContext validateIntegrity(Insertable<CacheTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('data')) {
      context.handle(
          _dataMeta, this.data.isAcceptableOrUnknown(data['data']!, _dataMeta));
    } else if (isInserting) {
      context.missing(_dataMeta);
    }
    if (data.containsKey('expires_at')) {
      context.handle(_expiresAtMeta,
          expiresAt.isAcceptableOrUnknown(data['expires_at']!, _expiresAtMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  CacheTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CacheTableData(
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key'])!,
      data: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}data'])!,
      expiresAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}expires_at']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $CacheTableTable createAlias(String alias) {
    return $CacheTableTable(attachedDatabase, alias);
  }
}

class CacheTableData extends DataClass implements Insertable<CacheTableData> {
  final String key;
  final String data;
  final DateTime? expiresAt;
  final DateTime createdAt;
  const CacheTableData(
      {required this.key,
      required this.data,
      this.expiresAt,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['data'] = Variable<String>(data);
    if (!nullToAbsent || expiresAt != null) {
      map['expires_at'] = Variable<DateTime>(expiresAt);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  CacheTableCompanion toCompanion(bool nullToAbsent) {
    return CacheTableCompanion(
      key: Value(key),
      data: Value(data),
      expiresAt: expiresAt == null && nullToAbsent
          ? const Value.absent()
          : Value(expiresAt),
      createdAt: Value(createdAt),
    );
  }

  factory CacheTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CacheTableData(
      key: serializer.fromJson<String>(json['key']),
      data: serializer.fromJson<String>(json['data']),
      expiresAt: serializer.fromJson<DateTime?>(json['expiresAt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'data': serializer.toJson<String>(data),
      'expiresAt': serializer.toJson<DateTime?>(expiresAt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  CacheTableData copyWith(
          {String? key,
          String? data,
          Value<DateTime?> expiresAt = const Value.absent(),
          DateTime? createdAt}) =>
      CacheTableData(
        key: key ?? this.key,
        data: data ?? this.data,
        expiresAt: expiresAt.present ? expiresAt.value : this.expiresAt,
        createdAt: createdAt ?? this.createdAt,
      );
  CacheTableData copyWithCompanion(CacheTableCompanion data) {
    return CacheTableData(
      key: data.key.present ? data.key.value : this.key,
      data: data.data.present ? data.data.value : this.data,
      expiresAt: data.expiresAt.present ? data.expiresAt.value : this.expiresAt,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CacheTableData(')
          ..write('key: $key, ')
          ..write('data: $data, ')
          ..write('expiresAt: $expiresAt, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, data, expiresAt, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CacheTableData &&
          other.key == this.key &&
          other.data == this.data &&
          other.expiresAt == this.expiresAt &&
          other.createdAt == this.createdAt);
}

class CacheTableCompanion extends UpdateCompanion<CacheTableData> {
  final Value<String> key;
  final Value<String> data;
  final Value<DateTime?> expiresAt;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const CacheTableCompanion({
    this.key = const Value.absent(),
    this.data = const Value.absent(),
    this.expiresAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CacheTableCompanion.insert({
    required String key,
    required String data,
    this.expiresAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : key = Value(key),
        data = Value(data);
  static Insertable<CacheTableData> custom({
    Expression<String>? key,
    Expression<String>? data,
    Expression<DateTime>? expiresAt,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (data != null) 'data': data,
      if (expiresAt != null) 'expires_at': expiresAt,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CacheTableCompanion copyWith(
      {Value<String>? key,
      Value<String>? data,
      Value<DateTime?>? expiresAt,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return CacheTableCompanion(
      key: key ?? this.key,
      data: data ?? this.data,
      expiresAt: expiresAt ?? this.expiresAt,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (data.present) {
      map['data'] = Variable<String>(data.value);
    }
    if (expiresAt.present) {
      map['expires_at'] = Variable<DateTime>(expiresAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CacheTableCompanion(')
          ..write('key: $key, ')
          ..write('data: $data, ')
          ..write('expiresAt: $expiresAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ResponsavelTableTable responsavelTable =
      $ResponsavelTableTable(this);
  late final $MembroTableTable membroTable = $MembroTableTable(this);
  late final $DemandaTableTable demandaTable = $DemandaTableTable(this);
  late final $CacheTableTable cacheTable = $CacheTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [responsavelTable, membroTable, demandaTable, cacheTable];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$ResponsavelTableTableCreateCompanionBuilder
    = ResponsavelTableCompanion Function({
  required String cpf,
  required String nome,
  required String cep,
  required int numero,
  Value<String?> complemento,
  Value<int?> telefone,
  Value<String?> bairro,
  Value<String?> logradouro,
  Value<String?> nomeMae,
  Value<DateTime?> dataNasc,
  Value<DateTime?> timestamp,
  Value<String?> status,
  Value<int?> codRge,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<bool> syncPending,
  Value<bool> deletePending,
  Value<int> rowid,
});
typedef $$ResponsavelTableTableUpdateCompanionBuilder
    = ResponsavelTableCompanion Function({
  Value<String> cpf,
  Value<String> nome,
  Value<String> cep,
  Value<int> numero,
  Value<String?> complemento,
  Value<int?> telefone,
  Value<String?> bairro,
  Value<String?> logradouro,
  Value<String?> nomeMae,
  Value<DateTime?> dataNasc,
  Value<DateTime?> timestamp,
  Value<String?> status,
  Value<int?> codRge,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<bool> syncPending,
  Value<bool> deletePending,
  Value<int> rowid,
});

class $$ResponsavelTableTableFilterComposer
    extends Composer<_$AppDatabase, $ResponsavelTableTable> {
  $$ResponsavelTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get cpf => $composableBuilder(
      column: $table.cpf, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cep => $composableBuilder(
      column: $table.cep, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get numero => $composableBuilder(
      column: $table.numero, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get complemento => $composableBuilder(
      column: $table.complemento, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get telefone => $composableBuilder(
      column: $table.telefone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get bairro => $composableBuilder(
      column: $table.bairro, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get logradouro => $composableBuilder(
      column: $table.logradouro, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nomeMae => $composableBuilder(
      column: $table.nomeMae, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get dataNasc => $composableBuilder(
      column: $table.dataNasc, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get codRge => $composableBuilder(
      column: $table.codRge, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get syncPending => $composableBuilder(
      column: $table.syncPending, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get deletePending => $composableBuilder(
      column: $table.deletePending, builder: (column) => ColumnFilters(column));
}

class $$ResponsavelTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ResponsavelTableTable> {
  $$ResponsavelTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get cpf => $composableBuilder(
      column: $table.cpf, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cep => $composableBuilder(
      column: $table.cep, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get numero => $composableBuilder(
      column: $table.numero, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get complemento => $composableBuilder(
      column: $table.complemento, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get telefone => $composableBuilder(
      column: $table.telefone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get bairro => $composableBuilder(
      column: $table.bairro, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get logradouro => $composableBuilder(
      column: $table.logradouro, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nomeMae => $composableBuilder(
      column: $table.nomeMae, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get dataNasc => $composableBuilder(
      column: $table.dataNasc, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get codRge => $composableBuilder(
      column: $table.codRge, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get syncPending => $composableBuilder(
      column: $table.syncPending, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get deletePending => $composableBuilder(
      column: $table.deletePending,
      builder: (column) => ColumnOrderings(column));
}

class $$ResponsavelTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ResponsavelTableTable> {
  $$ResponsavelTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get cpf =>
      $composableBuilder(column: $table.cpf, builder: (column) => column);

  GeneratedColumn<String> get nome =>
      $composableBuilder(column: $table.nome, builder: (column) => column);

  GeneratedColumn<String> get cep =>
      $composableBuilder(column: $table.cep, builder: (column) => column);

  GeneratedColumn<int> get numero =>
      $composableBuilder(column: $table.numero, builder: (column) => column);

  GeneratedColumn<String> get complemento => $composableBuilder(
      column: $table.complemento, builder: (column) => column);

  GeneratedColumn<int> get telefone =>
      $composableBuilder(column: $table.telefone, builder: (column) => column);

  GeneratedColumn<String> get bairro =>
      $composableBuilder(column: $table.bairro, builder: (column) => column);

  GeneratedColumn<String> get logradouro => $composableBuilder(
      column: $table.logradouro, builder: (column) => column);

  GeneratedColumn<String> get nomeMae =>
      $composableBuilder(column: $table.nomeMae, builder: (column) => column);

  GeneratedColumn<DateTime> get dataNasc =>
      $composableBuilder(column: $table.dataNasc, builder: (column) => column);

  GeneratedColumn<DateTime> get timestamp =>
      $composableBuilder(column: $table.timestamp, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<int> get codRge =>
      $composableBuilder(column: $table.codRge, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<bool> get syncPending => $composableBuilder(
      column: $table.syncPending, builder: (column) => column);

  GeneratedColumn<bool> get deletePending => $composableBuilder(
      column: $table.deletePending, builder: (column) => column);
}

class $$ResponsavelTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ResponsavelTableTable,
    ResponsavelTableData,
    $$ResponsavelTableTableFilterComposer,
    $$ResponsavelTableTableOrderingComposer,
    $$ResponsavelTableTableAnnotationComposer,
    $$ResponsavelTableTableCreateCompanionBuilder,
    $$ResponsavelTableTableUpdateCompanionBuilder,
    (
      ResponsavelTableData,
      BaseReferences<_$AppDatabase, $ResponsavelTableTable,
          ResponsavelTableData>
    ),
    ResponsavelTableData,
    PrefetchHooks Function()> {
  $$ResponsavelTableTableTableManager(
      _$AppDatabase db, $ResponsavelTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ResponsavelTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ResponsavelTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ResponsavelTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> cpf = const Value.absent(),
            Value<String> nome = const Value.absent(),
            Value<String> cep = const Value.absent(),
            Value<int> numero = const Value.absent(),
            Value<String?> complemento = const Value.absent(),
            Value<int?> telefone = const Value.absent(),
            Value<String?> bairro = const Value.absent(),
            Value<String?> logradouro = const Value.absent(),
            Value<String?> nomeMae = const Value.absent(),
            Value<DateTime?> dataNasc = const Value.absent(),
            Value<DateTime?> timestamp = const Value.absent(),
            Value<String?> status = const Value.absent(),
            Value<int?> codRge = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<bool> syncPending = const Value.absent(),
            Value<bool> deletePending = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ResponsavelTableCompanion(
            cpf: cpf,
            nome: nome,
            cep: cep,
            numero: numero,
            complemento: complemento,
            telefone: telefone,
            bairro: bairro,
            logradouro: logradouro,
            nomeMae: nomeMae,
            dataNasc: dataNasc,
            timestamp: timestamp,
            status: status,
            codRge: codRge,
            createdAt: createdAt,
            updatedAt: updatedAt,
            syncPending: syncPending,
            deletePending: deletePending,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String cpf,
            required String nome,
            required String cep,
            required int numero,
            Value<String?> complemento = const Value.absent(),
            Value<int?> telefone = const Value.absent(),
            Value<String?> bairro = const Value.absent(),
            Value<String?> logradouro = const Value.absent(),
            Value<String?> nomeMae = const Value.absent(),
            Value<DateTime?> dataNasc = const Value.absent(),
            Value<DateTime?> timestamp = const Value.absent(),
            Value<String?> status = const Value.absent(),
            Value<int?> codRge = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<bool> syncPending = const Value.absent(),
            Value<bool> deletePending = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ResponsavelTableCompanion.insert(
            cpf: cpf,
            nome: nome,
            cep: cep,
            numero: numero,
            complemento: complemento,
            telefone: telefone,
            bairro: bairro,
            logradouro: logradouro,
            nomeMae: nomeMae,
            dataNasc: dataNasc,
            timestamp: timestamp,
            status: status,
            codRge: codRge,
            createdAt: createdAt,
            updatedAt: updatedAt,
            syncPending: syncPending,
            deletePending: deletePending,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ResponsavelTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ResponsavelTableTable,
    ResponsavelTableData,
    $$ResponsavelTableTableFilterComposer,
    $$ResponsavelTableTableOrderingComposer,
    $$ResponsavelTableTableAnnotationComposer,
    $$ResponsavelTableTableCreateCompanionBuilder,
    $$ResponsavelTableTableUpdateCompanionBuilder,
    (
      ResponsavelTableData,
      BaseReferences<_$AppDatabase, $ResponsavelTableTable,
          ResponsavelTableData>
    ),
    ResponsavelTableData,
    PrefetchHooks Function()>;
typedef $$MembroTableTableCreateCompanionBuilder = MembroTableCompanion
    Function({
  required String cpf,
  required String nome,
  required String cpfResponsavel,
  Value<DateTime?> timestamp,
  Value<String?> status,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<bool> syncPending,
  Value<bool> deletePending,
  Value<int> rowid,
});
typedef $$MembroTableTableUpdateCompanionBuilder = MembroTableCompanion
    Function({
  Value<String> cpf,
  Value<String> nome,
  Value<String> cpfResponsavel,
  Value<DateTime?> timestamp,
  Value<String?> status,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<bool> syncPending,
  Value<bool> deletePending,
  Value<int> rowid,
});

class $$MembroTableTableFilterComposer
    extends Composer<_$AppDatabase, $MembroTableTable> {
  $$MembroTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get cpf => $composableBuilder(
      column: $table.cpf, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cpfResponsavel => $composableBuilder(
      column: $table.cpfResponsavel,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get syncPending => $composableBuilder(
      column: $table.syncPending, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get deletePending => $composableBuilder(
      column: $table.deletePending, builder: (column) => ColumnFilters(column));
}

class $$MembroTableTableOrderingComposer
    extends Composer<_$AppDatabase, $MembroTableTable> {
  $$MembroTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get cpf => $composableBuilder(
      column: $table.cpf, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cpfResponsavel => $composableBuilder(
      column: $table.cpfResponsavel,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get syncPending => $composableBuilder(
      column: $table.syncPending, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get deletePending => $composableBuilder(
      column: $table.deletePending,
      builder: (column) => ColumnOrderings(column));
}

class $$MembroTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $MembroTableTable> {
  $$MembroTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get cpf =>
      $composableBuilder(column: $table.cpf, builder: (column) => column);

  GeneratedColumn<String> get nome =>
      $composableBuilder(column: $table.nome, builder: (column) => column);

  GeneratedColumn<String> get cpfResponsavel => $composableBuilder(
      column: $table.cpfResponsavel, builder: (column) => column);

  GeneratedColumn<DateTime> get timestamp =>
      $composableBuilder(column: $table.timestamp, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<bool> get syncPending => $composableBuilder(
      column: $table.syncPending, builder: (column) => column);

  GeneratedColumn<bool> get deletePending => $composableBuilder(
      column: $table.deletePending, builder: (column) => column);
}

class $$MembroTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MembroTableTable,
    MembroTableData,
    $$MembroTableTableFilterComposer,
    $$MembroTableTableOrderingComposer,
    $$MembroTableTableAnnotationComposer,
    $$MembroTableTableCreateCompanionBuilder,
    $$MembroTableTableUpdateCompanionBuilder,
    (
      MembroTableData,
      BaseReferences<_$AppDatabase, $MembroTableTable, MembroTableData>
    ),
    MembroTableData,
    PrefetchHooks Function()> {
  $$MembroTableTableTableManager(_$AppDatabase db, $MembroTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MembroTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MembroTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MembroTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> cpf = const Value.absent(),
            Value<String> nome = const Value.absent(),
            Value<String> cpfResponsavel = const Value.absent(),
            Value<DateTime?> timestamp = const Value.absent(),
            Value<String?> status = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<bool> syncPending = const Value.absent(),
            Value<bool> deletePending = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MembroTableCompanion(
            cpf: cpf,
            nome: nome,
            cpfResponsavel: cpfResponsavel,
            timestamp: timestamp,
            status: status,
            createdAt: createdAt,
            updatedAt: updatedAt,
            syncPending: syncPending,
            deletePending: deletePending,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String cpf,
            required String nome,
            required String cpfResponsavel,
            Value<DateTime?> timestamp = const Value.absent(),
            Value<String?> status = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<bool> syncPending = const Value.absent(),
            Value<bool> deletePending = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MembroTableCompanion.insert(
            cpf: cpf,
            nome: nome,
            cpfResponsavel: cpfResponsavel,
            timestamp: timestamp,
            status: status,
            createdAt: createdAt,
            updatedAt: updatedAt,
            syncPending: syncPending,
            deletePending: deletePending,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MembroTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $MembroTableTable,
    MembroTableData,
    $$MembroTableTableFilterComposer,
    $$MembroTableTableOrderingComposer,
    $$MembroTableTableAnnotationComposer,
    $$MembroTableTableCreateCompanionBuilder,
    $$MembroTableTableUpdateCompanionBuilder,
    (
      MembroTableData,
      BaseReferences<_$AppDatabase, $MembroTableTable, MembroTableData>
    ),
    MembroTableData,
    PrefetchHooks Function()>;
typedef $$DemandaTableTableCreateCompanionBuilder = DemandaTableCompanion
    Function({
  Value<int> id,
  required String cpfResponsavel,
  required String tipo,
  required String demanda,
  Value<String?> status,
  Value<DateTime> data,
  Value<String?> evolucao,
  Value<String?> dadosEspecificos,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<bool> syncPending,
  Value<bool> deletePending,
});
typedef $$DemandaTableTableUpdateCompanionBuilder = DemandaTableCompanion
    Function({
  Value<int> id,
  Value<String> cpfResponsavel,
  Value<String> tipo,
  Value<String> demanda,
  Value<String?> status,
  Value<DateTime> data,
  Value<String?> evolucao,
  Value<String?> dadosEspecificos,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<bool> syncPending,
  Value<bool> deletePending,
});

class $$DemandaTableTableFilterComposer
    extends Composer<_$AppDatabase, $DemandaTableTable> {
  $$DemandaTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cpfResponsavel => $composableBuilder(
      column: $table.cpfResponsavel,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tipo => $composableBuilder(
      column: $table.tipo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get demanda => $composableBuilder(
      column: $table.demanda, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get data => $composableBuilder(
      column: $table.data, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get evolucao => $composableBuilder(
      column: $table.evolucao, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get dadosEspecificos => $composableBuilder(
      column: $table.dadosEspecificos,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get syncPending => $composableBuilder(
      column: $table.syncPending, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get deletePending => $composableBuilder(
      column: $table.deletePending, builder: (column) => ColumnFilters(column));
}

class $$DemandaTableTableOrderingComposer
    extends Composer<_$AppDatabase, $DemandaTableTable> {
  $$DemandaTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cpfResponsavel => $composableBuilder(
      column: $table.cpfResponsavel,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tipo => $composableBuilder(
      column: $table.tipo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get demanda => $composableBuilder(
      column: $table.demanda, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get data => $composableBuilder(
      column: $table.data, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get evolucao => $composableBuilder(
      column: $table.evolucao, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get dadosEspecificos => $composableBuilder(
      column: $table.dadosEspecificos,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get syncPending => $composableBuilder(
      column: $table.syncPending, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get deletePending => $composableBuilder(
      column: $table.deletePending,
      builder: (column) => ColumnOrderings(column));
}

class $$DemandaTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $DemandaTableTable> {
  $$DemandaTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get cpfResponsavel => $composableBuilder(
      column: $table.cpfResponsavel, builder: (column) => column);

  GeneratedColumn<String> get tipo =>
      $composableBuilder(column: $table.tipo, builder: (column) => column);

  GeneratedColumn<String> get demanda =>
      $composableBuilder(column: $table.demanda, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get data =>
      $composableBuilder(column: $table.data, builder: (column) => column);

  GeneratedColumn<String> get evolucao =>
      $composableBuilder(column: $table.evolucao, builder: (column) => column);

  GeneratedColumn<String> get dadosEspecificos => $composableBuilder(
      column: $table.dadosEspecificos, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<bool> get syncPending => $composableBuilder(
      column: $table.syncPending, builder: (column) => column);

  GeneratedColumn<bool> get deletePending => $composableBuilder(
      column: $table.deletePending, builder: (column) => column);
}

class $$DemandaTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DemandaTableTable,
    DemandaTableData,
    $$DemandaTableTableFilterComposer,
    $$DemandaTableTableOrderingComposer,
    $$DemandaTableTableAnnotationComposer,
    $$DemandaTableTableCreateCompanionBuilder,
    $$DemandaTableTableUpdateCompanionBuilder,
    (
      DemandaTableData,
      BaseReferences<_$AppDatabase, $DemandaTableTable, DemandaTableData>
    ),
    DemandaTableData,
    PrefetchHooks Function()> {
  $$DemandaTableTableTableManager(_$AppDatabase db, $DemandaTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DemandaTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DemandaTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DemandaTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> cpfResponsavel = const Value.absent(),
            Value<String> tipo = const Value.absent(),
            Value<String> demanda = const Value.absent(),
            Value<String?> status = const Value.absent(),
            Value<DateTime> data = const Value.absent(),
            Value<String?> evolucao = const Value.absent(),
            Value<String?> dadosEspecificos = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<bool> syncPending = const Value.absent(),
            Value<bool> deletePending = const Value.absent(),
          }) =>
              DemandaTableCompanion(
            id: id,
            cpfResponsavel: cpfResponsavel,
            tipo: tipo,
            demanda: demanda,
            status: status,
            data: data,
            evolucao: evolucao,
            dadosEspecificos: dadosEspecificos,
            createdAt: createdAt,
            updatedAt: updatedAt,
            syncPending: syncPending,
            deletePending: deletePending,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String cpfResponsavel,
            required String tipo,
            required String demanda,
            Value<String?> status = const Value.absent(),
            Value<DateTime> data = const Value.absent(),
            Value<String?> evolucao = const Value.absent(),
            Value<String?> dadosEspecificos = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<bool> syncPending = const Value.absent(),
            Value<bool> deletePending = const Value.absent(),
          }) =>
              DemandaTableCompanion.insert(
            id: id,
            cpfResponsavel: cpfResponsavel,
            tipo: tipo,
            demanda: demanda,
            status: status,
            data: data,
            evolucao: evolucao,
            dadosEspecificos: dadosEspecificos,
            createdAt: createdAt,
            updatedAt: updatedAt,
            syncPending: syncPending,
            deletePending: deletePending,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DemandaTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DemandaTableTable,
    DemandaTableData,
    $$DemandaTableTableFilterComposer,
    $$DemandaTableTableOrderingComposer,
    $$DemandaTableTableAnnotationComposer,
    $$DemandaTableTableCreateCompanionBuilder,
    $$DemandaTableTableUpdateCompanionBuilder,
    (
      DemandaTableData,
      BaseReferences<_$AppDatabase, $DemandaTableTable, DemandaTableData>
    ),
    DemandaTableData,
    PrefetchHooks Function()>;
typedef $$CacheTableTableCreateCompanionBuilder = CacheTableCompanion Function({
  required String key,
  required String data,
  Value<DateTime?> expiresAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});
typedef $$CacheTableTableUpdateCompanionBuilder = CacheTableCompanion Function({
  Value<String> key,
  Value<String> data,
  Value<DateTime?> expiresAt,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

class $$CacheTableTableFilterComposer
    extends Composer<_$AppDatabase, $CacheTableTable> {
  $$CacheTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get data => $composableBuilder(
      column: $table.data, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get expiresAt => $composableBuilder(
      column: $table.expiresAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$CacheTableTableOrderingComposer
    extends Composer<_$AppDatabase, $CacheTableTable> {
  $$CacheTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get data => $composableBuilder(
      column: $table.data, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get expiresAt => $composableBuilder(
      column: $table.expiresAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$CacheTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $CacheTableTable> {
  $$CacheTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get data =>
      $composableBuilder(column: $table.data, builder: (column) => column);

  GeneratedColumn<DateTime> get expiresAt =>
      $composableBuilder(column: $table.expiresAt, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$CacheTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CacheTableTable,
    CacheTableData,
    $$CacheTableTableFilterComposer,
    $$CacheTableTableOrderingComposer,
    $$CacheTableTableAnnotationComposer,
    $$CacheTableTableCreateCompanionBuilder,
    $$CacheTableTableUpdateCompanionBuilder,
    (
      CacheTableData,
      BaseReferences<_$AppDatabase, $CacheTableTable, CacheTableData>
    ),
    CacheTableData,
    PrefetchHooks Function()> {
  $$CacheTableTableTableManager(_$AppDatabase db, $CacheTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CacheTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CacheTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CacheTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> key = const Value.absent(),
            Value<String> data = const Value.absent(),
            Value<DateTime?> expiresAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CacheTableCompanion(
            key: key,
            data: data,
            expiresAt: expiresAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String key,
            required String data,
            Value<DateTime?> expiresAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CacheTableCompanion.insert(
            key: key,
            data: data,
            expiresAt: expiresAt,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CacheTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CacheTableTable,
    CacheTableData,
    $$CacheTableTableFilterComposer,
    $$CacheTableTableOrderingComposer,
    $$CacheTableTableAnnotationComposer,
    $$CacheTableTableCreateCompanionBuilder,
    $$CacheTableTableUpdateCompanionBuilder,
    (
      CacheTableData,
      BaseReferences<_$AppDatabase, $CacheTableTable, CacheTableData>
    ),
    CacheTableData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ResponsavelTableTableTableManager get responsavelTable =>
      $$ResponsavelTableTableTableManager(_db, _db.responsavelTable);
  $$MembroTableTableTableManager get membroTable =>
      $$MembroTableTableTableManager(_db, _db.membroTable);
  $$DemandaTableTableTableManager get demandaTable =>
      $$DemandaTableTableTableManager(_db, _db.demandaTable);
  $$CacheTableTableTableManager get cacheTable =>
      $$CacheTableTableTableManager(_db, _db.cacheTable);
}
