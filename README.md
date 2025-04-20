# Weather Flutter App

## About
A simple Weather Forecast Application built with **Flutter**.

- **Flutter version**: 3.29.3 (stable)
- **Dart version**: 3.7.2
- **Java version**: Java 8
- **Minimum Android version support**: 5.0 Lollipop
- **Minimum iOS version support**: iOS 11.0
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
│   ├── config/                                     # Dependency Injection using Injectable
│   ├── const/                                      # App constants (assets, strings, ...)
│   ├── extensions/                                 # Dart extensions (num, datetime, double, ...)
│   ├── network/                                    # Dio client wrapper
│   ├── route/                                      # Navigation and route settings
│   └── utils/                                      # Common utilities
│
├── features/                                       # Each big feature of the app (weather, auth, profile, ...) has its own folder
│   └── weather/
│       ├── data/                                   # This layer is responsible for handling data sources
│       │   ├── model/                              # Contains model from API response
│       │   ├── remote/                             # Connect to APIs, databases, etc
│       │   └── repository/                         # Concrete implementation of repository interfaces, calling datasource methods
│       ├── domain/                                 # Contains the business logic: entities, repository interfaces, and use cases.
│       │   └── repository/                         # Abstract classes that define all function needed
│       └── presentation/                           # Contains the UI (screen) and logic UI
│           ├── bloc/                               # Bloc state management
│           ├── widget/                             # Small reusable for each screen
│           └── screen.dart                         # Screen
│
test/
├── feature/
│   ├── bloc/
│   ├── dump/
│   ├── helpers/
│   └── screen_test.dart
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
| geolocator           | Get device GPS location            |
| go_router            | Routing and navigation             |

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
