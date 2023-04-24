library architecture_cli;

import 'dart:io';

import 'package:args/args.dart';

part 'architecture_generator.dart';

void main(List<String> arguments) {
  var parser = ArgParser()
    ..addOption('create',
        abbr: 'c',
        help:
            'Creates folder structure\n[mvc,mvvm,mvp,getx,bloc,bloc_app,provider]\nExample: architecture_cli create mvc\nor Example: folder_cli create mvc\nor Example: arch_cli create mvc')
    ..addFlag('help', negatable: false, abbr: 'h');
  try {
    final results = parser.parse(arguments);
    if (results['create'] != null) {
      createArchitecture(results['create'].toLowerCase());
    } else if (results['help']) {
      print(parser.usage);
    } else if (results.arguments.isEmpty) {
      print('''
    Please provide a desired architecture
    e.g:  architecture_cli create mvc
    e.g:  architecture_cli create bloc_app
    e.g:  architecture_cli create getx
    Instead of architecture_cli , you use use
    folder_cli or arch_cli as well
    e.g: folder_cli create mvvm
    ''');
    }
  } on FormatException catch (e) {
    print('''
    Invalid architecture was provided
    e.g:  architecture_cli create mvc
    e.g:  architecture_cli create bloc_app
    e.g:  architecture_cli create getx
    Instead of architecture_cli , you use use
    folder_cli or arch_cli as well
    e.g: folder_cli create mvvm
    ''');
  }
}

void createArchitecture(String type) {
  _ArchitectureGenerator? architecture;
  switch (type) {
    case 'bloc':
      architecture = _BlocArchitectureGenerator();
      break;
    case 'bloc_app':
      architecture = _BlocAppArchitectureGenerator();
      break;
    case 'provider_app':
    case 'provider':
      architecture = _ProviderAppArchitectureGenerator();
      break;
    case 'getx_app':
    case 'getx':
      architecture = _GetXAppArchitectureGenerator();
      break;
    case 'mvc_app':
    case 'mvc':
      architecture = _MVCAppArchitectureGenerator();
      break;
    case 'mvvm_app':
    case 'mvvm':
      architecture = _MVVMAppArchitectureGenerator();
      break;
    case 'mvp_app':
    case 'mvp':
      architecture = _MVPAppArchitectureGenerator();
      break;
    case 'clean_app':
    case 'clean_architecture':
    case 'clean_arch_app':
      architecture = _CleanAppArchitectureGenerator();
      break;
    default:
      print("Invalid architecture defined");
      break;
  }

  architecture?._generate();
}
