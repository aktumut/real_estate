# real_estate

## Flutter Portfolio - Assessment Project (Feature-First Approach)

This project is a Flutter application developed as an assessment for DTT, a software development
company. The app is a real estate platform that allows users to browse and view houses retrieved
from a remote API.

## Top-Level Folders:

- `src`: Holds source of the code apart from `main.dart`
- `constants`: Stores app-wide constants.
- `exceptions`: Dedicated to exception classes for standardized error handling across the app.
- `extensions`: Contains custom extensions for existing classes.
- `features`: The core of the structure. Each sub-folder represents a feature within app.
- `routing`: Handles navigation, routing between features and bottom navigation widget.
- `utils`: Provides utility functions and classes used throughout the app.
- `widgets_common`: Stores reusable widgets that are used in more than one feature.

## Within the `features` Folder

Each feature within the app has its own subfolder, adhering to a "layers-inside-features"
organization, as detailed below:

- `presentation`: Contains all UI-related elements such as screens, widgets, and styles specific to
  the feature.
- `domain`: Stores domain models and logic, remaining independent of UI and application specifics.
- `data`: Manages data access, including interactions with external APIs or local storage.

### Example Feature Structure: Shop

To illustrate, let's examine the structure of an `auth` feature:

```plaintext
features/
  shop/
    presentation/
      house_detail/
        house_detail_page.dart
      widgets/
        house_detail_back_button.dart
        text_input_field.dart
    domain/
      house_model.dart
    data/
      shop_repository.dart
 ```

## Getting Started

<img src="https://raw.githubusercontent.com/aktumut/real_estate/dev-read-me/assets/read_me_images/screens.png?token=GHSAT0AAAAAACUOWE42QNASLJQ5LUAQFA4OZVGUVJA" width="700">

## Features

- **User Stories:** All user stories outlined in the DTT assessment have been implemented.
- **Splash Screen:** DTT branded splash screen.
- **House Overview:** Displays a list of houses, ordered by price, with search functionality (city
  and postal code).
- **Location Integration:** Displays the distance to each house from the user's location (with
  permission).
- **House Detail:** Shows detailed information about a house, including a map with a pin and
  directions.
- **Information Screen:** Provides information about the app and developers, with a link to DTT's
  website.
- **Bonus Features:**
    - **Dark Mode:** Switch between light and dark themes.
    - **Offline Support:** Browse houses offline using locally cached data. I recommend to test on real device due to
      connectivity plus package limitations.
    - **Wishlist:** Save favorite houses to a wishlist which is stored local.
    - **Animations:** Enhanced user experience with animations in the search page.
    - **Launcher Icon:** Implemented launcher icon for the app.

## Development Details

- **Flutter:** Developed using a recent stable version of Flutter (3.3.0 or above).
- **Platform Compatibility:** Compiles for Android and iOS.
- **State Management:** Riverpod.
- **Architecture:** Feature first layer approach.
- **Local Storage:** Isar database for caching and offline functionality.

## Known Issues

- **Web Support:** Web support is not yet implemented due to limitations with the Isar package.
- **Liking a House:** There is a known issue where liking a house refreshes on business layer the entire house list.
- **Location Services:** A more robust solution for permanently disabled location services could be
  implemented.
- **Offline support** Could have tested more scenarios.

## Hour Log

A detailed hour log is provided in the project, outlining the time spent on each feature and task.

## Future Improvements

- **Web Support:** Implement web support once Isar provides web compatibility.
- **Liking a House:** Fix the issue where liking a house refreshes the entire house list.
- **Location Services:** Implement a more robust solution for permanently disabled location
  services.
- **Error Handling:** Improve error handling and display user-friendly messages for various
  scenarios.
- **Advanced Search:** Add more advanced search filters, such as price range, number of bedrooms,
  and other criteria.
- **Accessibility:** Improve accessibility for users with disabilities.

- **Testing:** Implement more comprehensive unit and integration tests to ensure code quality.

## Running the Real Estate App

This guide assumes that you have Flutter installed on your machine. If not, please refer to
the [Flutter installation documentation](https://flutter.dev/docs/get-started/install) to set up
Flutter on your system.

### Prerequisites

Before running the app, make sure you have the following installed:

- Flutter SDK (Channel stable, latest version)
- Dart SDK (latest version)
- An IDE (like Android Studio, VS Code, IntelliJ)
- A compatible Android or iOS device or emulator

### Steps to Run

1. **Clone the Repository:**
   ```shell
   git clone https://github.com/aktumut/real_estate.git
   cd boring-app
    ```
2. **Get Packages:**
   Retrieve all the necessary packages by running the following command in your terminal:
   ```shell
   flutter pub get
    ```

4. **Launch Emulator/Simulator:**
   To run the app on an emulator or simulator, ensure that it is running before executing the app.
   For Android Studio
   and IntelliJ, you can start an emulator via the AVD Manager. For VS Code, you can start it from
   the Command Palette
   by searching for `Flutter: Launch Emulator`.

5. **Run the App:**
   With the emulator or simulator running, or a physical device connected, execute the following
   command to run the app:
   ```shell
   flutter run
     ```

## Testing

### Unit Tests

I only had time for building unit tests for shop repository fetch houses and house feed controller. In this we are able
to see writing a test for data layer and business layer.

## Conclusion

This Flutter real estate app showcases a solid foundation for a functional and user-friendly
application. With further development and improvements, it has the potential to become a valuable
tool for both real estate agents and potential homebuyers.


