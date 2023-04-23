part of 'architecture_cli.dart';

abstract class _ArchitectureGenerator {
  _generate();
}

class _BlocArchitectureGenerator implements _ArchitectureGenerator {
  _generate() {
    final dir = Directory('bloc')..createSync(recursive: true);
    final subPaths = ['blocs', 'events', 'states'];
    for (final i in subPaths) {
      Directory(join(dir.path, i))..createSync();
    }
  }
}

///
/// BLoC APP ARCHITECTURE
///
class _BlocAppArchitectureGenerator implements _ArchitectureGenerator {
  _generate() {
    final dir = Directory('bloc')..createSync(recursive: true);
    Directory('models')..createSync(recursive: true);
    Directory('repository')..createSync(recursive: true);
    Directory('services')..createSync(recursive: true);
    Directory('screens')..createSync(recursive: true);
    Directory('widgets')..createSync(recursive: true);
    Directory('utils')..createSync(recursive: true);
    Directory('routes')..createSync(recursive: true);

    final subPaths = ['blocs', 'events', 'states'];
    for (final i in subPaths) {
      Directory(join(dir.path, i))..createSync();
    }
  }
}

///
/// Provider APP ARCHITECTURE
///
class _ProviderAppArchitectureGenerator implements _ArchitectureGenerator {
  _generate() {
    Directory('provider')..createSync(recursive: true);
    Directory('models')..createSync(recursive: true);
    Directory('repository')..createSync(recursive: true);
    Directory('services')..createSync(recursive: true);
    Directory('screens')..createSync(recursive: true);
    Directory('widgets')..createSync(recursive: true);
    Directory('utils')..createSync(recursive: true);
    Directory('routes')..createSync(recursive: true);
  }
}

///
/// GetX APP ARCHITECTURE
///
class _GetXAppArchitectureGenerator implements _ArchitectureGenerator {
  _generate() {
    Directory('models')..createSync(recursive: true);
    Directory('bindings')..createSync(recursive: true);
    Directory('controllers')..createSync(recursive: true);
    Directory('repository')..createSync(recursive: true);
    Directory('services')..createSync(recursive: true);
    Directory('views')..createSync(recursive: true);
    Directory('routes')..createSync(recursive: true);
    Directory('utils')..createSync(recursive: true);
  }
}

///
/// MVC APP ARCHITECTURE
///
class _MVCAppArchitectureGenerator implements _ArchitectureGenerator {
  _generate() {
    Directory('models')..createSync(recursive: true);
    Directory('controllers')..createSync(recursive: true);
    Directory('views')..createSync(recursive: true);
    Directory('utils')..createSync(recursive: true);
  }
}

///
/// MVVM APP ARCHITECTURE
///
class _MVVMAppArchitectureGenerator implements _ArchitectureGenerator {
  _generate() {
    Directory('models')..createSync(recursive: true);
    Directory('viewmodels')..createSync(recursive: true);
    Directory('views')..createSync(recursive: true);
    Directory('utils')..createSync(recursive: true);
    Directory('services')..createSync(recursive: true);
  }
}

///
/// MVP APP ARCHITECTURE
///
class _MVPAppArchitectureGenerator implements _ArchitectureGenerator {
  _generate() {
    Directory('models')..createSync(recursive: true);
    Directory('presenter')..createSync(recursive: true);
    Directory('views')..createSync(recursive: true);
    Directory('utils')..createSync(recursive: true);
  }
}
