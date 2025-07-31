// Implementação mock do path_provider para web
// O path_provider não funciona no web, então criamos esta implementação

// ignore_for_file: prefer_expression_function_bodies


/// Mock implementation of Directory for web
class Directory {
  
  Directory(this.path);
  final String path;
  
  bool existsSync() => true; // No web, sempre assumimos que existe
  
  @override
  String toString() => path;
}

/// Retorna um diretório mock para web
/// No web, os dados são armazenados no IndexedDB, não no sistema de arquivos
Future<Directory> getApplicationDocumentsDirectory() async {
  // No web, retornamos um path mock já que não usamos sistema de arquivos real
  return Directory('/web_storage/documents');
}

/// Outras funções mock que podem ser necessárias
Future<Directory> getTemporaryDirectory() async {
  return Directory('/web_storage/temp');
}

Future<Directory> getApplicationSupportDirectory() async {
  return Directory('/web_storage/support');
}