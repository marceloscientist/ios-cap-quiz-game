# QuizGame 🎯

QuizGame is an iOS application developed using **SwiftUI** as a practical project for the **Capgemini / Proway iOS training program**.

The application focuses on building a clean, modular quiz experience while applying modern iOS architecture and best practices.

---

## 📱 Features

- Quiz theme selection
- Multiple-choice question flow
- Immediate feedback for correct and incorrect answers
- Final quiz result display
- Feature-based architecture using MVVM

---

## 🧱 Architecture

The project adopts a **feature-oriented architecture**, promoting scalability, testability, and clear separation of responsibilities.

Main architectural concepts used:

- **SwiftUI** for UI development
- **MVVM (Model–View–ViewModel)** pattern
- Feature-based organization, including:
  - **App** – application bootstrap and root navigation
  - **Features/Quiz** – quiz-related screens and logic
  - **Domain / Data / Presentation** layers
  - **Core/UI** – reusable UI components

This approach helps isolate business logic from UI concerns and improves maintainability as the application grows.

---

## 🚀 Technologies

- Swift
- SwiftUI
- Combine

---

## 📂 Project Structure

The project is organized by features and layers, following a modular and scalable design. Each feature encapsulates its own views, view models, and domain logic, while shared components are placed in the Core layer.

---

## 📌 Notes

This project emphasizes architectural organization and clean code principles while exploring SwiftUI navigation, state management, and reactive programming.

The concepts applied here serve as a foundation for more complex applications developed in subsequent assignments.