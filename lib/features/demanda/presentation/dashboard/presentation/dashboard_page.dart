import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/utils/app_utils.dart';

import '../../../../auth/presentation/application/auth_state.dart';
import '../../../../auth/presentation/domain/entities/user.dart';
import 'dashboard_appbar.dart';
import 'dashboard_card.dart';
import 'dashboard_stats.dart';
import 'quick_actions.dart';
import 'recent_activity.dart';

class DashboardPage extends HookConsumerWidget {
  const DashboardPage({super.key});

  String _getUserFullName(User user) {
    final parts = <String>[];
    if (user.firstName != null && user.firstName!.isNotEmpty) {
      parts.add(user.firstName!);
    }
    if (user.lastName != null && user.lastName!.isNotEmpty) {
      parts.add(user.lastName!);
    }
    return parts.isNotEmpty ? parts.join(' ') : user.username;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authNotifierProvider);
    final scrollController = useScrollController();

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const DashboardAppBar(),
      body: authState.maybeWhen(
        authenticated: (user) => _buildDashboardContent(
          context,
          ref,
          scrollController,
          user,
        ),
        orElse: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go('/responsaveis/create'),
        tooltip: 'Novo Responsável',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildDashboardContent(
    BuildContext context,
    WidgetRef ref,
    ScrollController scrollController,
    dynamic user,
  ) {
    final isMobile = AppUtils.isMobile(context);

    return SingleChildScrollView(
      controller: scrollController,
      padding: EdgeInsets.all(isMobile ? 16 : 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Welcome Message
          _buildWelcomeMessage(user),

          const SizedBox(height: 24),

          // Statistics Cards
          const DashboardStats(),

          const SizedBox(height: 24),

          // Quick Actions
          const QuickActions(),

          const SizedBox(height: 24),

          // Main Dashboard Cards
          if (isMobile) ...[
            _buildMobileLayout(context),
          ] else ...[
            _buildDesktopLayout(context),
          ],

          const SizedBox(height: 24),

          // Recent Activity
          const RecentActivity(),

          const SizedBox(height: 80), // Space for FAB
        ],
      ),
    );
  }

  Widget _buildWelcomeMessage(dynamic user) => Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: AppColors.primaryGradient,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryColor.withValues(alpha: 0.3),
              blurRadius: 20,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Olá, ${_getUserFullName(user)}!',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Bem-vindo ao sistema de cadastro unificado',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white.withValues(alpha: 0.9),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Icon(
                Icons.waving_hand,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      );

  Widget _buildMobileLayout(BuildContext context) => Column(
        children: [
          DashboardCard(
            title: 'Responsáveis',
            subtitle: 'Gerenciar responsáveis',
            icon: MdiIcons.account,
            color: AppColors.responsavelColor,
            onTap: () => context.go('/responsaveis'),
          ),
          const SizedBox(height: 16),
          DashboardCard(
            title: 'Membros',
            subtitle: 'Gerenciar membros',
            icon: MdiIcons.accountGroup,
            color: AppColors.membroColor,
            onTap: () => context.go('/membros'),
          ),
          const SizedBox(height: 16),
          DashboardCard(
            title: 'Demandas',
            subtitle: 'Acompanhar demandas',
            icon: MdiIcons.clipboardList,
            color: AppColors.demandaSaudeColor,
            onTap: () => context.go('/demandas'),
          ),
        ],
      );

  Widget _buildDesktopLayout(BuildContext context) => Row(
        children: [
          Expanded(
            child: DashboardCard(
              title: 'Responsáveis',
              subtitle: 'Gerenciar responsáveis',
              icon: MdiIcons.account,
              color: AppColors.responsavelColor,
              onTap: () => context.go('/responsaveis'),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: DashboardCard(
              title: 'Membros',
              subtitle: 'Gerenciar membros',
              icon: MdiIcons.accountGroup,
              color: AppColors.membroColor,
              onTap: () => context.go('/membros'),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: DashboardCard(
              title: 'Demandas',
              subtitle: 'Acompanhar demandas',
              icon: MdiIcons.clipboardList,
              color: AppColors.demandaSaudeColor,
              onTap: () => context.go('/demandas'),
            ),
          ),
        ],
      );
}
