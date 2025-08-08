// Arquivo: tool/setup_web.dart
// Execute com: dart run tool/setup_web.dart

// ignore_for_file: avoid_print

import 'dart:io';
import 'package:http/http.dart' as http;

const String sqlite3WasmUrl =
    'https://github.com/simolus3/drift/releases/download/drift-2.20.0/sqlite3.wasm';
const String driftWorkerUrl =
    'https://github.com/simolus3/drift/releases/download/drift-2.20.0/drift_worker.dart.js';

void main() async {
  print('🚀 Configurando Drift para Web...');

  final webDir = Directory('web');
  // ignore: avoid_slow_async_io
  if (!await webDir.exists()) {
    await webDir.create();
    print('📁 Criado diretório web/');
  }

  try {
    // Baixar sqlite3.wasm
    print('⬇️ Baixando sqlite3.wasm...');
    final sqlite3Response = await http.get(Uri.parse(sqlite3WasmUrl));
    if (sqlite3Response.statusCode == 200) {
      await File('web/sqlite3.wasm').writeAsBytes(sqlite3Response.bodyBytes);
      print('✅ sqlite3.wasm baixado com sucesso');
    } else {
      print('❌ Erro ao baixar sqlite3.wasm: ${sqlite3Response.statusCode}');
    }

    // Baixar drift_worker.dart.js
    print('⬇️ Baixando drift_worker.dart.js...');
    final workerResponse = await http.get(Uri.parse(driftWorkerUrl));
    if (workerResponse.statusCode == 200) {
      await File('web/drift_worker.dart.js')
          .writeAsBytes(workerResponse.bodyBytes);
      print('✅ drift_worker.dart.js baixado com sucesso');
    } else {
      print(
          '❌ Erro ao baixar drift_worker.dart.js: ${workerResponse.statusCode}');
    }

    print('🎉 Configuração Web concluída!');
    print('📝 Próximos passos:');
    print('   1. flutter pub get');
    print('   2. dart run build_runner build --delete-conflicting-outputs');
    print('   3. flutter run -d chrome');
  } catch (e) {
    print('❌ Erro durante configuração: $e');
    print('');
    print('🔧 Solução manual:');
    print('   1. Crie o diretório web/ se não existir');
    print('   2. Baixe manualmente:');
    print('      - $sqlite3WasmUrl');
    print('      - $driftWorkerUrl');
    print('   3. Coloque os arquivos em web/');
  }
}
