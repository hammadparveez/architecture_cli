library architecture_cli;

import 'dart:io';

import 'package:args/args.dart';
import 'package:path/path.dart';

part 'architecture_generator.dart';

void main(List<String> arguments) {
  var parser = ArgParser()
    ..addCommand(
        'create',
        ArgParser()
          ..addOption('type',
              abbr: 't', help: 'The type of folder structure to generate'));
  final results = parser.parse(arguments);
  if (results.command?.name == 'create') {
    final type = results.command!.rest.first;
    createArchitecture(type.toLowerCase());
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
  }

  architecture?._generate();
}
