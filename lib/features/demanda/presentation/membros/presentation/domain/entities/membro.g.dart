// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'membro.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Membro _$MembroFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_Membro',
      json,
      ($checkedConvert) {
        final val = _Membro(
          cpf: $checkedConvert('cpf', (v) => v as String),
          nome: $checkedConvert('nome', (v) => v as String),
          cpfResponsavel:
              $checkedConvert('cpf_responsavel', (v) => v as String),
          timestamp: $checkedConvert('timestamp',
              (v) => v == null ? null : DateTime.parse(v as String)),
          status: $checkedConvert('status', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'cpfResponsavel': 'cpf_responsavel'},
    );

Map<String, dynamic> _$MembroToJson(_Membro instance) => <String, dynamic>{
      'cpf': instance.cpf,
      'nome': instance.nome,
      'cpf_responsavel': instance.cpfResponsavel,
      'timestamp': instance.timestamp?.toIso8601String(),
      'status': instance.status,
    };
