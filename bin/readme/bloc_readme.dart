final blocReadMe = ''' 
Folder Structure
The project is organized into three main folders:

bloc
events
states
Each of these folders serves a specific purpose in the BLOC architecture and helps to keep the code organized and maintainable.

1. bloc
The bloc folder contains the BLOCs, which are responsible for managing the application's business logic. Each BLOC is responsible for a specific feature of the application and has its own set of events and states. The BLOCs are designed to be independent of the UI framework used in the application, which makes them easy to test and reuse.

2. events
The events folder contains the events that trigger changes in the application's state. An event is a simple object that represents a user action or system event. When an event is triggered, it is passed to the BLOC, which then decides how to handle it.

3. states
The states folder contains the states of the application. A state is a simple object that represents the current state of the application. When a BLOC receives an event, it updates the state accordingly. The UI then listens to changes in the state and updates the user interface accordingly.

Support
If you find this project helpful, consider buying me a coffee to show your support! Your contribution helps me to continue maintaining and improving this project.

Buy Me A Coffee
https://www.buymeacoffee.com/hammadparveez

Thank you for your support! 
    ''';
