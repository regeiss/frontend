import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/config/env.dart';
import '../../../../core/storage/secure_storage.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../core/config/logging/app_logger.dart';

class SplashPage extends HookConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      _initializeApp(context);
      return null;
    }, []);

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppColors.primaryGradient,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.people_outline,
                  size: 60,
                  color: AppColors.primaryColor,
                ),
              ),
              
              const SizedBox(height: 32),
              
              // App Name
              const Text(
                Env.appName,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.2,
                ),
                textAlign: TextAlign.center,
              ),
              
              const SizedBox(height: 8),
              
              // Subtitle
              Text(
                'Sistema de Cadastro Unificado',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white.withOpacity(0.9),
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              
              const SizedBox(height: 64),
              
              // Loading indicator
              const SpinKitWave(
                color: Colors.white,
                size: 40,
              ),
              
              const SizedBox(height: 24),
              
              Text(
                'Carregando...',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white.withOpacity(0.8),
                  fontWeight: FontWeight.w400,
                ),
              ),
              
              const Spacer(),
              
              // Version
              Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Text(
                  'Versão ${Env.appVersion}',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white.withOpacity(0.7),
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _initializeApp(BuildContext context) async {
    try {
      AppLogger.info('Initializing app from splash screen');
      
      // Minimum splash duration for better UX
      await Future.delayed(const Duration(milliseconds: 2000));
      
      // Check if it's the first launch
      final isFirstLaunch = await SecureStorage.isFirstLaunch();
      
      if (isFirstLaunch) {
        AppLogger.info('First launch detected, navigating to onboarding');
        if (context.mounted) {
          context.go('/onboarding');
        }
        return;
      }
      
      // Check if user is logged in
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
      AppLogger.error('Error during app initialization', e, stackTrace);
      
      // Fallback to login on error
      if (context.mounted) {
        context.go('/login');
      }
    }
  }
}