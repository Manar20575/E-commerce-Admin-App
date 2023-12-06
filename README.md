# Flutter E-Commerce App

## Introduction

Welcome to our Flutter e-commerce application! This project aims to provide a seamless and user-friendly shopping experience for both customers and administrators. The app is built using the Flutter framework and incorporates various features for a comprehensive e-commerce solution.

## User App UI

The user app UI is designed to be intuitive and visually appealing. Users can easily navigate through different product categories, view product details, add items to their cart, and complete the checkout process seamlessly. The UI is crafted with Flutter widgets, ensuring a consistent and responsive design across various devices.

<!-- ### Screenshots
![Screenshot 1](/screenshots/screenshot1.png)
![Screenshot 2](/screenshots/screenshot2.png) -->

## State Management Using Provider

State management is a crucial aspect of any Flutter application, and we have employed the Provider package to efficiently manage the app's state. Provider allows for a scalable and maintainable way to handle the application's state, ensuring a smooth user experience.


## Admin App

The admin app provides a dedicated interface for administrators to manage products, orders, and user accounts. It offers a comprehensive dashboard with insights and tools to streamline the management of the e-commerce platform.

<!-- ### Admin Dashboard
![Admin Dashboard](/screenshots/admin_dashboard.png) -->

## Firebase Integration

Firebase is integrated into the app to provide a reliable and scalable backend solution. Firebase Authentication is used to handle user authentication, while Firestore is utilized for real-time data storage. This ensures that user data, product details, and orders are synchronized across devices in real time.

### Firebase Configuration
```yaml
dependencies:
  firebase_core: ^1.10.6
  firebase_auth: ^4.5.1
  cloud_firestore: ^3.2.2
```

## More on State Management

In addition to Provider, we explore advanced state management techniques to enhance the app's performance and maintainability. Feel free to explore the codebase for more insights into how we manage the state in different parts of the application.

## Getting Started

To get started with the app, follow these steps:

1. Clone the repository
2. Run `flutter pub get` to install dependencies
3. Update Firebase configuration in the `lib/config/firebase_config.dart` file
4. Run the app using `flutter run`

Feel free to reach out if you have any questions or issues!

Happy coding!
```
