import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/config/env.dart';
import '../../../../../core/config/notification/notification_service.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../auth/application/auth_notifier.dart';

class DashboardAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const DashboardAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authNotifierProvider);

    return AppBar(
      title: const Text(Env.appName),
      centerTitle: false,
      elevation: 0,
      backgroundColor: AppColors.primaryColor,
      foregroundColor: Colors.white,
      actions: [
        // Notifications
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          onPressed: () {
            NotificationService.showInfo('Notificações em desenvolvimento');
          },
          tooltip: 'Notificações',
        ),
        
        // Search
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            NotificationService.showInfo('Busca em desenvolvimento');
          },
          tooltip: 'Buscar',
        ),
        
        // Profile Menu
        authState.maybeWhen(
          authenticated: (user) => PopupMenuButton<String>(
            icon: CircleAvatar(
              backgroundColor: Colors.white.withOpacity(0.2),
              child: Text(
                user.initials,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            onSelected: (value) => _handleMenuSelection(context, ref, value),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'profile',
                child: Row(
                  children: [
                    const Icon(Icons.person_outline),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          user.displayName,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          user.email,
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.textSecondaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem(
                value: 'settings',
                child: Row(
                  children: [
                    Icon(Icons.settings_outlined),
                    SizedBox(width: 12),
                    Text('Configurações'),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: 'help',
                child: Row(
                  children: [
                    Icon(Icons.help_outline),
                    SizedBox(width: 12),
                    Text('Ajuda'),
                  ],
                ),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem(
                value: 'logout',
                child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: AppColors.errorColor,
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Sair',
                      style: TextStyle(color: AppColors.errorColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
          orElse: () => const SizedBox.shrink(),
        ),
        
        const SizedBox(width: 8),
      ],
    );
  }

  void _handleMenuSelection(BuildContext context, WidgetRef ref, String value) {
    switch (value) {
      case 'profile':
        NotificationService.showInfo('Perfil em desenvolvimento');
        break;
      case 'settings':
        NotificationService.showInfo('Configurações em desenvolvimento');
        break;
      case 'help':
        NotificationService.showInfo('Ajuda em desenvolvimento');
        break;
      case 'logout':
        _showLogoutDialog(context, ref);
        break;
    }
  }

  void _showLogoutDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirmar Saída'),
        content: const Text('Tem certeza que deseja sair da sua conta?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancelar'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              ref.read(authNotifierProvider.notifier).logout();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.errorColor,
            ),
            child: const Text('Sair'),
          ),
        ],
      ),
    );
  }
}