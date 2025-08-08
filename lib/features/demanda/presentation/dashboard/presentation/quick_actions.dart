import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../core/config/notification/notification_service.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/utils/app_utils.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = AppUtils.isMobile(context);

    final actions = [
      _QuickAction(
        title: 'Novo Responsável',
        icon: MdiIcons.accountPlus,
        color: AppColors.responsavelColor,
        onTap: () => context.push('/responsaveis/create'),
      ),
      _QuickAction(
        title: 'Novo Membro',
        icon: MdiIcons.accountGroupOutline,
        color: AppColors.membroColor,
        onTap: () => context.push('/membros/create'),
      ),
      _QuickAction(
        title: 'Nova Demanda',
        icon: MdiIcons.clipboardPlusOutline,
        color: AppColors.demandaSaudeColor,
        onTap: () => context.push('/demandas/create'),
      ),
      _QuickAction(
        title: 'Relatórios',
        icon: MdiIcons.chartBox,
        color: AppColors.infoColor,
        onTap: () =>
            NotificationService.showInfo('Relatórios em desenvolvimento'),
      ),
      _QuickAction(
        title: 'Buscar CPF',
        icon: MdiIcons.magnify,
        color: AppColors.primaryColor,
        onTap: () => _showSearchDialog(context),
      ),
      _QuickAction(
        title: 'Sincronizar',
        icon: MdiIcons.send,
        color: AppColors.secondaryColor,
        onTap: () =>
            NotificationService.showInfo('Sincronização em desenvolvimento'),
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Ações Rápidas',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimaryColor,
          ),
        ),
        const SizedBox(height: 16),
        if (isMobile) ...[
          // Mobile: 3 columns
          for (int i = 0; i < actions.length; i += 3)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                children: [
                  for (final int j = i; j < i + 3 && j < actions.length;) ...[
                    Expanded(child: _buildActionButton(actions[j])),
                    if (j < i + 2 && j + 1 < actions.length)
                      const SizedBox(width: 12),
                  ],
                ],
              ),
            ),
        ] else ...[
          // Desktop: all in one row
          Row(
            children: actions
                .map((action) => Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: _buildActionButton(action),
                      ),
                    ))
                .toList(),
          ),
        ],
      ],
    );
  }

  Widget _buildActionButton(_QuickAction action) => Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: action.onTap,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.borderColor),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: action.color.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    action.icon,
                    color: action.color,
                    size: 24,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  action.title,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimaryColor,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      );

  void _showSearchDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Buscar por CPF'),
        content: TextField(
          decoration: const InputDecoration(
            labelText: 'CPF',
            hintText: 'Digite o CPF para buscar',
            prefixIcon: Icon(Icons.search),
          ),
          keyboardType: TextInputType.number,
          onSubmitted: (value) {
            Navigator.of(context).pop();
            if (value.isNotEmpty) {
              // TODO(robertogeiss): Implement search functionality
              NotificationService.showInfo('Busca por CPF: $value');
            }
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancelar'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              NotificationService.showInfo('Funcionalidade em desenvolvimento');
            },
            child: const Text('Buscar'),
          ),
        ],
      ),
    );
  }
}

class _QuickAction {
  _QuickAction({
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  });
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;
}
