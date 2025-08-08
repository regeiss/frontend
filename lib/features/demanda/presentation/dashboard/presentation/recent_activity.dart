import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/utils/app_utils.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO(robertogeiss): Replace with actual data from providers
    final activities = [
      _ActivityItem(
        title: 'Novo responsável cadastrado',
        subtitle: 'Maria Silva - CPF: 123.456.789-00',
        time: DateTime.now().subtract(const Duration(minutes: 15)),
        icon: MdiIcons.accountPlus,
        color: AppColors.successColor,
      ),
      _ActivityItem(
        title: 'Demanda de saúde atualizada',
        subtitle: 'João Santos - Status: Em andamento',
        time: DateTime.now().subtract(const Duration(hours: 1)),
        icon: MdiIcons.medal,
        color: AppColors.demandaSaudeColor,
      ),
      _ActivityItem(
        title: 'Membro adicionado',
        subtitle: 'Ana Costa - Família Silva',
        time: DateTime.now().subtract(const Duration(hours: 2)),
        icon: MdiIcons.accountGroup,
        color: AppColors.membroColor,
      ),
      _ActivityItem(
        title: 'Demanda de educação concluída',
        subtitle: 'Pedro Oliveira - Matrícula realizada',
        time: DateTime.now().subtract(const Duration(hours: 4)),
        icon: MdiIcons.school,
        color: AppColors.demandaEducacaoColor,
      ),
      _ActivityItem(
        title: 'Responsável atualizado',
        subtitle: 'Carlos Mendes - Endereço modificado',
        time: DateTime.now().subtract(const Duration(days: 1)),
        icon: MdiIcons.accountEdit,
        color: AppColors.warningColor,
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Atividades Recentes',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimaryColor,
              ),
            ),
            TextButton(
              onPressed: () {
                // TODO(robertogeiss): Navigate to full activity log
              },
              child: const Text('Ver todas'),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.borderColor),
          ),
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: activities.length,
            separatorBuilder: (context, index) => const Divider(
              height: 1,
              color: AppColors.borderColor,
            ),
            itemBuilder: (context, index) {
              final activity = activities[index];
              return _buildActivityItem(activity);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildActivityItem(_ActivityItem activity) => Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            // Icon
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: activity.color.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                activity.icon,
                color: activity.color,
                size: 20,
              ),
            ),

            const SizedBox(width: 12),

            // Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    activity.title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimaryColor,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    activity.subtitle,
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppColors.textSecondaryColor,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 8),

            // Time
            Text(
              AppUtils.getTimeAgo(activity.time),
              style: const TextStyle(
                fontSize: 11,
                color: AppColors.textTertiaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      );
}

class _ActivityItem {
  _ActivityItem({
    required this.title,
    required this.subtitle,
    required this.time,
    required this.icon,
    required this.color,
  });
  final String title;
  final String subtitle;
  final DateTime time;
  final IconData icon;
  final Color color;
}
