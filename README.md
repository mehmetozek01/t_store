# T Store

T Store is a Flutter-based e-commerce mobile application developed to practice and demonstrate modern mobile application development with Firebase and GetX.

The project includes authentication, user profile management, product browsing, cart, wishlist, checkout, reviews, themes, and Firebase integration.

## Features

- User authentication
- Email verification
- Forgot / reset password flow
- User profile management
- Change name
- Re-authentication before sensitive actions
- Product listing
- Product detail screens
- Categories and brands
- Cart
- Wishlist
- Checkout UI
- Order screens
- Product reviews
- Dark / Light theme
- Firebase Authentication
- Cloud Firestore
- Responsive Flutter UI

## Tech Stack

- Flutter
- Dart
- Firebase
  - Authentication
  - Cloud Firestore
- GetX
- Material Design

## Project Structure

```text
lib/
├── bindings/
├── common/
│   ├── styles/
│   └── widgets/
├── data/
│   ├── repositories/
│   └── services/
├── features/
│   ├── authentication/
│   │   ├── controllers/
│   │   ├── models/
│   │   └── screens/
│   ├── personalization/
│   │   └── data/
│   │       ├── controllers/
│   │       ├── models/
│   │       └── screens/
│   └── shop/
│       ├── controllers/
│       ├── models/
│       └── screens/
├── localization/
├── utils/
│   ├── constants/
│   ├── device/
│   ├── exceptions/
│   ├── formatter/
│   ├── helpers/
│   ├── http/
│   ├── local_storage/
│   ├── logging/
│   ├── popups/
│   ├── theme/
│   └── validators/
├── app.dart
├── firebase_options.dart
├── main.dart
└── navigation_menu.dart