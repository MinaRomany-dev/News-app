# 📰 News App (Flutter)

A modern News Application built using **Flutter** that displays news articles based on selected sources.
The app follows the **MVVM architecture pattern** and uses **Provider** for state management.

---

## 🚀 Features

* 📌 Display news sources in dynamic tabs
* 📰 Fetch and display news articles by selected source
* 🔄 Loading indicator while fetching data
* ❌ Error handling with custom error indicator
* ♻️ Clean architecture using MVVM
* 🎯 Smooth scrolling with `BouncingScrollPhysics`
* 🧠 State management using Provider

---

## 🏗️ Architecture

The project follows the **MVVM (Model - View - ViewModel)** pattern:

### 1️⃣ Model

Represents data structures:

* `Source`
* `Article` (used inside `News_item`)

### 2️⃣ View

UI components:

* `SourcesTabs`
* `News_item`
* `TabItem`
* `Error_Indicator`

### 3️⃣ ViewModel

* `NewsViewmodel`
* Responsible for:

  * Fetching news from API
  * Managing loading state (`isloading`)
  * Handling errors (`errormessage`)
  * Providing articles list (`myarticle`)
  * Notifying listeners

---

## 🛠️ Technologies Used

* Flutter
* Dart
* Provider (State Management)
* REST API integration
* MVVM Architecture Pattern

---

## 📂 Project Structure

```
lib/
│
├── news/
│   ├── view/
│   │   └── widgets/
│   │       └── news_item.dart
│   ├── view_model/
│   │   └── news_viewmodel.dart
│
├── sources/
│   ├── data/
│   │   └── models/
│   │       └── source.dart
│   ├── view/
│   │   └── widgets/
│   │       └── Tabitem.dart
│
├── shared/
│   └── widgets/
│       └── Error_indicator.dart
│
└── main.dart
```

---

## ⚙️ How It Works

1. The app loads available news sources.
2. Sources are displayed in a horizontal `TabBar`.
3. When a tab is selected:

   * `NewsViewmodel.getNewsbysource()` is called.
4. ViewModel:

   * Sets `isloading = true`
   * Fetches data from API
   * Updates `myarticle`
   * Handles possible errors
   * Calls `notifyListeners()`
5. UI listens using `Consumer<NewsViewmodel>` and rebuilds automatically.

---

## 🧩 Key Widget: SourcesTabs

Responsible for:

* Displaying source tabs
* Managing selected index
* Fetching news based on source
* Displaying loading, error, or articles list

---

## ▶️ Getting Started

### 1️⃣ Clone the repository

```bash
git clone <your-repo-link>
```

### 2️⃣ Install dependencies

```bash
flutter pub get
```

### 3️⃣ Run the app

```bash
flutter run
```

---

## 📌 Future Improvements

* Add pull-to-refresh
* Add search functionality
* Add pagination (infinite scroll)
* Cache articles locally
* Add dark mode support
* Improve error retry handling

---

## 👨‍💻 Author

Developed as part of Flutter learning journey focusing on:

* Clean Architecture
* Provider
* API integration
* UI separation from business logic

---

## 📄 License

This project is for educational purposes.
