import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/config/notification/notification_service.dart';
import '../../../../../core/theme/app_colors.dart';


class MembrosListPage extends HookConsumerWidget {
  const MembrosListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
      appBar: AppBar(
        title: const Text('Membros'),
        actions: [
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
              Icons.group_outlined,
              size: 64,
              color: AppColors.textSecondaryColor,
            ),
            SizedBox(height: 16),
            Text(
              'Lista de Membros',
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
        onPressed: () => context.push('/membros/create'),
        tooltip: 'Novo Membro',
        child: const Icon(Icons.add),
      ),
    );
}