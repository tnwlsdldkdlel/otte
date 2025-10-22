# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Otte is a Flutter-based mobile application for knitting enthusiasts. The primary goal is to become the most active information-sharing platform for knitters, with a killer feature: the "Re-Yarn/Re-Needle" recommendation engine that helps users find alternative yarn and needle combinations for specific patterns.

### Target Platforms
- iOS & Android (primary)
- Cross-platform support via Flutter

## Tech Stack

- **Framework**: Flutter (Dart)
- **State Management**: GetX
- **Backend**: Supabase (BaaS with PostgreSQL)
- **Storage**: Supabase Storage for media files

## Architecture

### GetX Pattern
This project follows the GetX architecture pattern with clear separation:

1. **Modules** (`lib/app/modules/`): Feature-based organization
   - Each module contains: `controllers/`, `views/`, `bindings/`
   - Controllers handle business logic and state
   - Views are presentation layer (GetView<Controller>)
   - Bindings inject dependencies for each route

2. **Routing** (`lib/app/routes/`):
   - `app_routes.dart`: Route name constants
   - `app_pages.dart`: GetPage definitions with bindings
   - Each route is configured with its binding for dependency injection

3. **Services** (`lib/app/services/`):
   - Global services extend `GetxService`
   - Initialized in `main.dart` using `Get.putAsync()`
   - Example: `SupabaseService` provides auth and database access

4. **Core** (`lib/app/core/`):
   - `theme/`: Material theme definitions
   - `values/`: App-wide constants (colors, strings)
   - `widgets/`: Reusable UI components

5. **Data Layer** (`lib/app/data/`):
   - `models/`: Data models
   - `providers/`: API communication
   - `repositories/`: Data access abstraction

### Key Architectural Decisions

- **Service Initialization**: Supabase is initialized as a GetX service in `main.dart` before app start
- **Dependency Injection**: All controllers access services via `Get.find<ServiceName>()`
- **Navigation**: Uses GetX named routes with `Get.toNamed()` or `Get.offAllNamed()`
- **State Management**: Controllers use `.obs` for reactive state, Views use `Obx()` to rebuild

## Development Commands

### Setup
```bash
flutter pub get                 # Install dependencies
```

### Running
```bash
flutter run                     # Run on connected device
flutter run -d ios             # Run on iOS simulator
flutter run -d android         # Run on Android emulator
```

### Code Quality
```bash
flutter analyze                # Run static analysis
flutter test                   # Run all tests
flutter test path/to/test.dart # Run single test file
```

## Configuration

### Supabase Setup
Before running the app, configure `lib/config/supabase_config.dart` with your Supabase project credentials:
- `supabaseUrl`: Your Supabase project URL
- `supabaseAnonKey`: Your Supabase anon/public key

These values should not be committed if they contain production credentials.

## Key Features to Implement

### Priority Features (from PRD)
1. **Re-Yarn/Re-Needle Recommendation Engine** (Killer Feature)
   - Crawl and aggregate Yarn/Needle data from Naver Blog posts
   - Display recommendations by frequency
   - Provide deep links to source blogs

2. **Project Upload**
   - Mandatory fields: Pattern Name/ID, Yarn Used, Needle Size
   - Optional field: Gauge
   - Image upload via Supabase Storage

3. **Instagram-style Feed**
   - Display projects from followed users
   - Show trending posts
   - Comments, Likes, Save/Bookmark functionality

4. **Authentication**
   - Email/Password (implemented)
   - Social Login: Google, Kakao (TODO)

5. **Search**
   - Search by Pattern Name, Yarn, Needle size

6. **Push Notifications**
   - Triggers: New Like, New Comment, New Follower

### Module Structure for New Features
When adding a new feature module:

```
lib/app/modules/feature_name/
├── controllers/
│   └── feature_controller.dart
├── views/
│   └── feature_view.dart
└── bindings/
    └── feature_binding.dart
```

Then register in `app_routes.dart` and `app_pages.dart`.

## Database Schema Notes

User profiles should include:
- Nickname
- Profile Photo
- SNS ID (Instagram or Blog URL)
- Follow/Follower relationships

Project posts should include:
- Pattern Name/ID (required)
- Yarn Used (required)
- Needle Size (required)
- Gauge (optional)
- Photos (via Supabase Storage)
- User engagement (likes, comments, saves)

## Language & Localization

Project documentation and comments should be in Korean as this targets Korean knitting enthusiasts. UI strings should also be in Korean.
