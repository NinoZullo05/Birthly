
# 🎉 Birthly - Birthday Reminder App 🎉

**Birthly** is a simple, modern app designed to help you remember birthdays, so you’ll never miss an important date. With Birthly, you can add, export, and import birthdays, customize the interface, and view details about your friends and family. The app includes a guided onboarding experience, smooth animations, and dark/light mode support!

---

## 🚀 Features

- **Birthday Management**: Add birthdays with names, dates, age, and custom notes.
- **Dark/Light Mode**: Choose between dark or light mode for a comfortable viewing experience.
- **Export & Import**: Save and export your birthdays to a JSON file or import previously saved birthdays.
- **Animated Onboarding**: An intuitive introduction to help you get started quickly.
- **Animations**: Transition effects and animations for a smooth and engaging UI.

---

## 📸 App Previews

| Onboarding | Birthday List | Add Birthday Form |
|------------|---------------|-------------------|
| ![Onboarding](assets/screenshots/onboarding.png) | ![Birthday List](assets/screenshots/birthday_list.png) | ![Add Birthday Form](assets/screenshots/add_form.png) |

---

## 🛠️ Tools and Packages Used

- **Flutter** - The main SDK for app development.
- **Hive** - Local database for saving birthdays.
- **Provider** - State management for theme mode.
- **flutter_animate** - Library for adding smooth animations.
- **shared_preferences** - Used for saving user preferences, so the onboarding shows only on the first launch.
- **file_picker** - Enables importing and exporting birthdays.

---

## 📲 Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/NinoZullo05/birthly.git
   cd birthly
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

> **Note**: Ensure you have a working Flutter development environment set up.

---

## 📖 Project Structure

- **lib/screens/**: Contains all app screens (`HomeScreen`, `OnboardingPage`, `SettingsScreen`).
- **lib/widgets/**: Reusable widgets such as `BirthdayList` and `AddBirthdayForm`.
- **lib/models/**: Defines the `Birthday` data structure.
- **lib/providers/**: Provider for theme state management.
  
---

## 🎨 Customizations

### Modifying Illustrations

Onboarding illustrations are located in the `assets/images` folder. You can replace them with your own images, making sure to update references in the code files as needed.

### Themes and Colors

Birthly supports both dark and light modes. If you want to customize the theme colors, you can modify them in `lib/main.dart`:

```dart
theme: ThemeData(
  primaryColor: Colors.teal,
  colorScheme: ColorScheme.light(),
),
darkTheme: ThemeData(
  primaryColor: Colors.teal,
  colorScheme: ColorScheme.dark(),
),
```

---

## 🔧 Future Enhancements

- **Push Notifications** for upcoming birthdays.
- **Contacts Integration** for automatic birthday syncing.
- **Home Screen Widget** for quick access to upcoming birthdays.

---

## 🤝 Contributions

Contributions are always welcome! Follow these steps to contribute:

1. Fork the project.
2. Create a new branch:
   ```bash
   git checkout -b feature/NewFeature
   ```
3. Make your changes and commit them:
   ```bash
   git commit -m "Added a new feature"
   ```
4. Push to the branch:
   ```bash
   git push origin feature/NewFeature
   ```
5. Open a pull request.

---

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---

**Thank you for trying Birthly!** 🎂
