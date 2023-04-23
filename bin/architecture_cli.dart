library architecture_cli;

import 'package:args/args.dart';

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
    if (type == 'bloc') generateBlocStructure();
  }
}

void generateBlocStructure() {}
