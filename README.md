# 📱 Flutter Nix Boilerplate

> **A modern Flutter boilerplate configured with Nix for reproducible development environments**

**Forked from:** [babariviere/flutter-nix-hello-world](https://github.com/babariviere/flutter-nix-hello-world)

[![Flutter Version](https://img.shields.io/badge/Flutter-3.35.5-blue.svg)](https://flutter.dev/)
[![Dart Version](https://img.shields.io/badge/Dart-3.9.2-blue.svg)](https://dart.dev/)
[![Nix](https://img.shields.io/badge/Nix-Flakes-purple.svg)](https://nixos.org/)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20Linux%20%7C%20Web-green.svg)](https://flutter.dev/multi-platform)

## ✨ Features

- 🚀 **Latest Flutter 3.35.5** with Dart 3.9.2
- 📦 **Nix Flakes** for reproducible development environments
- 🤖 **Android Support** with latest SDK (API 35) and NDK
- 🐧 **Linux Desktop** support with GTK3
- 🌐 **Web Support** with modern build tooling
- 🔧 **Pre-configured** development dependencies
- 📋 **Boilerplate Template** ready for new Flutter projects

## 🛠️ Tech Stack

| Component | Version | Description |
|-----------|---------|-------------|
| **Flutter** | 3.35.5 | Cross-platform UI framework |
| **Dart** | 3.9.2 | Programming language |
| **Android SDK** | API 35 | Latest Android development tools |
| **NDK** | 26.3.11579264 | Native development kit |
| **Gradle** | 8.9 | Build automation tool |
| **JDK** | 17 | Java development kit |

## 🚀 Quick Start

### Prerequisites

- [Nix](https://nixos.org/download.html) with flakes enabled
- Git

### Setup & Run

```bash
# Clone this boilerplate
git clone https://github.com/fiantyogalihp/flutter-nix-boilerplate.git my-flutter-app
cd my-flutter-app

# Enter the development environment
nix develop

# Get dependencies
flutter pub get

# Run on available device/desktop
flutter run
```

## 🏗️ Build Commands

### 📱 Android
```bash
# Debug APK
flutter build apk --debug

# Release APK
flutter build apk --release

# Android App Bundle (for Play Store)
flutter build appbundle
```

### 🐧 Linux Desktop
```bash
# Debug build
flutter build linux --debug

# Release build
flutter build linux --release

# Run the built application
./build/linux/x64/release/bundle/hello_world
```

### 🌐 Web
```bash
# Build for web
flutter build web

# Build with WebAssembly (experimental)
flutter build web --wasm

# Serve locally
flutter run -d web-server --web-port 8080
```

## 🔧 Development Environment

The Nix flake provides a complete development environment with:

- **Flutter SDK** and Dart
- **Android SDK** with build tools and platform tools
- **Linux development libraries** (GTK3, Cairo, etc.)
- **Build tools** (CMake, Ninja, pkg-config)
- **Java Development Kit** (JDK 17)

### Environment Variables

| Variable | Value | Purpose |
|----------|-------|---------|
| `ANDROID_HOME` | Nix Android SDK path | Android development |
| `JAVA_HOME` | JDK 17 path | Java compilation |
| `PKG_CONFIG_PATH` | GTK3 libraries | Linux desktop development |

## 📁 Project Structure

```
my-flutter-app/          # Your new Flutter app
├── 📁 android/          # Android-specific configuration
├── 📁 lib/              # Flutter/Dart source code
│   └── main.dart        # App entry point
├── 📁 linux/            # Linux desktop configuration
├── 📁 web/              # Web-specific assets
├── 📁 test/             # Unit and widget tests
├── 📁 nix/              # Nix configuration files
│   └── android.nix      # Android SDK configuration
├── flake.nix            # Main Nix flake configuration
├── shell.nix            # Legacy nix-shell support
└── pubspec.yaml         # Flutter dependencies
```

## 🎯 Platform Support

| Platform | Status | Notes |
|----------|--------|-------|
| 🤖 **Android** | ✅ Ready | API levels 23-35 supported |
| 🐧 **Linux** | ✅ Ready | GTK3-based desktop application |
| 🌐 **Web** | ✅ Ready | Modern web with optional WASM |
| 🍎 **iOS** | ⚠️ Limited | Requires macOS for building |
| 🖥️ **macOS** | ⚠️ Limited | Requires macOS for building |
| 🪟 **Windows** | ⚠️ Limited | Cross-compilation not configured |

## 🧪 Testing

```bash
# Run all tests
flutter test

# Run tests with coverage
flutter test --coverage

# Run integration tests
flutter drive --target=test_driver/app.dart
```

## 🛠️ Advanced Usage

### Using Legacy nix-shell

If you prefer the traditional `nix-shell`:

```bash
nix-shell shell.nix
flutter run
```

### Custom Android Configuration

Modify `nix/android.nix` to customize:
- Android SDK versions
- Build tools versions
- NDK versions
- Platform APIs

### Environment Customization

Edit `flake.nix` to add additional dependencies or modify environment variables.

## 📚 Resources

- 📖 [Flutter Documentation](https://docs.flutter.dev/)
- 🎓 [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- ❄️ [Nix Manual](https://nixos.org/manual/nix/stable/)
- 📱 [Android Development](https://developer.android.com/)

## 🚀 Getting Started with Your Project

After cloning this boilerplate:

1. **Rename your project**: Update `pubspec.yaml` and Android package names
2. **Customize dependencies**: Add packages you need in `pubspec.yaml`
3. **Update app metadata**: Change app name, description, and version
4. **Configure platforms**: Modify platform-specific settings as needed
5. **Start coding**: Begin building your Flutter app in `lib/main.dart`

## 🤝 Contributing

Contributions to improve this boilerplate are welcome!

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test across platforms
5. Submit a pull request

## 🙏 Acknowledgments

- **Original Project**: [babariviere/flutter-nix-hello-world](https://github.com/babariviere/flutter-nix-hello-world)
- **Thanks to**: [@babariviere](https://github.com/babariviere) for creating the initial Flutter Nix setup
- **Flutter Team**: For the amazing cross-platform framework
- **Nix Community**: For reproducible development environments

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

<div align="center">
  <sub>Built with ❤️ using Flutter and Nix • Forked from <a href="https://github.com/babariviere">@babariviere</a></sub>
</div>
