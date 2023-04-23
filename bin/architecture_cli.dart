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
      architecture = _ProviderAppArchitectureGenerator();
      break;
    case 'getx_app':
      architecture = _GetXAppArchitectureGenerator();
      break;
    case 'mvc_app':
      architecture = _MVCAppArchitectureGenerator();
      break;
    case 'mvvm_app':
      architecture = _MVVMAppArchitectureGenerator();
      break;
    case 'mvp_app':
      architecture = _MVPAppArchitectureGenerator();
      break;
  }

  architecture?._generate();
}
