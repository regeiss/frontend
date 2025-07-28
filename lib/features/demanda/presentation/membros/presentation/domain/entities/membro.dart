import 'package:freezed_annotation/freezed_annotation.dart';

part 'membro.freezed.dart';
part 'membro.g.dart';

@freezed
class Membro with _$Membro {
  const factory Membro({
    required String cpf,
    required String nome,
    required String cpfResponsavel,
    DateTime? timestamp,
    String? status,
  }) = _Membro;

  factory Membro.fromJson(Map<String, dynamic> json) =>
      _$MembroFromJson(json);
}

extension MembroExtension on Membro {
  bool get isAtivo => status == 'A';
  bool get isInativo => status == 'I';
  
  String get statusText {
    switch (status) {
      case 'A':
        return 'Ativo';
      case 'I':
        return 'Inativo';
      default:
        return 'Indefinido';
    }
  }
  
  String get cpfFormatado {
    if (cpf.length != 11) return cpf;
    return '${cpf.substring(0, 3)}.${cpf.substring(3, 6)}.${cpf.substring(6, 9)}-${cpf.substring(9)}';
  }
  
  String get cpfResponsavelFormatado {
    if (cpfResponsavel.length != 11) return cpfResponsavel;
    return '${cpfResponsavel.substring(0, 3)}.${cpfResponsavel.substring(3, 6)}.${cpfResponsavel.substring(6, 9)}-${cpfResponsavel.substring(9)}';
  }
}