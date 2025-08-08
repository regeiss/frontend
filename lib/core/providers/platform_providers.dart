import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../platform/platform_config.dart';

// Provider condicional baseado na plataforma
final stateManagerProvider = Provider<StateManager>((ref) {
  if (PlatformConfig.shouldUseStateManagement) {
    return MobileStateManager(ref);
  }
  return WebStateManager(ref);
});

// ignore: one_member_abstracts
abstract class StateManager {
  void dispose();
}

class MobileStateManager implements StateManager {
  
  MobileStateManager(this.ref);
  final Ref ref;
  
  @override
  void dispose() {
    // Limpeza específica para mobile
  }
}

class WebStateManager implements StateManager {
  
  WebStateManager(this.ref);
  final Ref ref;
  
  @override
  void dispose() {
    // Limpeza mínima para web - sem persistência
  }
}