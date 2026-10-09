# 📱 Mobile Application Source Code

This directory contains the source code for the mobile application.

## 🚀 Choosing a Framework

This starter is technology-agnostic. You can choose any mobile framework for your project. Common choices include:

- **React Native (Expo):**
  ```bash
  npx create-expo-app@latest .
  ```
- **Flutter:**
  ```bash
  flutter create .
  ```
- **Kotlin (Android):**
  Use Android Studio to create a new project in this directory.
- **Swift (iOS):**
  Use Xcode to create a new project in this directory.

## 📂 Expected Structure

Regardless of the framework, try to organize your code adhering to the architecture described in `docs/architecture.md`. Generally, it should look something like:

- `src/` (or `lib/`, `app/` depending on the framework)
  - `ui/` or `presentation/`: Screens, widgets/components.
  - `viewmodels/` or `controllers/`: State management.
  - `data/` or `repositories/`: API integration and local storage.
  - `models/`: Data classes / DTOs.
  - `utils/`: Helpers and constants.
