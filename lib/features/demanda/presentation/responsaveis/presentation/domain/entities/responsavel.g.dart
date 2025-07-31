// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responsavel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Responsavel _$ResponsavelFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_Responsavel',
      json,
      ($checkedConvert) {
        final val = _Responsavel(
          cpf: $checkedConvert('cpf', (v) => v as String),
          nome: $checkedConvert('nome', (v) => v as String),
          cep: $checkedConvert('cep', (v) => v as String),
          numero: $checkedConvert('numero', (v) => (v as num).toInt()),
          complemento: $checkedConvert('complemento', (v) => v as String?),
          telefone: $checkedConvert('telefone', (v) => (v as num?)?.toInt()),
          bairro: $checkedConvert('bairro', (v) => v as String?),
          logradouro: $checkedConvert('logradouro', (v) => v as String?),
          nomeMae: $checkedConvert('nome_mae', (v) => v as String?),
          dataNasc: $checkedConvert('data_nasc',
              (v) => v == null ? null : DateTime.parse(v as String)),
          timestamp: $checkedConvert('timestamp',
              (v) => v == null ? null : DateTime.parse(v as String)),
          status: $checkedConvert('status', (v) => v as String?),
          codRge: $checkedConvert('cod_rge', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
      fieldKeyMap: const {
        'nomeMae': 'nome_mae',
        'dataNasc': 'data_nasc',
        'codRge': 'cod_rge'
      },
    );

Map<String, dynamic> _$ResponsavelToJson(_Responsavel instance) =>
    <String, dynamic>{
      'cpf': instance.cpf,
      'nome': instance.nome,
      'cep': instance.cep,
      'numero': instance.numero,
      'complemento': instance.complemento,
      'telefone': instance.telefone,
      'bairro': instance.bairro,
      'logradouro': instance.logradouro,
      'nome_mae': instance.nomeMae,
      'data_nasc': instance.dataNasc?.toIso8601String(),
      'timestamp': instance.timestamp?.toIso8601String(),
      'status': instance.status,
      'cod_rge': instance.codRge,
    };
