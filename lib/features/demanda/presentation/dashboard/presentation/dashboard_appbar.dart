import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../auth/presentation/application/auth_state.dart';

class DashboardAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const DashboardAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authNotifierProvider);

    return AppBar(
      title: const Text('Cadastro Unificado'),
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Notificações em desenvolvimento')),
            );
          },
        ),
        
        // ✅ CORRIGIDO - maybeWhen com orElse obrigatório
        authState.maybeWhen(
          authenticated: (user) => PopupMenuButton<String>(
            icon: CircleAvatar(
              backgroundColor: Colors.white.withOpacity(0.2),
              child: Text(
                user.initials,
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            onSelected: (value) {
              if (value == 'logout') {
                ref.read(authNotifierProvider.notifier).logout();
                context.go('/login');
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'profile',
                child: Text('Olá, ${user.displayName}'),
              ),
              const PopupMenuItem(
                value: 'logout',
                child: Row(
                  children: [
                    Icon(Icons.logout, color: Colors.red),
                    SizedBox(width: 8),
                    Text('Sair', style: TextStyle(color: Colors.red)),
                  ],
                ),
              ),
            ],
          ),
          orElse: () => const SizedBox.shrink(), // ✅ OBRIGATÓRIO
        ),
        
        const SizedBox(width: 8),
      ],
    );
  }
}