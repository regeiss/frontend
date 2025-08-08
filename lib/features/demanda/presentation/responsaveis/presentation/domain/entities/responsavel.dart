import 'package:freezed_annotation/freezed_annotation.dart';

part 'responsavel.freezed.dart';
part 'responsavel.g.dart';

@freezed
abstract class Responsavel with _$Responsavel {
  const factory Responsavel({
    required String cpf,
    required String nome,
    required String cep,
    required int numero,
    String? complemento,
    int? telefone,
    String? bairro,
    String? logradouro,
    String? nomeMae,
    DateTime? dataNasc,
    DateTime? timestamp,
    String? status,
    int? codRge,
  }) = _Responsavel;

  factory Responsavel.fromJson(Map<String, dynamic> json) =>
      _$ResponsavelFromJson(json);
}

extension ResponsavelExtension on Responsavel {
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
  
  String get enderecoCompleto {
    final parts = <String>[];
    
    if (logradouro != null && logradouro!.isNotEmpty) {
      parts.add(logradouro!);
    }
    
    parts.add(numero.toString());
    
    if (complemento != null && complemento!.isNotEmpty) {
      parts.add(complemento!);
    }
    
    if (bairro != null && bairro!.isNotEmpty) {
      parts.add(bairro!);
    }
    
    parts.add(cep);
    
    return parts.join(', ');
  }
  
  String get telefoneFormatado {
    if (telefone == null) {
      return '';
    }
    
    final telefoneStr = telefone.toString();
    if (telefoneStr.length == 11) {
      return '(${telefoneStr.substring(0, 2)}) ${telefoneStr.substring(2, 7)}-${telefoneStr.substring(7)}';
    } else if (telefoneStr.length == 10) {
      return '(${telefoneStr.substring(0, 2)}) ${telefoneStr.substring(2, 6)}-${telefoneStr.substring(6)}';
    }
    
    return telefoneStr;
  }
  
  String get cpfFormatado {
    if (cpf.length != 11) {
      return cpf;
    }
    return '${cpf.substring(0, 3)}.${cpf.substring(3, 6)}.${cpf.substring(6, 9)}-${cpf.substring(9)}';
  }
  
  String get cepFormatado {
    if (cep.length != 8) {
      return cep;
    }
    return '${cep.substring(0, 5)}-${cep.substring(5)}';
  }
  
  int? get idade {
    if (dataNasc == null) {
      return null;
    }
    
    final now = DateTime.now();
    var age = now.year - dataNasc!.year;
    
    if (now.month < dataNasc!.month || 
        (now.month == dataNasc!.month && now.day < dataNasc!.day)) {
      age--;
    }
    
    return age;
  }
}