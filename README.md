# Adaptive Dashboard

A modern, adaptive dashboard application built with Flutter. This project demonstrates responsive design, custom widgets, and a clean architecture suitable for web and desktop platforms.

## Features

- **Adaptive Layout**: Responsive UI for desktop, tablet, and mobile using a custom `AdaptiveLayoutWidget`.
- **Custom Drawer**: Navigation drawer with user info, navigation items, settings, and logout.
- **Dashboard Sections**:
  - **My Card Section**: Carousel of cards with animated indicators.
  - **Expenses Overview**: Visual summary of balance, income, and expenses.
  - **Quick Invoice**: Create and send invoices with a form and recent transactions list.
- **Custom Widgets**: Reusable components for cards, expenses, forms, and more.
- **Theming & Styles**: Consistent use of custom styles and the Montserrat font.
- **Asset Management**: Organized SVG and PNG assets for icons and backgrounds.

## Screenshots
<!-- Add screenshots here if available -->

## Getting Started

### Prerequisites
- [Flutter SDK](https://flutter.dev/docs/get-started/install) (>=3.7.2)
- Dart SDK (compatible with Flutter)

### Installation
1. **Clone the repository:**
   ```sh
   git clone <your-repo-url>
   cd adaptive_dashboard
   ```
2. **Install dependencies:**
   ```sh
   flutter pub get
   ```
3. **Run the app:**
   ```sh
   flutter run -d chrome   # For web
   flutter run -d windows  # For Windows
   flutter run -d macos    # For macOS
   flutter run -d linux    # For Linux
   flutter run -d android  # For Android
   flutter run -d ios      # For iOS
   ```

## Project Structure

```
lib/
  assets/         # Fonts and images
  model/          # Data models (drawer items, expenses, user details)
  utils/          # Styles and asset references
  view/           # Main dashboard view
  widget/         # Reusable UI components
```

## Key Dependencies
- [flutter](https://pub.dev/packages/flutter)
- [cupertino_icons](https://pub.dev/packages/cupertino_icons)
- [expandable_page_view](https://pub.dev/packages/expandable_page_view)
- [flutter_svg](https://pub.dev/packages/flutter_svg)
- [flutter_lints](https://pub.dev/packages/flutter_lints) (dev)

See `pubspec.yaml` for the full list.

## Assets
- **Images**: SVG and PNG icons for dashboard, cards, expenses, avatars, etc. (see `lib/assets/images/`)
- **Fonts**: Montserrat font family (see `lib/assets/fonts/`)

## Custom Widgets
- `AdaptiveLayoutWidget`: Handles responsive layout switching.
- `CustomDrawer`: Navigation drawer with user info and actions.
- `MyCardSection`, `MyCardPageView`, `MyCardWidget`: Card carousel and display.
- `MyexpensesWidget`, `MyexpensesItemWidget`: Expenses summary and items.
- `QuickInvoiceWidget`, `TransactionFormWidget`, `UserDetailListViewWidget`: Invoice creation and recent transactions.
- `IndecatorSection`, `IndecatorWidget`: Animated page indicators.
- `TittleTextFieldWidget`, `CustomTextField`: Labeled and styled text fields.

## Linting & Code Quality
- Uses [flutter_lints](https://pub.dev/packages/flutter_lints) for recommended best practices.
- See `analysis_options.yaml` for configuration.

## Testing
- Example widget test in `test/widget_test.dart`.
- Run all tests with:
  ```sh
  flutter test
  ```

## Contributing
Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

## License
This project is currently unlicensed. Please add a LICENSE file if you intend to open source it.

## Acknowledgements
- Flutter team and community
- [Montserrat font](https://fonts.google.com/specimen/Montserrat)
