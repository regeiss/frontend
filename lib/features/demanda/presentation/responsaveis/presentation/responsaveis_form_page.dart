import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/config/notification/notification_service.dart';
import '../../../../../core/theme/app_colors.dart';

class ResponsavelFormPage extends HookConsumerWidget {
  
  const ResponsavelFormPage({
    super.key,
    this.cpf,
  });
  final String? cpf;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEditing = cpf != null;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(isEditing ? 'Editar Responsável' : 'Novo Responsável'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      isEditing ? Icons.edit : Icons.person_add,
                      size: 64,
                      color: AppColors.textSecondaryColor,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      isEditing ? 'Editar Responsável' : 'Novo Responsável',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimaryColor,
                      ),
                    ),
                    const SizedBox(height: 8),
                    if (isEditing)
                      Text(
                        'CPF: $cpf',
                        style: const TextStyle(
                          color: AppColors.textSecondaryColor,
                        ),
                      ),
                    const SizedBox(height: 8),
                    const Text(
                      'Formulário em desenvolvimento',
                      style: TextStyle(
                        color: AppColors.textSecondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Cancelar'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      NotificationService.showSuccess(
                        isEditing 
                          ? 'Responsável atualizado com sucesso!'
                          : 'Responsável cadastrado com sucesso!'
                      );
                      Navigator.of(context).pop();
                    },
                    child: Text(isEditing ? 'Atualizar' : 'Cadastrar'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}