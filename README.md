# 📱 Cadastro Unificado - Flutter App

Sistema de Cadastro Unificado desenvolvido em Flutter para mobile e web, integrado com API Django Backend.

## 🎯 Visão Geral

Este aplicativo permite o gerenciamento completo de responsáveis, membros e suas demandas através de uma interface moderna e responsiva. Suporta múltiplos tipos de demandas (saúde, educação, habitação, meio ambiente e internas) com sincronização em tempo real.

## ✨ Funcionalidades

- 🔐 **Autenticação JWT** com refresh token automático
- 👥 **Gestão de Responsáveis** - CRUD completo
- 👨‍👩‍👧‍👦 **Gestão de Membros** - vinculados aos responsáveis
- 📋 **Múltiplos Tipos de Demandas**:
  - Saúde
  - Educação
  - Habitação
  - Meio Ambiente
  - Demandas Internas
- 📊 **Dashboard** com estatísticas e atividades recentes
- 🔄 **Sincronização** com persistência local (Drift)
- 🌐 **Suporte Web e Mobile** - design responsivo
- 🎨 **Tema Claro/Escuro** adaptativo
- 📱 **Onboarding** para novos usuários
- 🔔 **Notificações** integradas
- 📈 **Analytics e Crashlytics** (Firebase)

## 🏗️ Arquitetura

O projeto segue **Clean Architecture** com estrutura de features:

```
lib/
├── core/                    # Funcionalidades centrais
│   ├── config/             # Configurações e environment
│   ├── database/           # Banco local (Drift)
│   ├── logging/            # Sistema de logs
│   ├── network/            # Cliente HTTP (Dio)
│   ├── notification/       # Serviços de notificação
│   ├── router/             # Navegação (GoRouter)
│   ├── storage/            # Armazenamento seguro
│   ├── theme/              # Temas e cores
│   └── utils/              # Utilitários gerais
├── features/               # Features do aplicativo
│   ├── auth/              # Autenticação
│   ├── dashboard/         # Dashboard principal
│   ├── responsaveis/      # Gestão de responsáveis
│   ├── membros/           # Gestão de membros
│   ├── demandas/          # Gestão de demandas
│   ├── onboarding/        # Introdução do app
│   └── splash/            # Tela inicial
└── firebase_options.dart   # Configuração Firebase
```

Cada feature segue a estrutura:
- `domain/` - Entidades e casos de uso
- `data/` - Repositórios e fontes de dados
- `application/` - Notifiers (Riverpod)
- `presentation/` - UI (páginas e widgets)

## 🛠️ Tecnologias

### Core
- **Flutter 3.16+** - Framework UI
- **Dart 3.2+** - Linguagem
- **Riverpod** - Gerenciamento de estado
- **Hooks** - Lógica de widgets
- **GoRouter** - Navegação declarativa

### Network & Data
- **Dio** - Cliente HTTP
- **Drift** - Banco de dados local
- **Connectivity Plus** - Verificação de conectividade
- **Shared Preferences** - Armazenamento simples

### UI/UX
- **Google Fonts** - Tipografia
- **Material Design 3** - Design system
- **Flutter Form Builder** - Formulários
- **Introduction Screen** - Onboarding
- **Flutter Spinkit** - Loading indicators

### Development
- **Freezed** - Geração de código immutable
- **JSON Annotation** - Serialização
- **Envied** - Variáveis de ambiente
- **Build Runner** - Geração de código

### Testing & Quality
- **Flutter Test** - Testes unitários
- **Mocktail** - Mocks para testes
- **Flutter Lints** - Análise de código

### Firebase
- **Analytics** - Métricas de uso
- **Crashlytics** - Relatórios de crash
- **Core** - Configuração base

## 🚀 Configuração e Instalação

### Pré-requisitos

- **Flutter SDK 3.16+**
- **Dart SDK 3.2+**
- **Android Studio / VS Code**
- **Git**

### 1. Clone o Repositório

```bash
git clone https://github.com/seu-usuario/cadastro-unificado-flutter.git
cd cadastro-unificado-flutter
```

### 2. Configurar Variáveis de Ambiente

Crie o arquivo `.env` na raiz do projeto:

```env
# API Configuration
API_BASE_URL=http://10.13.65.37:8001/api/v1
API_TIMEOUT=30000

# Environment
ENVIRONMENT=development
DEBUG_MODE=true

# Firebase
FIREBASE_PROJECT_ID=cadastro-unificado
FIREBASE_APP_ID=1:123456789:android:abcdef

# Features
ENABLE_ANALYTICS=true
ENABLE_CRASHLYTICS=true
ENABLE_LOGGING=true

# App Configuration
APP_NAME=Cadastro Unificado
APP_VERSION=1.0.0
```

### 3. Instalar Dependências

```bash
flutter pub get
```

### 4. Gerar Código

