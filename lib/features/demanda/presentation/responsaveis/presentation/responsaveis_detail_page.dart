import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/theme/app_colors.dart';

class ResponsavelDetailPage extends HookConsumerWidget {
  
  const ResponsavelDetailPage({
    required this.cpf, super.key,
  });
  final String cpf;

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Responsável'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              // Navigate to edit
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.person_outline,
              size: 64,
              color: AppColors.textSecondaryColor,
            ),
            const SizedBox(height: 16),
            const Text(
              'Detalhes do Responsável',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimaryColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'CPF: $cpf',
              style: const TextStyle(
                color: AppColors.textSecondaryColor,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Funcionalidade em desenvolvimento',
              style: TextStyle(
                color: AppColors.textSecondaryColor,
              ),
            ),
          ],
        ),
      ),
    );
}