import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../core/config/notification/notification_service.dart';

class DemandasListPage extends HookConsumerWidget {
  const DemandasListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
      appBar: AppBar(
        title: const Text('Demandas'),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {
              NotificationService.showInfo('Filtros em desenvolvimento');
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              NotificationService.showInfo('Busca em desenvolvimento');
            },
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.assignment_outlined,
              size: 64,
              color: AppColors.textSecondaryColor,
            ),
            SizedBox(height: 16),
            Text(
              'Lista de Demandas',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimaryColor,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Funcionalidade em desenvolvimento',
              style: TextStyle(
                color: AppColors.textSecondaryColor,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/demandas/create'),
        tooltip: 'Nova Demanda',
        child: const Icon(Icons.add),
      ),
    );
}