```bash
dart run build_runner build --delete-conflicting-outputs
```

### 5. Configurar Firebase (Opcional)

```bash
# Instalar FlutterFire CLI
dart pub global activate flutterfire_cli

# Configurar projeto Firebase
flutterfire configure
```

### 6. Executar o Aplicativo

```bash
# Desenvolvimento
flutter run

# Web
flutter run -d chrome

# Release
flutter run --release
```

## 📝 Scripts Úteis

```bash
# Gerar código
dart run build_runner build

# Limpar e gerar
dart run build_runner build --delete-conflicting-outputs

# Watch mode (desenvolvimento)
dart run build_runner watch

# Gerar ícones
dart run flutter_launcher_icons

# Gerar splash screen
dart run flutter_native_splash:create

# Análise de código
flutter analyze

# Testes
flutter test

# Build para produção
flutter build apk --release
flutter build web --release
```

## 🔧 Configuração do Backend

O app conecta com a API Django. Configure as URLs no arquivo `.env`:

```env
API_BASE_URL=http://localhost:8001/api/v1  # Desenvolvimento
# API_BASE_URL=https://sua-api.com/api/v1  # Produção
```

### Endpoints Utilizados

- `POST /auth/login/` - Login
- `POST /auth/register/` - Registro
- `POST /auth/refresh/` - Refresh token
- `GET /auth/profile/` - Perfil do usuário
- `GET /cadastro/responsaveis/` - Lista responsáveis
- `POST /cadastro/responsaveis/` - Criar responsável
- `GET /cadastro/membros/` - Lista membros
- `GET /cadastro/demandas-*/` - Demandas por tipo

## 📱 Funcionalidades por Plataforma

### Mobile (Android/iOS)
- ✅ Splash screen nativa
- ✅ Notificações push
- ✅ Biometria (planejado)
- ✅ Camera e galeria (planejado)
- ✅ Compartilhamento (planejado)

### Web
- ✅ PWA support (planejado)
- ✅ Responsivo completo
- ✅ Suporte a teclado
- ✅ Deep linking

### Desktop (Windows/macOS/Linux)
- ✅ Janelas redimensionáveis
- ✅ Menu nativo (planejado)
- ✅ Atalhos de teclado (planejado)

## 🎨 Design System

### Cores Principais
- **Primary**: Blue 600 (#2563EB)
- **Secondary**: Emerald 600 (#059669)
- **Success**: Emerald 600 (#059669)
- **Warning**: Amber 600 (#D97706)
- **Error**: Red 600 (#DC2626)

### Tipografia
- **Fonte**: Inter (Google Fonts)
- **Tamanhos**: 12px, 14px, 16px, 18px, 20px, 24px, 28px

### Componentes
- Cards com bordas arredondadas (12px-16px)
- Botões com altura mínima de 56px
- Campos de texto com padding interno de 16px
- Sombras sutis para elevação

## 🧪 Testes

```bash
# Executar todos os testes
flutter test

# Testes com coverage
flutter test --coverage

# Testes específicos
flutter test test/features/auth/
```

### Estrutura de Testes
```
test/
├── core/           # Testes do core
├── features/       # Testes das features
├── helpers/        # Helpers para testes
└── mocks/          # Mocks reutilizáveis
```

## 🚀 Deploy

### Android
```bash
# Build APK
flutter build apk --release

# Build App Bundle
flutter build appbundle --release
```

### iOS
```bash
# Build iOS
flutter build ios --release
```

### Web
```bash
# Build Web
flutter build web --release

# Deploy para Firebase Hosting
firebase deploy --only hosting
```

## 🤝 Contribuição

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/nova-feature`)
3. Commit suas mudanças (`git commit -am 'Adiciona nova feature'`)
4. Push para a branch (`git push origin feature/nova-feature`)
5. Abra um Pull Request

### Padrões de Código

- Use **Dart conventions**
- Siga **Clean Architecture**
- Mantenha **cobertura de testes > 80%**
- Use **Conventional Commits**
- Documente **APIs públicas**

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para detalhes.

## 📞 Suporte

- **Email**: suporte@cadastrounificado.com
- **Issues**: [GitHub Issues](https://github.com/seu-usuario/cadastro-unificado-flutter/issues)
- **Documentação**: [Wiki do Projeto](https://github.com/seu-usuario/cadastro-unificado-flutter/wiki)

## 📈 Roadmap

### v1.1.0
- [ ] Notificações push
- [ ] Modo offline completo
- [ ] Relatórios avançados
- [ ] Exportação de dados

### v1.2.0
- [ ] Biometria
- [ ] Compartilhamento
- [ ] Múltiplos idiomas
- [ ] Temas personalizados

### v2.0.0
- [ ] Módulo de agenda
- [ ] Chat integrado
- [ ] API GraphQL
- [ ] Micro-frontends

---

**Desenvolvido com ❤️ usando Flutter**