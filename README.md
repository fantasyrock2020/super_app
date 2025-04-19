# Weather Flutter App

## About
A simple Weather Forecast Application built with **Flutter**.
It fetches real-time weather data and displays a **beautiful animated UI**.

---

## Developer
**Trương Tấn Sang**

---

## State Management
- **BLoC (flutter_bloc)** is used for state management to ensure separation between UI and business logic.

---

## Architecture
The project follows **Clean Architecture** principles:
- **Data Layer**: handle data models, repositories, remote sources
- **Domain Layer**: define business logic and repository interfaces
- **Presentation Layer**: manage UI, blocs, and widgets

---

## Project Structure
```
lib/
├── core/
│   ├── bloc/                                       # Base classes for bloc pattern
│   │   └── base_page_state.dart
│   ├── config/                                     # Dependency Injection using Injectable
│   │   ├── service_locator.dart
│   │   └── service_locator.config.dart
│   ├── const/                                      # Store constants of app. Ex: image, string, enum, ...
│   │   ├── assets.dart
│   │   └── strings.dart
│   ├── extensions/                                 # Useful extension methods
│   │   ├── date_time_extension.dart
│   │   ├── double_extension.dart
│   │   ├── extensions.dart
│   │   └── num_extension.dart
│   ├── network/                                    # Config dio
│   │   └── dio_client.dart
│   ├── route/                                      # Useful navigation
│   │   └── route.dart
│   └── utils/                                      # Useful utils methods
│       ├── common_util.dart
│       ├── device_util.dart
│       └── utils.dart
│
├── features/
│   └── weather/                                    # We can have multiple feature. Ex: weather, auth, product, ...
│       ├── data/                                   # This layer is responsible for handling data sources
│       │   ├── model/                              # This directory likely contains model from API response
│       │   │   ├── forecast.dart
│       │   │   ├── model.dart
│       │   │   └── weather.dart
│       │   ├── remote/                             #
│       │   │   ├── remote_data_source.dart
│       │   │   └── remote_data_source_impl.dart
│       │   └── repository/                         #
│       │       └── repository.dart
│       ├── domain/                                 #
│       │   └── repository/                         #
│       │       └── domain.dart
│       └── presentation/                           #
│           ├── bloc/
│           │   └── home/                           #
│           │       ├── home_bloc.dart
│           │       ├── home_event.dart
│           │       └── home_state.dart
│           ├── widget/                             #
│           │   └── home/                           #
│           │       ├── error.dart
│           │       ├── item.dart
│           │       ├── loading.dart
│           │       └── slide_animation.dart
│           └── home.dart
│
├── feature.dart
└── weather.dart
```

---

## Libraries Used

| Package              | Purpose                            |
| -------------------- | ---------------------------------- |
| flutter_bloc         | BLoC pattern (business logic)      |
| bloc                 | Core bloc package                  |
| dio                  | Networking (API calls)             |
| freezed_annotation   | Data classes (models)              |
| json_annotation      | JSON serialization                 |
| injectable           | Dependency injection               |
| get_it               | Service locator                    |
| cupertino_icons      | iOS icons                          |
| geolocator           | Get device GPS location            |

---

## Technical Approach

- **Clean Architecture**: Apply feature first. Clear separation between Data, Domain, and Presentation.
- **BLoC Pattern**: Reliable state management across the app.
- **Freezed + JSON Annotation**: Immutable models and easy API response parsing.
- **Dio**: High-performance HTTP client for API communication.
- **Injectable + GetIt**: Service locator pattern for dependency management.
- **Geolocator**: To fetch the device’s current latitude and longitude.

---

## Running Tests

- Unit tests and Bloc tests are written under the `test/` folder.
- Run tests using:
  ```bash
  flutter test
  ```

---

## How to Run

```bash
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter run
```

---
