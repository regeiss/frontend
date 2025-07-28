import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../core/config/notification/notification_service.dart';

class DemandaFormPage extends HookConsumerWidget {
  
  const DemandaFormPage({
    super.key,
    this.id,
    this.cpfResponsavel,
    this.tipo,
  });
  final int? id;
  final String? cpfResponsavel;
  final String? tipo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEditing = id != null;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(isEditing ? 'Editar Demanda' : 'Nova Demanda'),
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
                      isEditing ? Icons.edit : Icons.assignment_add,
                      size: 64,
                      color: AppColors.textSecondaryColor,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      isEditing ? 'Editar Demanda' : 'Nova Demanda',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimaryColor,
                      ),
                    ),
                    const SizedBox(height: 8),
                    if (isEditing)
                      Text(
                        'ID: $id',
                        style: const TextStyle(
                          color: AppColors.textSecondaryColor,
                        ),
                      ),
                    if (cpfResponsavel != null)
                      Text(
                        'Responsável: $cpfResponsavel',
                        style: const TextStyle(
                          color: AppColors.textSecondaryColor,
                        ),
                      ),
                    if (tipo != null)
                      Text(
                        'Tipo: ${tipo![0].toUpperCase()}${tipo!.substring(1)}',
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
                          ? 'Demanda atualizada com sucesso!'
                          : 'Demanda cadastrada com sucesso!'
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