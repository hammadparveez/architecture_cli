# architecture_cli

architecture_cli is a command-line interface tool that generates folder structures for different software architecture patterns in Dart. It provides guidelines for each folder's intended purpose to promote good design and separation of concerns.

## Supported Architectures

architecture_cli currently supports the following software architecture patterns:

- MVC (Model-View-Controller)
- MVVM (Model-View-ViewModel)
- MVP (Model-View-Presenter)
- Clean Architecture
- Provider Architecture
- GetX Architecture
- BLoC (Business Logic Component) Architecture
- BLoC only structure

## Installation

You can install architecture_cli from [pub.dev](https://pub.dev/packages/architecture_cli) by running the following command:
```console style="background-color: black;"
$ dart pub global activate architecture_cli
```
## Usage

To create a new architecture structure, run the following command:
$ architecture_cli --create [name]

-Alternatively, you can use the following commands:
$ folder_cli --create [name]
$ arch_cli --create [name]
Where [name] is the name of the desired architecture pattern. For example:




