import 'package:freezed_annotation/freezed_annotation.dart';

part 'demanda.freezed.dart';
part 'demanda.g.dart';

enum TipoDemanda {
  @JsonValue('saude')
  saude,
  @JsonValue('educacao')
  educacao,
  @JsonValue('habitacao')
  habitacao,
  @JsonValue('ambiente')
  ambiente,
  @JsonValue('interna')
  interna,
}

@freezed
abstract class Demanda with _$Demanda {
  const factory Demanda({
    required String cpfResponsavel, required TipoDemanda tipo, required String demanda, required DateTime data, int? id,
    String? status,
    String? evolucao,
    Map<String, dynamic>? dadosEspecificos,
  }) = _Demanda;

  factory Demanda.fromJson(Map<String, dynamic> json) =>
      _$DemandaFromJson(json);
}

@freezed
abstract class DemandaSaude with _$DemandaSaude {
  const factory DemandaSaude({
    required String cpf,
    required String gestPuerNutriz, required String mobReduzida, required String cuidaOutrem, required String pcdOuMental, String? genero,
    String? saudeCid,
    DateTime? dataNasc,
    String? alergiaIntol,
    String? subsPsicoativas,
    String? medControlada,
    String? localRef,
    String? evolucao,
  }) = _DemandaSaude;

  factory DemandaSaude.fromJson(Map<String, dynamic> json) =>
      _$DemandaSaudeFromJson(json);
}

@freezed
abstract class DemandaEducacao with _$DemandaEducacao {
  const factory DemandaEducacao({
    required String cpfResponsavel,
    required String nome,
    required String cpf, String? genero,
    int? alojamento,
    DateTime? dataNasc,
    int? unidadeEnsino,
    String? turno,
    String? demanda,
    String? evolucao,
  }) = _DemandaEducacao;

  factory DemandaEducacao.fromJson(Map<String, dynamic> json) =>
      _$DemandaEducacaoFromJson(json);
}

@freezed
abstract class DemandaHabitacao with _$DemandaHabitacao {
  const factory DemandaHabitacao({
    required String cpf,
    double? latitude,
    double? longitude,
    String? areaVerde,
    String? ocupacao,
    String? material,
    String? relacaoImovel,
    String? usoImovel,
    int? codRge,
    String? evolucao,
  }) = _DemandaHabitacao;

  factory DemandaHabitacao.fromJson(Map<String, dynamic> json) =>
      _$DemandaHabitacaoFromJson(json);
}

@freezed
abstract class DemandaAmbiente with _$DemandaAmbiente {
  const factory DemandaAmbiente({
    required String cpf,
    required String acompanhaTutor, int? quantidade,
    String? especie,
    String? vacinado,
    String? vacRaiva,
    String? vacV8v10,
    String? necRacao,
    String? castrado,
    String? porte,
    String? evolucao,
  }) = _DemandaAmbiente;

  factory DemandaAmbiente.fromJson(Map<String, dynamic> json) =>
      _$DemandaAmbienteFromJson(json);
}

@freezed
abstract class DemandaInterna with _$DemandaInterna {
  const factory DemandaInterna({
    required String cpf,
    required String demanda,
    required DateTime data,
    String? status,
    String? evolucao,
  }) = _DemandaInterna;

  factory DemandaInterna.fromJson(Map<String, dynamic> json) =>
      _$DemandaInternaFromJson(json);
}

extension TipoDemandaExtension on TipoDemanda {
  String get label {
    switch (this) {
      case TipoDemanda.saude:
        return 'Saúde';
      case TipoDemanda.educacao:
        return 'Educação';
      case TipoDemanda.habitacao:
        return 'Habitação';
      case TipoDemanda.ambiente:
        return 'Meio Ambiente';
      case TipoDemanda.interna:
        return 'Demanda Interna';
    }
  }
  
  String get description {
    switch (this) {
      case TipoDemanda.saude:
        return 'Demandas relacionadas à saúde';
      case TipoDemanda.educacao:
        return 'Demandas relacionadas à educação';
      case TipoDemanda.habitacao:
        return 'Demandas relacionadas à habitação';
      case TipoDemanda.ambiente:
        return 'Demandas relacionadas ao meio ambiente';
      case TipoDemanda.interna:
        return 'Demandas internas do sistema';
    }
  }
  
  String get icon {
    switch (this) {
      case TipoDemanda.saude:
        return '🏥';
      case TipoDemanda.educacao:
        return '🎓';
      case TipoDemanda.habitacao:
        return '🏠';
      case TipoDemanda.ambiente:
        return '🌱';
      case TipoDemanda.interna:
        return '📋';
    }
  }
}

extension DemandaExtension on Demanda {
  String get statusText {
    switch (status?.toLowerCase()) {
      case 'pendente':
        return 'Pendente';
      case 'em_andamento':
        return 'Em Andamento';
      case 'concluido':
        return 'Concluído';
      case 'cancelado':
        return 'Cancelado';
      default:
        return 'Indefinido';
    }
  }
  
  bool get isPendente => status?.toLowerCase() == 'pendente';
  bool get isEmAndamento => status?.toLowerCase() == 'em_andamento';
  bool get isConcluido => status?.toLowerCase() == 'concluido';
  bool get isCancelado => status?.toLowerCase() == 'cancelado';
}