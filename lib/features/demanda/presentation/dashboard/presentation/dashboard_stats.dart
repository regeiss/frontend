import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/utils/app_utils.dart';

class DashboardStats extends ConsumerWidget {
  const DashboardStats({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMobile = AppUtils.isMobile(context);

    // TODO(robertogeiss): Replace with actual data from providers
    final stats = [
      _StatItem(
        title: 'Total de Responsáveis',
        value: '1.248',
        change: '+12%',
        isPositive: true,
        icon: Icons.people,
        color: AppColors.responsavelColor,
      ),
      _StatItem(
        title: 'Membros Cadastrados',
        value: '3.567',
        change: '+8%',
        isPositive: true,
        icon: Icons.group,
        color: AppColors.membroColor,
      ),
      _StatItem(
        title: 'Demandas Ativas',
        value: '892',
        change: '-3%',
        isPositive: false,
        icon: Icons.assignment,
        color: AppColors.warningColor,
      ),
      _StatItem(
        title: 'Concluídas Hoje',
        value: '47',
        change: '+24%',
        isPositive: true,
        icon: Icons.check_circle,
        color: AppColors.successColor,
      ),
    ];

    if (isMobile) {
      return Column(
        children: [
          Row(
            children: [
              Expanded(child: _buildStatCard(stats[0])),
              const SizedBox(width: 12),
              Expanded(child: _buildStatCard(stats[1])),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(child: _buildStatCard(stats[2])),
              const SizedBox(width: 12),
              Expanded(child: _buildStatCard(stats[3])),
            ],
          ),
        ],
      );
    }

    return Row(
      children: stats
          .map((stat) => Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: _buildStatCard(stat),
                ),
              ))
          .toList(),
    );
  }

  Widget _buildStatCard(_StatItem stat) => Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.borderColor),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Icon and Change
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: stat.color.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    stat.icon,
                    color: stat.color,
                    size: 20,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: stat.isPositive
                        ? AppColors.successColor.withValues(alpha: 0.1)
                        : AppColors.errorColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        stat.isPositive
                            ? Icons.trending_up
                            : Icons.trending_down,
                        size: 12,
                        color: stat.isPositive
                            ? AppColors.successColor
                            : AppColors.errorColor,
                      ),
                      const SizedBox(width: 2),
                      Text(
                        stat.change,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: stat.isPositive
                              ? AppColors.successColor
                              : AppColors.errorColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // Value
            Text(
              stat.value,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimaryColor,
              ),
            ),

            const SizedBox(height: 4),

            // Title
            Text(
              stat.title,
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.textSecondaryColor,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
}

class _StatItem {
  _StatItem({
    required this.title,
    required this.value,
    required this.change,
    required this.isPositive,
    required this.icon,
    required this.color,
  });
  final String title;
  final String value;
  final String change;
  final bool isPositive;
  final IconData icon;
  final Color color;
}
