import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../../core/config/env.dart';
import '../../../../core/storage/secure_storage.dart';
import '../../../../core/theme/app_colors.dart';

import '../../../core/config/logging/app_logger.dart';

class OnboardingPage extends HookConsumerWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: unused_local_variable
    final pageController = usePageController();

    return Scaffold(
      body: IntroductionScreen(
        key: const Key('introduction_screen'),
        globalBackgroundColor: AppColors.backgroundColor,
        pages: _getPages(),
        onDone: () => _onIntroEnd(context),
        onSkip: () => _onIntroEnd(context),
        showSkipButton: true,
        skipOrBackFlex: 0,
        nextFlex: 0,
        showBackButton: false,
        back: const Icon(Icons.arrow_back),
        skip: const Text(
          'Pular',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColors.primaryColor,
          ),
        ),
        next: const Icon(
          Icons.arrow_forward,
          color: AppColors.primaryColor,
        ),
        done: const Text(
          'Começar',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColors.primaryColor,
          ),
        ),
        curve: Curves.fastLinearToSlowEaseIn,
        controlsMargin: const EdgeInsets.all(16),
        controlsPadding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
        dotsDecorator: DotsDecorator(
          size: const Size(10, 10),
          color: AppColors.textTertiaryColor,
          activeSize: const Size(22, 10),
          activeColor: AppColors.primaryColor,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }

  List<PageViewModel> _getPages() => [
        PageViewModel(
          title: 'Bem-vindo ao ${Env.appName}',
          body:
              'Sua plataforma completa para gerenciamento de cadastros unificados.',
          image: _buildImage('assets/images/onboarding_1.png', Icons.people),
          decoration: _getPageDecoration(),
        ),
        PageViewModel(
          title: 'Gestão Completa',
          body:
              'Gerencie responsáveis, membros e suas demandas de forma integrada e eficiente.',
          image: _buildImage('assets/images/onboarding_2.png', Icons.dashboard),
          decoration: _getPageDecoration(),
        ),
        PageViewModel(
          title: 'Demandas Organizadas',
          body:
              'Acompanhe demandas de saúde, educação, habitação, meio ambiente e internas.',
          image:
              _buildImage('assets/images/onboarding_3.png', Icons.assignment),
          decoration: _getPageDecoration(),
        ),
        PageViewModel(
          title: 'Relatórios e Insights',
          body:
              'Tenha acesso a relatórios detalhados e insights para tomada de decisões.',
          image: _buildImage('assets/images/onboarding_4.png', Icons.analytics),
          decoration: _getPageDecoration(),
        ),
        PageViewModel(
          title: 'Sincronização em Tempo Real',
          body:
              'Todos os dados são sincronizados automaticamente com o servidor central.',
          image: _buildImage('assets/images/onboarding_5.png', Icons.sync),
          decoration: _getPageDecoration(),
        ),
      ];

  Widget _buildImage(String assetName, IconData fallbackIcon) => Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: AppColors.primaryColor.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Icon(
          fallbackIcon,
          size: 80,
          color: AppColors.primaryColor,
        ),
      );

  PageDecoration _getPageDecoration() => const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: AppColors.textPrimaryColor,
        ),
        bodyTextStyle: TextStyle(
          fontSize: 18,
          color: AppColors.textSecondaryColor,
          height: 1.4,
        ),
        bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
        pageColor: AppColors.backgroundColor,
        imagePadding: EdgeInsets.only(top: 40, bottom: 24),
        contentMargin: EdgeInsets.symmetric(horizontal: 16),
      );

  Future<void> _onIntroEnd(BuildContext context) async {
    try {
      AppLogger.info('Onboarding completed');

      // Mark that the user has completed onboarding
      await SecureStorage.setFirstLaunch(false);

      // Check if user is already logged in
      final isLoggedIn = await SecureStorage.isLoggedIn();

      if (isLoggedIn) {
        AppLogger.info('User is logged in, navigating to dashboard');
        if (context.mounted) {
          context.go('/dashboard');
        }
      } else {
        AppLogger.info('User is not logged in, navigating to login');
        if (context.mounted) {
          context.go('/login');
        }
      }
    } catch (e, stackTrace) {
      AppLogger.error('Error completing onboarding', e, stackTrace);

      // Fallback to login
      if (context.mounted) {
        context.go('/login');
      }
    }
  }
}
