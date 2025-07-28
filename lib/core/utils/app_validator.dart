import 'package:form_builder_validators/form_builder_validators.dart';
import 'app_utils.dart';

class AppValidators {
  // Required field validator
  static String? Function(String?) required({String? errorText}) => FormBuilderValidators.required(
      errorText: errorText ?? 'Este campo é obrigatório',
    );

  // Email validator
  static String? Function(String?) email({String? errorText}) => FormBuilderValidators.email(
      errorText: errorText ?? 'Digite um email válido',
    );

  // CPF validator
  static String? Function(String?) cpf({String? errorText}) => (value) {
      if (value == null || value.isEmpty) {
        return null; // Use required validator separately if needed
      }
      
      final cleanCpf = AppUtils.unformatCpf(value);
      if (!AppUtils.isValidCpf(cleanCpf)) {
        return errorText ?? 'CPF inválido';
      }
      
      return null;
    };

  // Required CPF validator
  static String? Function(String?) requiredCpf({String? errorText}) => FormBuilderValidators.compose([
      required(errorText: 'CPF é obrigatório'),
      cpf(errorText: errorText),
    ]);

  // Phone validator
  static String? Function(String?) phone({String? errorText}) => (value) {
      if (value == null || value.isEmpty) {
        return null;
      }
      
      final cleanPhone = AppUtils.unformatPhone(value);
      if (cleanPhone.length < 10 || cleanPhone.length > 11) {
        return errorText ?? 'Telefone deve ter 10 ou 11 dígitos';
      }
      
      return null;
    };

  // CEP validator
  static String? Function(String?) cep({String? errorText}) => (value) {
      if (value == null || value.isEmpty) {
        return null;
      }
      
      if (!AppUtils.isValidCep(value)) {
        return errorText ?? 'CEP inválido';
      }
      
      return null;
    };

  // Required CEP validator
  static String? Function(String?) requiredCep({String? errorText}) => FormBuilderValidators.compose([
      required(errorText: 'CEP é obrigatório'),
      cep(errorText: errorText),
    ]);

  // Minimum length validator
  static String? Function(String?) minLength(
    int minLength, {
    String? errorText,
  }) => FormBuilderValidators.minLength(
      minLength,
      errorText: errorText ?? 'Mínimo de $minLength caracteres',
    );

  // Maximum length validator
  static String? Function(String?) maxLength(
    int maxLength, {
    String? errorText,
  }) => FormBuilderValidators.maxLength(
      maxLength,
      errorText: errorText ?? 'Máximo de $maxLength caracteres',
    );

  // Password validator
  static String? Function(String?) password({
    int minLength = 8,
    bool requireUppercase = true,
    bool requireLowercase = true,
    bool requireNumbers = true,
    bool requireSpecialChars = false,
    String? errorText,
  }) => (value) {
      if (value == null || value.isEmpty) {
        return null;
      }

      if (value.length < minLength) {
        return errorText ?? 'Senha deve ter pelo menos $minLength caracteres';
      }

      if (requireUppercase && !value.contains(RegExp(r'[A-Z]'))) {
        return errorText ?? 'Senha deve conter pelo menos uma letra maiúscula';
      }

      if (requireLowercase && !value.contains(RegExp(r'[a-z]'))) {
        return errorText ?? 'Senha deve conter pelo menos uma letra minúscula';
      }

      if (requireNumbers && !value.contains(RegExp(r'[0-9]'))) {
        return errorText ?? 'Senha deve conter pelo menos um número';
      }

      if (requireSpecialChars && !value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
        return errorText ?? 'Senha deve conter pelo menos um caractere especial';
      }

      return null;
    };

  // Confirm password validator
  static String? Function(String?) confirmPassword(
    String password, {
    String? errorText,
  }) => (value) {
      if (value == null || value.isEmpty) {
        return null;
      }

      if (value != password) {
        return errorText ?? 'Senhas não conferem';
      }

      return null;
    };

  // Number validator
  static String? Function(String?) number({
    String? errorText,
    bool allowNegative = false,
    bool allowDecimal = true,
  }) => (value) {
      if (value == null || value.isEmpty) {
        return null;
      }

      final numericPattern = allowDecimal
          ? (allowNegative ? r'^-?\d+\.?\d*$' : r'^\d+\.?\d*$')
          : (allowNegative ? r'^-?\d+$' : r'^\d+$');

      if (!RegExp(numericPattern).hasMatch(value)) {
        return errorText ?? 'Digite um número válido';
      }

      return null;
    };

