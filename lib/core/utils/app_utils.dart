// ignore_for_file: omit_local_variable_types

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppUtils {
  // Date formatting
  static String formatDate(DateTime date, {String pattern = 'dd/MM/yyyy'}) =>
      DateFormat(pattern, 'pt_BR').format(date);

  static String formatDateTime(DateTime dateTime,
          {String pattern = 'dd/MM/yyyy HH:mm'}) =>
      DateFormat(pattern, 'pt_BR').format(dateTime);

  static String formatTime(DateTime time, {String pattern = 'HH:mm'}) =>
      DateFormat(pattern, 'pt_BR').format(time);

  static DateTime? parseDate(String date, {String pattern = 'dd/MM/yyyy'}) {
    try {
      return DateFormat(pattern, 'pt_BR').parse(date);
    } catch (e) {
      return null;
    }
  }

  // Number formatting
  static String formatCurrency(double value) =>
      NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$').format(value);

  static String formatNumber(double value, {int decimalDigits = 2}) =>
      NumberFormat.decimalPattern('pt_BR').format(value);

  // CPF/CNPJ formatting and validation
  static String formatCpf(String cpf) {
    final String cleanCpf = cpf.replaceAll(RegExp(r'\D'), '');
    if (cleanCpf.length != 11) {
      return cleanCpf;
    }
    return '${cleanCpf.substring(0, 3)}.${cleanCpf.substring(3, 6)}.${cleanCpf.substring(6, 9)}-${cleanCpf.substring(9)}';
  }

  static String formatCnpj(String cnpj) {
    final String cleanCnpj = cnpj.replaceAll(RegExp(r'\D'), '');
    if (cleanCnpj.length != 14) {
      return cleanCnpj;
    }
    return '${cleanCnpj.substring(0, 2)}.${cleanCnpj.substring(2, 5)}.${cleanCnpj.substring(5, 8)}/${cleanCnpj.substring(8, 12)}-${cleanCnpj.substring(12)}';
  }

  static String unformatCpf(String cpf) => cpf.replaceAll(RegExp(r'\D'), '');

  static bool isValidCpf(String cpf) {
    final String cleanCpf = unformatCpf(cpf);

    if (cleanCpf.length != 11) {
      return false;
    }

    // Check for known invalid CPFs
    if (RegExp(r'^(\d)\1{10}$').hasMatch(cleanCpf)) {
      return false;
    }

    // Validate first check digit
    var sum = 0;
    for (var i = 0; i < 9; i++) {
      sum += int.parse(cleanCpf[i]) * (10 - i);
    }
    var remainder = sum % 11;
    final firstDigit = remainder < 2 ? 0 : 11 - remainder;

    if (int.parse(cleanCpf[9]) != firstDigit) {
      return false;
    }

    // Validate second check digit
    sum = 0;
    for (var i = 0; i < 10; i++) {
      sum += int.parse(cleanCpf[i]) * (11 - i);
    }
    remainder = sum % 11;
    final secondDigit = remainder < 2 ? 0 : 11 - remainder;

    return int.parse(cleanCpf[10]) == secondDigit;
  }

  // Phone formatting
  static String formatPhone(String phone) {
    final String cleanPhone = phone.replaceAll(RegExp(r'\D'), '');

    if (cleanPhone.length == 11) {
      return '(${cleanPhone.substring(0, 2)}) ${cleanPhone.substring(2, 7)}-${cleanPhone.substring(7)}';
    } else if (cleanPhone.length == 10) {
      return '(${cleanPhone.substring(0, 2)}) ${cleanPhone.substring(2, 6)}-${cleanPhone.substring(6)}';
    }

    return cleanPhone;
  }

  static String unformatPhone(String phone) =>
      phone.replaceAll(RegExp(r'\D'), '');

  // CEP formatting
  static String formatCep(String cep) {
    final String cleanCep = cep.replaceAll(RegExp(r'\D'), '');
    if (cleanCep.length != 8) {
      return cleanCep;
    }
    return '${cleanCep.substring(0, 5)}-${cleanCep.substring(5)}';
  }

  static String unformatCep(String cep) => cep.replaceAll(RegExp(r'\D'), '');

  static bool isValidCep(String cep) {
    final String cleanCep = unformatCep(cep);
    return cleanCep.length == 8 && RegExp(r'^\d{8}$').hasMatch(cleanCep);
  }

  // Email validation
  static bool isValidEmail(String email) =>
      RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);

  // String utilities
  static String capitalize(String text) {
    if (text.isEmpty) {
      return text;
    }
    return text[0].toUpperCase() + text.substring(1).toLowerCase();
  }

  static String capitalizeWords(String text) =>
      text.split(' ').map(capitalize).join(' ');

  static String truncateText(String text, int maxLength,
      {String suffix = '...'}) {
    if (text.length <= maxLength) {
      return text;
    }
    return text.substring(0, maxLength - suffix.length) + suffix;
  }

  // Color utilities
  static Color getStatusColor(String? status) {
    switch (status?.toLowerCase()) {
      case 'ativo':
      case 'a':
      case 'concluido':
      case 'aprovado':
        return Colors.green;
      case 'inativo':
      case 'i':
      case 'cancelado':
      case 'rejeitado':
        return Colors.red;
      case 'pendente':
      case 'em_andamento':
      case 'aguardando':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  static String getStatusText(String? status) {
    switch (status?.toLowerCase()) {
      case 'a':
        return 'Ativo';
      case 'i':
        return 'Inativo';
      case 'pendente':
        return 'Pendente';
      case 'em_andamento':
        return 'Em Andamento';
      case 'concluido':
        return 'Concluído';
      case 'cancelado':
        return 'Cancelado';
      default:
        return status ?? 'Indefinido';
    }
  }

  // Screen size utilities
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 768;

  static bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= 768 && width < 1024;
  }

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  // Debug utilities
  static void logBuildMethod(String widgetName) {
    debugPrint('🏗️ Building: $widgetName');
  }

  static void logNavigation(String from, String to) {
    debugPrint('🧭 Navigation: $from → $to');
  }

  // Age calculation
  static int calculateAge(DateTime birthDate) {
    final now = DateTime.now();
    var age = now.year - birthDate.year;

    if (now.month < birthDate.month ||
        (now.month == birthDate.month && now.day < birthDate.day)) {
      age--;
    }

    return age;
  }

  // Time ago formatter
  static String getTimeAgo(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inDays > 365) {
      final years = (difference.inDays / 365).floor();
      return '$years ano${years > 1 ? 's' : ''} atrás';
    } else if (difference.inDays > 30) {
      final months = (difference.inDays / 30).floor();
      return '$months mês${months > 1 ? 'es' : ''} atrás';
    } else if (difference.inDays > 0) {
      return '${difference.inDays} dia${difference.inDays > 1 ? 's' : ''} atrás';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hora${difference.inHours > 1 ? 's' : ''} atrás';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minuto${difference.inMinutes > 1 ? 's' : ''} atrás';
    } else {
      return 'Agora';
    }
  }

  // File size formatter
  static String formatFileSize(int bytes) {
    if (bytes < 1024) {
      return '$bytes B';
    }
    if (bytes < 1024 * 1024) {
      return '${(bytes / 1024).toStringAsFixed(1)} KB';
    }
    if (bytes < 1024 * 1024 * 1024) {
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    }
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
  }

  // Generate random string
  static String generateRandomString(int length) {
    const chars =
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final random = DateTime.now().millisecondsSinceEpoch;
    return List.generate(length, (index) => chars[random % chars.length])
        .join();
  }

  // Deep copy list
  static List<T> deepCopyList<T>(List<T> original) => List<T>.from(original);

  // Debounce function
  static Timer? _debounceTimer;
  static void debounce(Duration duration, VoidCallback callback) {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(duration, callback);
  }
}
