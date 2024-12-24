# Flutter Starter

[![Language][dart_language_badge]](http://dart.dev)
[![License: MIT][license_badge]][license_link]
[![PRs Welcome][pr_welcome_badge]][repo_link]

A modern Flutter Starter Project tailored for scalable and maintainable development.

---

## Preview 🏠

| Platform     | Preview       |
| ------------ | ------------- |
| **Android**  | ![Android][android_preview] |
| **iOS**      | ![iOS][ios_preview]         |
| **Web**      | ![Web][web_preview]         |

---

## Features 🛠️

- Scalable folder structure following best practices
- Pre-configured **flavors** for development, staging, and production
- **State management** with [flutter_bloc](https://pub.dev/packages/flutter_bloc)
- **Internationalization** (i18n) with [intl](https://pub.dev/packages/intl)
- **Dependency Injection** using [get_it](https://pub.dev/packages/get_it)
- **Local Database** with [hive](https://pub.dev/packages/hive)
- Built-in **network monitoring**

---

## Getting Started 🚀

This project includes three flavors:

- **Development**
- **Staging**
- **Production**

### Setting Up Environment Variables

1. Copy the example file:
   ```sh
   cp assets/.env.example assets/.env
   ```
2. Update the `.env` file with your API base URLs:
   ```env
   BASE_URL_PROD=https://api.production.com
   BASE_URL_STG=https://api.staging.com
   BASE_URL_DEV=https://api.development.com
   ```

### Running the Project

Use the following commands to run the desired flavor:

```sh
# Development
flutter run --flavor development --target lib/main_development.dart

# Staging
flutter run --flavor staging --target lib/main_staging.dart

# Production
flutter run --flavor production --target lib/main_production.dart
```

---

## Building the App 🔥

To build APKs for the desired flavor:

```sh
# Development
flutter build apk --flavor development --target lib/main_development.dart

# Staging
flutter build apk --flavor staging --target lib/main_staging.dart

# Production
flutter build apk --flavor production --target lib/main_production.dart
```

For platform-specific release builds, refer to the [Flutter Android deployment guide](https://docs.flutter.dev/deployment/android) and [Flutter iOS deployment guide](https://docs.flutter.dev/deployment/ios).

---

## Running Tests 🧬

Run all unit and widget tests:

```sh
flutter test --coverage --test-randomize-ordering-seed random
```

Generate and view the coverage report:

```sh
# Generate Coverage Report
lcov --directory coverage/lcov.info --output-file coverage/index.html

# Open Coverage Report
open coverage/index.html
```

---

## Localization 🌐

This project follows Flutter's [official internationalization guide](https://flutter.dev/docs/development/accessibility-and-localization/internationalization).

### Adding New Strings

1. Open `lib/l10n/arb/app_en.arb`.
2. Add a key-value pair for the new string:
   ```json
   {
       "helloWorld": "Hello World",
       "@helloWorld": {
           "description": "Text for greeting users"
       }
   }
   ```
3. Use the new string in your code:
   ```dart
   import 'package:flutter_starter/l10n/l10n.dart';

   Text(context.l10n.helloWorld);
   ```

---

## Route Navigation 🛑

Utilizes [go_router](https://pub.dev/packages/go_router) for clean and efficient navigation.

---

## Folder Structure 🔬

Adheres to atomic design principles for consistent and reusable components:

```
lib/
├── core/      # Core utilities and constants
├── features/  # Feature-based modules
├── l10n/      # Localization files
├── theme/     # Theme configurations
├── widgets/   # Shared UI components
```

---

## Packages Used 📦

| Name                          | Purpose                         |
| ----------------------------- | ------------------------------- |
| flutter_bloc                  | State management                |
| get_it                        | Dependency injection            |
| hive                          | Local database                  |
| intl                          | Localization                    |
| go_router                     | Navigation                      |
| internet_connection_checker   | Network monitoring              |
| equatable                     | Simplified object equality      |

---

## Contributions 🙏

Contributions are welcome! Please feel free to submit a Pull Request or open an issue.

---

## License 🌐

This project is licensed under the [MIT License][license_link].

---

[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[pr_welcome_badge]: https://img.shields.io/badge/PRs-welcome-brightgreen.svg
[dart_language_badge]: https://img.shields.io/badge/Language-Dart-blue
[repo_link]: https://github.com/your-repo-link
[android_preview]: https://your-link-to-android-preview
[ios_preview]: https://your-link-to-ios-preview
[web_preview]: https://your-link-to-web-preview