  // Integer validator
  static String? Function(String?) integer({
    String? errorText,
    bool allowNegative = false,
  }) => number(
      errorText: errorText ?? 'Digite um número inteiro válido',
      allowNegative: allowNegative,
      allowDecimal: false,
    );

  // Positive integer validator
  static String? Function(String?) positiveInteger({String? errorText}) => (value) {
      if (value == null || value.isEmpty) {
        return null;
      }

      final intValue = int.tryParse(value);
      if (intValue == null || intValue <= 0) {
        return errorText ?? 'Digite um número inteiro positivo';
      }

      return null;
    };

  // Date validator (for string dates)
  static String? Function(String?) date({
    String? errorText,
    String pattern = 'dd/MM/yyyy',
  }) => (value) {
      if (value == null || value.isEmpty) {
        return null;
      }

      final parsedDate = AppUtils.parseDate(value, pattern: pattern);
      if (parsedDate == null) {
        return errorText ?? 'Data inválida';
      }

      return null;
    };

  // Date range validator
  static String? Function(DateTime?) dateRange({
    DateTime? minDate,
    DateTime? maxDate,
    String? errorText,
  }) => (value) {
      if (value == null) {
        return null;
      }

      if (minDate != null && value.isBefore(minDate)) {
        return errorText ?? 'Data deve ser após ${AppUtils.formatDate(minDate)}';
      }

      if (maxDate != null && value.isAfter(maxDate)) {
        return errorText ?? 'Data deve ser antes de ${AppUtils.formatDate(maxDate)}';
      }

      return null;
    };

  // Age validator (based on birth date)
  static String? Function(DateTime?) age({
    int? minAge,
    int? maxAge,
    String? errorText,
  }) => (value) {
      if (value == null) {
        return null;
      }

      final calculatedAge = AppUtils.calculateAge(value);

      if (minAge != null && calculatedAge < minAge) {
        return errorText ?? 'Idade mínima: $minAge anos';
      }

      if (maxAge != null && calculatedAge > maxAge) {
        return errorText ?? 'Idade máxima: $maxAge anos';
      }

      return null;
    };

  // Custom validator
  static String? Function(T?) custom<T>(
    bool Function(T?) validator,
    String errorText,
  ) => (value) {
      if (!validator(value)) {
        return errorText;
      }
      return null;
    };

  // Compose multiple validators
  static String? Function(T?) compose<T>(
    List<String? Function(T?)> validators,
  ) => (value) {
      for (final validator in validators) {
        final result = validator(value);
        if (result != null) {
          return result;
        }
      }
      return null;
    };

  // Username validator
  static String? Function(String?) username({String? errorText}) => (value) {
      if (value == null || value.isEmpty) {
        return null;
      }

      if (value.length < 3) {
        return errorText ?? 'Nome de usuário deve ter pelo menos 3 caracteres';
      }

      if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(value)) {
        return errorText ?? 'Nome de usuário deve conter apenas letras, números e _';
      }

      return null;
    };

  // Name validator
  static String? Function(String?) name({String? errorText}) => (value) {
      if (value == null || value.isEmpty) {
        return null;
      }

      if (value.trim().length < 2) {
        return errorText ?? 'Nome deve ter pelo menos 2 caracteres';
      }

      if (!RegExp(r'^[a-zA-ZÀ-ÿ\s]+$').hasMatch(value)) {
        return errorText ?? 'Nome deve conter apenas letras e espaços';
      }

      return null;
    };

  // Required name validator
  static String? Function(String?) requiredName({String? errorText}) => compose([
      required(errorText: 'Nome é obrigatório'),
      name(errorText: errorText),
    ]);

  // URL validator
  static String? Function(String?) url({String? errorText}) => FormBuilderValidators.url(
      errorText: errorText ?? 'Digite uma URL válida',
    );

  // Match validator (for comparing two fields)
  static String? Function(String?) match(
    String? value,
    String fieldName, {
    String? errorText,
  }) => (inputValue) {
      if (inputValue != value) {
        return errorText ?? 'Deve ser igual ao campo $fieldName';
      }
      return null;
    };
}