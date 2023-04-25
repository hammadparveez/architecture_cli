part of 'architecture_cli.dart';

abstract class _ArchitectureGenerator {
  _generate();
  final hasLibDirectory = Directory('lib').existsSync();
  Directory? _generateDirectory(String path) {
    try {
      return Directory(hasLibDirectory ? 'lib/$path' : path)
        ..createSync(recursive: true);
    } on Exception catch (e) {
      print(
          "An error occurred while creating directory, Please make sure you have full access to the directory.");
    }
  }

  File? _generateFile(content, {required String architectureName}) {
    try {
      return File(
          hasLibDirectory ? 'lib/$architectureName.md' : '$architectureName.md')
        ..writeAsString(content);
    } on FileSystemException catch (e) {
      print(
          "Sorry! There was an error when generating a architecture guide file.");
    }
  }
}

class _BlocArchitectureGenerator extends _ArchitectureGenerator {
  _generate() {
    _generateDirectory('bloc');
    _generateFile(blocReadMe, architectureName: 'bloc');
    final subPaths = ['blocs', 'events', 'states'];
    for (final path in subPaths) _generateDirectory('bloc/$path');
  }
}

///
/// BLoC APP ARCHITECTURE
///
class _BlocAppArchitectureGenerator extends _ArchitectureGenerator {
  _generate() {
    _generateFile(blocAppReadMe, architectureName: 'bloc_app');
    _generateDirectory('bloc');
    _generateDirectory('models');
    _generateDirectory('repository');
    _generateDirectory('services');
    _generateDirectory('screens');
    _generateDirectory('widgets');
    _generateDirectory('utils');
    _generateDirectory('routes');

    final subPaths = ['blocs', 'events', 'states'];
    for (final path in subPaths) _generateDirectory('bloc/$path');
  }
}

///
/// Provider APP ARCHITECTURE
///
class _ProviderAppArchitectureGenerator extends _ArchitectureGenerator {
  _generate() {
    _generateFile(providerReadMe, architectureName: 'provider_app');
    _generateDirectory('provider');
    _generateDirectory('models');
    _generateDirectory('repository');
    _generateDirectory('services');
    _generateDirectory('screens');
    _generateDirectory('widgets');
    _generateDirectory('utils');
    _generateDirectory('routes');
  }
}

///
/// GetX APP ARCHITECTURE
///
class _GetXAppArchitectureGenerator extends _ArchitectureGenerator {
  _generate() {
    _generateFile(getXReadMe, architectureName: 'getx_app');
    _generateDirectory('models');
    _generateDirectory('bindings');
    _generateDirectory('controllers');
    _generateDirectory('repository');
    _generateDirectory('services');
    _generateDirectory('views');
    _generateDirectory('routes');
    _generateDirectory('utils');
  }
}

///
/// MVC APP ARCHITECTURE
///
class _MVCAppArchitectureGenerator extends _ArchitectureGenerator {
  _generate() {
    _generateFile(mvcReadMe, architectureName: 'mvc_app');
    _generateDirectory('models');
    _generateDirectory('controllers');
    _generateDirectory('views');
    _generateDirectory('utils');
  }
}

///
/// MVVM APP ARCHITECTURE
///
class _MVVMAppArchitectureGenerator extends _ArchitectureGenerator {
  _generate() {
    _generateFile(mvvmReadMe, architectureName: 'mvvm_app');
    _generateDirectory('models');
    _generateDirectory('viewmodels');
    _generateDirectory('views');
    _generateDirectory('utils');
    _generateDirectory('services');
  }
}

///
/// MVP APP ARCHITECTURE
///
class _MVPAppArchitectureGenerator extends _ArchitectureGenerator {
  _generate() {
    _generateFile(mvpReadMe, architectureName: 'mvp_app');
    _generateDirectory('models');
    _generateDirectory('presenter');
    _generateDirectory('views');
    _generateDirectory('utils');
  }
}

///
/// Clean App ARCHITECTURE
///
class _CleanAppArchitectureGenerator extends _ArchitectureGenerator {
  _generate() {
    _generateFile(cleanArchitectureReadMe, architectureName: 'clean_app');
    _generateDirectory('data');
    _generateDirectory('domain');
    _generateDirectory('presentation');
    _generateDirectory('services');
    _generateDirectory('utils');

    //Data -> repositories, datasources, models
    ['repositories', 'datasources', 'models'].forEach(
      (path) => _generateDirectory('data/$path'),
    );

    //Domain -> entities, repositories, usecases
    ['entities', 'repositories', 'usecases'].forEach(
      (path) => _generateDirectory('domain/$path'),
    );

    //Presentation -> pages, viewmodels, widgets
    ['pages', 'viewmodels', 'widgets'].forEach(
      (path) => _generateDirectory('presentation/$path'),
    );
  }
}
