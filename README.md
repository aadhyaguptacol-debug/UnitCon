# 🔄 UnitCon — Unit Converter App

[![Swift](https://img.shields.io/badge/Swift-FA7343?style=for-the-badge&logo=swift&logoColor=white)](https://developer.apple.com/swift/)
[![SwiftUI](https://img.shields.io/badge/SwiftUI-007ACC?style=for-the-badge&logo=apple&logoColor=white)](https://developer.apple.com/swiftui/)
[![iOS](https://img.shields.io/badge/iOS-16.0%2B-000000?style=for-the-badge&logo=apple&logoColor=white)](https://developer.apple.com/ios/)
[![License](https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge)](LICENSE)

A clean, responsive unit conversion app developed natively for iOS using **Swift** and **SwiftUI**. UnitCon allows users to quickly convert values across common measurement categories—such as temperature, length, volume, time, and mass—with instant calculations and a native interface.

---

## 📱 Screenshots

> *Add your app screenshots by placing image files in a `screenshots/` directory or uploading them directly to your repository.*

| Category Selection | Conversion Screen | Unit Picker |
| :---: | :---: | :---: |
| <img src="screenshots/categories.png" width="220" /> | <img src="screenshots/conversion.png" width="220" /> | <img src="screenshots/picker.png" width="220" /> |

---

## ✨ Key Features

- **Multi-Category Support:** Convert across length, temperature, volume, mass, and time measurements.
- **Instant Calculations:** Real-time computation as values or selected units change.
- **Bi-directional Conversion:** Switch input and output units easily with interactive segment controls or pickers.
- **Built-in Precision:** Formatted decimal results tailored for clarity and readability.
- **Native iOS UI:** Designed with standard SwiftUI components, supporting dynamic type, system animations, and full Dark/Light appearance modes.

---

## 🛠️ Tech Stack & Architecture

- **Language:** [Swift](https://developer.apple.com/swift/)
- **UI Framework:** [SwiftUI](https://developer.apple.com/swiftui/)
- **Architecture:** MVVM / Declarative SwiftUI State Management
- **IDE:** [Xcode](https://developer.apple.com/xcode/)
- **Target OS:** iOS 16.0+

---

## 📁 Project Structure

```text
UnitCon/
├── Models/              # Unit categories, formulas, and conversion logic
├── Views/               # SwiftUI views (ConverterView, UnitPicker, InputRow)
├── ViewModels/          # State holders handling active selections and math
├── Resources/           # Assets.xcassets, color assets, and app icon
└── App/                 # App lifecycle entry point
