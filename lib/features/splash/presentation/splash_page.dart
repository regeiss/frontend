import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/config/env.dart';
import '../../../../core/storage/secure_storage.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../core/config/logging/app_logger.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0, 0.6, curve: Curves.easeOut),
    ));

    _scaleAnimation = Tween<double>(
      begin: 0.8,
      end: 1,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0.2, 0.8, curve: Curves.elasticOut),
    ));

    _animationController.forward();
    _initializeApp();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const isWeb = kIsWeb;
    final screenWidth = MediaQuery.of(context).size.width;
    final isLargeScreen = screenWidth > 768;

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppColors.primaryGradient,
        ),
        child: Stack(
          children: [
            // Background decorative elements for web
            if (isWeb) _buildWebBackground(),

            // Main content
            Center(
              child: AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) => FadeTransition(
                  opacity: _fadeAnimation,
                  child: ScaleTransition(
                    scale: _scaleAnimation,
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: isLargeScreen ? 600 : double.infinity,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: isLargeScreen ? 48 : 24,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Logo with enhanced design
                          _buildLogo(isLargeScreen),

                          SizedBox(height: isLargeScreen ? 48 : 32),

                          // App Name with enhanced typography
                          _buildAppName(isLargeScreen),

                          SizedBox(height: isLargeScreen ? 16 : 8),

                          // Subtitle with better styling
                          _buildSubtitle(isLargeScreen),

                          SizedBox(height: isLargeScreen ? 80 : 64),

                          // Enhanced loading indicator
                          _buildLoadingIndicator(),

                          SizedBox(height: isLargeScreen ? 32 : 24),

                          _buildLoadingText(),

                          const Spacer(),

                          // Enhanced version info
                          _buildVersionInfo(isLargeScreen),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWebBackground() => Positioned.fill(
        child: CustomPaint(
          painter: WebBackgroundPainter(),
        ),
      );

  Widget _buildLogo(bool isLargeScreen) => Container(
        width: isLargeScreen ? 160 : 120,
        height: isLargeScreen ? 160 : 120,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(isLargeScreen ? 30 : 20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.15),
              blurRadius: isLargeScreen ? 30 : 20,
              offset: const Offset(0, 15),
              spreadRadius: 2,
            ),
          ],
        ),
        child: Icon(
          Icons.people_outline,
          size: isLargeScreen ? 80 : 60,
          color: AppColors.primaryColor,
        ),
      );

  Widget _buildAppName(bool isLargeScreen) => Text(
        Env.appName,
        style: TextStyle(
          fontSize: isLargeScreen ? 36 : 28,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          letterSpacing: 1.5,
          shadows: [
            Shadow(
              color: Colors.black.withValues(alpha: 0.3),
              offset: const Offset(0, 2),
              blurRadius: 4,
            ),
          ],
        ),
        textAlign: TextAlign.center,
      );

  Widget _buildSubtitle(bool isLargeScreen) => Text(
        'Sistema de Cadastro Unificado',
        style: TextStyle(
          fontSize: isLargeScreen ? 20 : 16,
          color: Colors.white.withValues(alpha: 0.95),
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
        ),
        textAlign: TextAlign.center,
      );

  Widget _buildLoadingIndicator() => Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.2),
            width: 1,
          ),
        ),
        child: const CircularLoadingAnimation(),
      );

  Widget _buildLoadingText() => Text(
        'Carregando...',
        style: TextStyle(
          fontSize: 16,
          color: Colors.white.withValues(alpha: 0.9),
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
        ),
      );

  Widget _buildVersionInfo(bool isLargeScreen) => Padding(
        padding: EdgeInsets.only(bottom: isLargeScreen ? 48 : 32),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.2),
              width: 1,
            ),
          ),
          child: Text(
            'Versão ${Env.appVersion}',
            style: TextStyle(
              fontSize: isLargeScreen ? 16 : 14,
              color: Colors.white.withValues(alpha: 0.8),
              fontWeight: FontWeight.w400,
              letterSpacing: 0.3,
            ),
          ),
        ),
      );

  Future<void> _initializeApp() async {
    try {
      AppLogger.info('Initializing app from splash screen');

      // Minimum splash duration for better UX
      await Future.delayed(const Duration(milliseconds: 2000));

      // Check if it's the first launch
      final isFirstLaunch = await SecureStorage.isFirstLaunch();

      if (isFirstLaunch) {
        AppLogger.info('First launch detected, navigating to onboarding');
        if (mounted) {
          context.go('/onboarding');
        }
        return;
      }

      // Check if user is logged in
      final isLoggedIn = await SecureStorage.isLoggedIn();

      if (isLoggedIn) {
        AppLogger.info('User is logged in, navigating to dashboard');
        if (mounted) {
          context.go('/dashboard');
        }
      } else {
        AppLogger.info('User is not logged in, navigating to login');
        if (mounted) {
          context.go('/login');
        }
      }
    } catch (e, stackTrace) {
      AppLogger.error('Error during app initialization', e, stackTrace);

      // Fallback to login on error
      if (mounted) {
        context.go('/login');
      }
    }
  }
}

// Custom circular loading animation
class CircularLoadingAnimation extends StatefulWidget {
  const CircularLoadingAnimation({super.key});

  @override
  State<CircularLoadingAnimation> createState() =>
      _CircularLoadingAnimationState();
}

class _CircularLoadingAnimationState extends State<CircularLoadingAnimation>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _rotationAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    ));

    _scaleAnimation = Tween<double>(
      begin: 0.8,
      end: 1.2,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
        animation: _controller,
        builder: (context, child) => Transform.rotate(
          angle: _rotationAnimation.value * 2 * 3.14159,
          child: Transform.scale(
            scale: _scaleAnimation.value,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withValues(alpha: 0.8),
                    Colors.white.withValues(alpha: 0.3),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}

// Custom painter for web background decoration
class WebBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withValues(alpha: 0.05)
      ..style = PaintingStyle.fill;

    // Draw decorative circles
    canvas
      ..drawCircle(
        Offset(size.width * 0.1, size.height * 0.2),
        50,
        paint,
      )
      ..drawCircle(
        Offset(size.width * 0.9, size.height * 0.8),
        80,
        paint,
      )
      ..drawCircle(
        Offset(size.width * 0.8, size.height * 0.1),
        40,
        paint,
      );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
