final blocAppReadMe = ''' 
Folder Structure
The project is organized into several folders:

Bloc
Models
Repository
Services
Screens
Widgets
Utils
Routes
Each of these folders serves a specific purpose and helps to keep the code organized and maintainable.

1. Bloc
The Bloc folder contains the BLOCs, which are responsible for managing the application's business logic. Each BLOC is responsible for a specific feature of the application and has its own set of events and states. The BLOCs are designed to be independent of the UI framework used in the application, which makes them easy to test and reuse.

2. Models
The Models folder contains the data models used by the application. These models are used to represent data retrieved from APIs or databases and are typically used by the BLOCs to manage the application's state.

3. Repository
The Repository folder contains classes that are responsible for fetching data from APIs or databases. The repositories abstract away the details of how the data is retrieved and provide a clean interface for the BLOCs to use.

4. Services
The Services folder contains classes that handle communication with external services, such as APIs or push notification services.

5. Screens
The Screens folder contains the UI screens of the application. Each screen is typically associated with a single BLOC and displays the data managed by that BLOC.

6. Widgets
The Widgets folder contains the UI widgets that are used throughout the application. These widgets are designed to be reusable and can be used in multiple screens.

7. Utils
The Utils folder contains utility classes and functions that are used throughout the application.

8. Routes
The Routes folder contains the application's navigation system. It defines the routes that are available in the application and provides a clean interface for navigating between screens.

Support
If you find this project helpful, consider buying me a coffee to show your support! Your contribution helps me to continue maintaining and improving this project.

Buy Me A Coffee
https://www.buymeacoffee.com/hammadparveez

Thank you for your support! 
    ''';
