// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'membro.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MembroImpl _$$MembroImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$MembroImpl',
      json,
      ($checkedConvert) {
        final val = _$MembroImpl(
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

Map<String, dynamic> _$$MembroImplToJson(_$MembroImpl instance) =>
    <String, dynamic>{
      'cpf': instance.cpf,
      'nome': instance.nome,
      'cpf_responsavel': instance.cpfResponsavel,
      'timestamp': instance.timestamp?.toIso8601String(),
      'status': instance.status,
    };
