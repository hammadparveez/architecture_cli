# architecture_cli

architecture_cli is a command-line interface tool that generates folder structures for different software architecture patterns in Dart. It provides guidelines for each folder's intended purpose to promote good design and separation of concerns.

> **Note:** If the 'lib' directory exists, the architecture will be created inside the 'lib', otherwise it will be created in the root directory.

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
dart pub global activate architecture_cli
```
## Usage

To create a new architecture structure, run the following command:
```console style="background-color: black;"
architecture_cli --create [name]
```

- Alternatively, you can use the following commands:
```console style="background-color: black;"
folder_cli --create [name]
```
```console style="background-color: black;"
arch_cli --create [name]
```
Where [name] is the name of the desired architecture pattern. For Example:

```console style="background-color: black;"
architecture_cli --create mvc
```

After generating the architecture structure, you will find a Markdown file in the generated folder structure that provides guidelines for each folder's intended purpose.

## Examples

Here are some examples of the commands you can use to generate different architecture patterns:

- Generate a GetX architecture structure:

```console style="background-color: black;"
architecture_cli --create getx
```

- Generate a Clean Architecture structure:

```console style="background-color: black;"
architecture_cli --create clean_architecture
```

- Generate an MVP architecture structure:

```console style="background-color: black;"
architecture_cli --create mvp
```

- Generate a Provider architecture structure:

```console style="background-color: black;"
architecture_cli --create provider
```
- Generate a BLoC structure:

```console style="background-color: black;"
architecture_cli --create bloc
```

- Generate a BLoC App structure:

```console style="background-color: black;"
architecture_cli --create bloc_app
```

## Support

If you find this package helpful, please consider buying me a coffee!

[![Buy Me A Coffee](https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png)](https://www.buymeacoffee.com/hammadparveez)

Thank you for your support!

— Hammad Parveez

<a href="https://github.com/hammadparveez/" ><img src="https://avatars.githubusercontent.com/u/33895363?v=4" alt="Profile Picture" style="width: 100px; height: 100px; border-radius: 50%;"> </a>
