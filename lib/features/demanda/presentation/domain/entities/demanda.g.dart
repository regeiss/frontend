// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'demanda.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DemandaImpl _$$DemandaImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DemandaImpl',
      json,
      ($checkedConvert) {
        final val = _$DemandaImpl(
          cpfResponsavel:
              $checkedConvert('cpf_responsavel', (v) => v as String),
          tipo: $checkedConvert(
              'tipo', (v) => $enumDecode(_$TipoDemandaEnumMap, v)),
          demanda: $checkedConvert('demanda', (v) => v as String),
          data: $checkedConvert('data', (v) => DateTime.parse(v as String)),
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          status: $checkedConvert('status', (v) => v as String?),
          evolucao: $checkedConvert('evolucao', (v) => v as String?),
          dadosEspecificos: $checkedConvert(
              'dados_especificos', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
      fieldKeyMap: const {
        'cpfResponsavel': 'cpf_responsavel',
        'dadosEspecificos': 'dados_especificos'
      },
    );

Map<String, dynamic> _$$DemandaImplToJson(_$DemandaImpl instance) =>
    <String, dynamic>{
      'cpf_responsavel': instance.cpfResponsavel,
      'tipo': _$TipoDemandaEnumMap[instance.tipo]!,
      'demanda': instance.demanda,
      'data': instance.data.toIso8601String(),
      'id': instance.id,
      'status': instance.status,
      'evolucao': instance.evolucao,
      'dados_especificos': instance.dadosEspecificos,
    };

const _$TipoDemandaEnumMap = {
  TipoDemanda.saude: 'saude',
  TipoDemanda.educacao: 'educacao',
  TipoDemanda.habitacao: 'habitacao',
  TipoDemanda.ambiente: 'ambiente',
  TipoDemanda.interna: 'interna',
};

_$DemandaSaudeImpl _$$DemandaSaudeImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DemandaSaudeImpl',
      json,
      ($checkedConvert) {
        final val = _$DemandaSaudeImpl(
          cpf: $checkedConvert('cpf', (v) => v as String),
          gestPuerNutriz:
              $checkedConvert('gest_puer_nutriz', (v) => v as String),
          mobReduzida: $checkedConvert('mob_reduzida', (v) => v as String),
          cuidaOutrem: $checkedConvert('cuida_outrem', (v) => v as String),
          pcdOuMental: $checkedConvert('pcd_ou_mental', (v) => v as String),
          genero: $checkedConvert('genero', (v) => v as String?),
          saudeCid: $checkedConvert('saude_cid', (v) => v as String?),
          dataNasc: $checkedConvert('data_nasc',
              (v) => v == null ? null : DateTime.parse(v as String)),
          alergiaIntol: $checkedConvert('alergia_intol', (v) => v as String?),
          subsPsicoativas:
              $checkedConvert('subs_psicoativas', (v) => v as String?),
          medControlada: $checkedConvert('med_controlada', (v) => v as String?),
          localRef: $checkedConvert('local_ref', (v) => v as String?),
          evolucao: $checkedConvert('evolucao', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'gestPuerNutriz': 'gest_puer_nutriz',
        'mobReduzida': 'mob_reduzida',
        'cuidaOutrem': 'cuida_outrem',
        'pcdOuMental': 'pcd_ou_mental',
        'saudeCid': 'saude_cid',
        'dataNasc': 'data_nasc',
        'alergiaIntol': 'alergia_intol',
        'subsPsicoativas': 'subs_psicoativas',
        'medControlada': 'med_controlada',
        'localRef': 'local_ref'
      },
    );

Map<String, dynamic> _$$DemandaSaudeImplToJson(_$DemandaSaudeImpl instance) =>
    <String, dynamic>{
      'cpf': instance.cpf,
      'gest_puer_nutriz': instance.gestPuerNutriz,
      'mob_reduzida': instance.mobReduzida,
      'cuida_outrem': instance.cuidaOutrem,
      'pcd_ou_mental': instance.pcdOuMental,
      'genero': instance.genero,
      'saude_cid': instance.saudeCid,
      'data_nasc': instance.dataNasc?.toIso8601String(),
      'alergia_intol': instance.alergiaIntol,
      'subs_psicoativas': instance.subsPsicoativas,
      'med_controlada': instance.medControlada,
      'local_ref': instance.localRef,
      'evolucao': instance.evolucao,
    };

_$DemandaEducacaoImpl _$$DemandaEducacaoImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DemandaEducacaoImpl',
      json,
      ($checkedConvert) {
        final val = _$DemandaEducacaoImpl(
          cpfResponsavel:
              $checkedConvert('cpf_responsavel', (v) => v as String),
          nome: $checkedConvert('nome', (v) => v as String),
          cpf: $checkedConvert('cpf', (v) => v as String),
          genero: $checkedConvert('genero', (v) => v as String?),
          alojamento:
              $checkedConvert('alojamento', (v) => (v as num?)?.toInt()),
          dataNasc: $checkedConvert('data_nasc',
              (v) => v == null ? null : DateTime.parse(v as String)),
          unidadeEnsino:
              $checkedConvert('unidade_ensino', (v) => (v as num?)?.toInt()),
          turno: $checkedConvert('turno', (v) => v as String?),
          demanda: $checkedConvert('demanda', (v) => v as String?),
          evolucao: $checkedConvert('evolucao', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'cpfResponsavel': 'cpf_responsavel',
        'dataNasc': 'data_nasc',
        'unidadeEnsino': 'unidade_ensino'
      },
    );

Map<String, dynamic> _$$DemandaEducacaoImplToJson(
        _$DemandaEducacaoImpl instance) =>
    <String, dynamic>{
      'cpf_responsavel': instance.cpfResponsavel,
      'nome': instance.nome,
      'cpf': instance.cpf,
      'genero': instance.genero,
      'alojamento': instance.alojamento,
      'data_nasc': instance.dataNasc?.toIso8601String(),
      'unidade_ensino': instance.unidadeEnsino,
      'turno': instance.turno,
      'demanda': instance.demanda,
      'evolucao': instance.evolucao,
    };

_$DemandaHabitacaoImpl _$$DemandaHabitacaoImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DemandaHabitacaoImpl',
      json,
      ($checkedConvert) {
        final val = _$DemandaHabitacaoImpl(
          cpf: $checkedConvert('cpf', (v) => v as String),
          latitude: $checkedConvert('latitude', (v) => (v as num?)?.toDouble()),
          longitude:
              $checkedConvert('longitude', (v) => (v as num?)?.toDouble()),
          areaVerde: $checkedConvert('area_verde', (v) => v as String?),
          ocupacao: $checkedConvert('ocupacao', (v) => v as String?),
          material: $checkedConvert('material', (v) => v as String?),
          relacaoImovel: $checkedConvert('relacao_imovel', (v) => v as String?),
          usoImovel: $checkedConvert('uso_imovel', (v) => v as String?),
          codRge: $checkedConvert('cod_rge', (v) => (v as num?)?.toInt()),
          evolucao: $checkedConvert('evolucao', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'areaVerde': 'area_verde',
        'relacaoImovel': 'relacao_imovel',
        'usoImovel': 'uso_imovel',
        'codRge': 'cod_rge'
      },
    );

Map<String, dynamic> _$$DemandaHabitacaoImplToJson(
        _$DemandaHabitacaoImpl instance) =>
    <String, dynamic>{
      'cpf': instance.cpf,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'area_verde': instance.areaVerde,
      'ocupacao': instance.ocupacao,
      'material': instance.material,
      'relacao_imovel': instance.relacaoImovel,
      'uso_imovel': instance.usoImovel,
      'cod_rge': instance.codRge,
      'evolucao': instance.evolucao,
    };

_$DemandaAmbienteImpl _$$DemandaAmbienteImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DemandaAmbienteImpl',
      json,
      ($checkedConvert) {
        final val = _$DemandaAmbienteImpl(
          cpf: $checkedConvert('cpf', (v) => v as String),
          acompanhaTutor:
              $checkedConvert('acompanha_tutor', (v) => v as String),
          quantidade:
              $checkedConvert('quantidade', (v) => (v as num?)?.toInt()),
          especie: $checkedConvert('especie', (v) => v as String?),
          vacinado: $checkedConvert('vacinado', (v) => v as String?),
          vacRaiva: $checkedConvert('vac_raiva', (v) => v as String?),
          vacV8v10: $checkedConvert('vac_v8v10', (v) => v as String?),
          necRacao: $checkedConvert('nec_racao', (v) => v as String?),
          castrado: $checkedConvert('castrado', (v) => v as String?),
          porte: $checkedConvert('porte', (v) => v as String?),
          evolucao: $checkedConvert('evolucao', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'acompanhaTutor': 'acompanha_tutor',
        'vacRaiva': 'vac_raiva',
        'vacV8v10': 'vac_v8v10',
        'necRacao': 'nec_racao'
      },
    );

Map<String, dynamic> _$$DemandaAmbienteImplToJson(
        _$DemandaAmbienteImpl instance) =>
    <String, dynamic>{
      'cpf': instance.cpf,
      'acompanha_tutor': instance.acompanhaTutor,
      'quantidade': instance.quantidade,
      'especie': instance.especie,
      'vacinado': instance.vacinado,
      'vac_raiva': instance.vacRaiva,
      'vac_v8v10': instance.vacV8v10,
      'nec_racao': instance.necRacao,
      'castrado': instance.castrado,
      'porte': instance.porte,
      'evolucao': instance.evolucao,
    };

_$DemandaInternaImpl _$$DemandaInternaImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DemandaInternaImpl',
      json,
      ($checkedConvert) {
        final val = _$DemandaInternaImpl(
          cpf: $checkedConvert('cpf', (v) => v as String),
          demanda: $checkedConvert('demanda', (v) => v as String),
          data: $checkedConvert('data', (v) => DateTime.parse(v as String)),
          status: $checkedConvert('status', (v) => v as String?),
          evolucao: $checkedConvert('evolucao', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DemandaInternaImplToJson(
        _$DemandaInternaImpl instance) =>
    <String, dynamic>{
      'cpf': instance.cpf,
      'demanda': instance.demanda,
      'data': instance.data.toIso8601String(),
      'status': instance.status,
      'evolucao': instance.evolucao,
    };
