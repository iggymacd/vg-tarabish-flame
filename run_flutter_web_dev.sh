#!/bin/bash

# Configure Git for Flutter directory
git config --global --add safe.directory /google/flutter
git config --global user.email "iggymacd@gmail.com"
git config --global user.name "iggymacd"

# Run Flutter app in web server mode
flutter run --flavor development --target lib/main_development.dart -d web-server --web-port=5555 --web-renderer canvaskit

# Start build runner in watch mode
#dart run build_runner watch
