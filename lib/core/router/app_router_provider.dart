import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/auth/presentation/application/auth_state.dart';
import '../../features/auth/presentation/login_page.dart';

import '../../features/demanda/presentation/dashboard/presentation/dashboard_page.dart';
import '../../features/demanda/presentation/demanda_form_page.dart';
import '../../features/demanda/presentation/demanda_list_page.dart';
import '../../features/demanda/presentation/membros/presentation/membro_form_page.dart';
import '../../features/demanda/presentation/membros/presentation/membros_list_page.dart';
import '../../features/demanda/presentation/responsaveis/presentation/responsaveis_detail_page.dart';
import '../../features/demanda/presentation/responsaveis/presentation/responsaveis_form_page.dart';
import '../../features/demanda/presentation/responsaveis/presentation/responsaveis_list_page.dart';

import '../../features/onboarding/presentation/onboarding_page.dart';
import '../../features/splash/presentation/splash_page.dart';
import '../config/logging/app_logger.dart';
import '../storage/secure_storage.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authNotifierProvider);
  
  return GoRouter(
    initialLocation: '/splash',
    debugLogDiagnostics: true,
    redirect: (context, state) async {
      final isFirstLaunch = await SecureStorage.isFirstLaunch();
      final isLoggedIn = await SecureStorage.isLoggedIn();
      final location = state.uri.path;
      
      AppLogger.debug('Router redirect - Location: $location, FirstLaunch: $isFirstLaunch, LoggedIn: $isLoggedIn');
      
      // Splash screen handling
      if (location == '/splash') {
        if (isFirstLaunch) {
          return '/onboarding';
        } else if (isLoggedIn) {
          return '/dashboard';
        } else {
          return '/login';
        }
      }
      
      // Onboarding handling
      if (location == '/onboarding') {
        if (!isFirstLaunch) {
          return isLoggedIn ? '/dashboard' : '/login';
        }
        return null;
      }
      
      // Authentication handling
      if (!isLoggedIn && location != '/login' && location != '/onboarding') {
        return '/login';
      }
      
      if (isLoggedIn && location == '/login') {
        return '/dashboard';
      }
      
      return null;
    },
    routes: [
      // Splash
      GoRoute(
        path: '/splash',
        name: 'splash',
        builder: (context, state) => const SplashPage(),
      ),
      
      // Onboarding
      GoRoute(
        path: '/onboarding',
        name: 'onboarding',
        builder: (context, state) => const OnboardingPage(),
      ),
      
      // Auth
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginPage(),
      ),
      
      // Dashboard
      GoRoute(
        path: '/dashboard',
        name: 'dashboard',
        builder: (context, state) => const DashboardPage(),
      ),
      
      // Responsáveis
      GoRoute(
        path: '/responsaveis',
        name: 'responsaveis',
        builder: (context, state) => const ResponsaveisListPage(),
        routes: [
          GoRoute(
            path: '/create',
            name: 'responsavel-create',
            builder: (context, state) => const ResponsavelFormPage(),
          ),
          GoRoute(
            path: '/:cpf',
            name: 'responsavel-detail',
            builder: (context, state) {
              final cpf = state.pathParameters['cpf']!;
              return ResponsavelDetailPage(cpf: cpf);
            },
            routes: [
              GoRoute(
                path: '/edit',
                name: 'responsavel-edit',
                builder: (context, state) {
                  final cpf = state.pathParameters['cpf']!;
                  return ResponsavelFormPage(cpf: cpf);
                },
              ),
            ],
          ),
        ],
      ),
      
      // Membros
      GoRoute(
        path: '/membros',
        name: 'membros',
        builder: (context, state) => const MembrosListPage(),
        routes: [
          GoRoute(
            path: '/create',
            name: 'membro-create',
            builder: (context, state) {
              final cpfResponsavel = state.uri.queryParameters['cpf_responsavel'];
              return MembroFormPage(cpfResponsavel: cpfResponsavel);
            },
          ),
          GoRoute(
            path: '/:cpf/edit',
            name: 'membro-edit',
            builder: (context, state) {
              final cpf = state.pathParameters['cpf']!;
              return MembroFormPage(cpf: cpf);
            },
          ),
        ],
      ),
      
      // Demandas
      GoRoute(
        path: '/demandas',
        name: 'demandas',
        builder: (context, state) => const DemandasListPage(),
        routes: [
          GoRoute(
            path: '/create',
            name: 'demanda-create',
            builder: (context, state) {
              final cpfResponsavel = state.uri.queryParameters['cpf_responsavel'];
              final tipo = state.uri.queryParameters['tipo'];
              return DemandaFormPage(
                cpfResponsavel: cpfResponsavel,
                tipo: tipo,
              );
            },
          ),
          GoRoute(
            path: '/:id/edit',
            name: 'demanda-edit',
            builder: (context, state) {
              final id = int.parse(state.pathParameters['id']!);
              return DemandaFormPage(id: id);
            },
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              size: 64,
              color: Colors.red,
            ),
            const SizedBox(height: 16),
            Text(
              'Página não encontrada',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              'A página "${state.uri.path}" não existe.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => context.go('/dashboard'),
              child: const Text('Voltar ao início'),
            ),
          ],
        ),
      ),
    ),
  );
});