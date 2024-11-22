# Code Documentation for FashionStoreAR

## Overview
FashionStoreAR is an iOS application designed to enhance online shopping experiences with AR try-ons, Firebase-based authentication, and social features. Built using the **Model-View-Controller (MVC)** architecture, it integrates **Firebase Authentication**, **Firestore**, and **ARKit**.

---

## Key Features
1. **User Authentication**:
   - Support for **Email and Password**, **Google**, and **Facebook** sign-in.
   - Secure authentication through Firebase.  
     - [Firebase Authentication Setup](https://firebase.google.com/docs/ios/setup)  
     - [Google Sign-In Code](https://developers.google.com/identity/sign-in/ios/start-integrating)  
     - [Facebook Login Code](https://developers.facebook.com/docs/facebook-login/ios)

2. **Firestore Database**:
   - Stores product information, user profiles, and session data.
   - Supports CRUD operations for managing catalog and user preferences.
     - [Firestore Setup](https://firebase.google.com/docs/database/ios/start)  
     - [Firestore CRUD Functions](https://www.bacancytechnology.com/blog/setup-google-firestore-database-ios)  

3. **Augmented Reality (AR) Try-On**:
   - Integrates **ARKit** and **RealityKit** for 3D model rendering.
   - Lets users visualize products in real-world environments.
     - [ARKit Implementation Guide](https://www.createwithswift.com/creating-an-augmented-reality-app-in-swiftui-using-realitykit-and-arkit)

4. **User-Friendly Interface**:
   - Clean, responsive UI built with SwiftUI.
   - Features intuitive navigation, social sharing, and tailored recommendations.

---

## Dependencies
| Dependency              | Purpose                                       |
|--------------------------|-----------------------------------------------|
| **Firebase Auth**        | Secure user login/sign-up.                   |
| **Firebase Firestore**   | Cloud-hosted NoSQL database for user and product data. |
| **ARKit**                | 3D rendering and AR environment.             |
| **RealityKit**           | Enhanced AR functionality.                   |
| **Google Sign-In SDK**   | Third-party authentication.                  |
| **Facebook Login SDK**   | Third-party authentication.                  |

---

## Folder Structure
- **Models**:  
  Contains all data structures, such as `UserProfile`, `Product`, and `Order`.

- **Views**:  
  SwiftUI files for UI, including authentication screens, AR views, and product catalog.

- **Controllers**:  
  Core logic for managing data flow, user actions, and updates. Examples include `AuthController`, `ProductController`, and `ARController`.

---

## Setup Steps
1. **Clone the Repository**:  
   `git clone <repository-url>`
   
2. **Open Project**:  
   Open in Xcode (use `.xcodeproj` or `.xcworkspace`).

3. **Add Dependencies**:  
   Use Swift Package Manager to add:
   - Firebase iOS SDK: `https://github.com/firebase/firebase-ios-sdk`
   - Google Sign-In SDK: `https://github.com/google/GoogleSignIn-iOS`
   - Facebook SDK: `https://github.com/facebook/facebook-ios-sdk`

4. **Configure Firebase**:  
   - Add `GoogleService-Info.plist` to the Xcode project.
   - Follow setup instructions in the Firebase console.

5. **Set Up Authentication**:
   - Follow guides for Google and Facebook sign-in.

6. **Run the App**:  
   Use a physical device for ARKit or a simulator.

---

## Documentation References

| **Topic**                     | **Link**                                                                                           |
|-------------------------------|---------------------------------------------------------------------------------------------------|
| **Firebase Authentication Configurations** | [Firebase iOS Setup](https://firebase.google.com/docs/ios/setup)                               |
| **Firebase Sign-In & Sign-Up** | [Firebase Authentication Using Email and Password](https://chaitalilad.hashnode.dev/ios-firebase-authentication-using-email-and-password) |
| **Firebase Database (Firestore) Configurations** | [Firestore Setup](https://firebase.google.com/docs/database/ios/start)                          |
| **Firestore CRUD Functions**  | [Firestore CRUD in iOS](https://www.bacancytechnology.com/blog/setup-google-firestore-database-ios) |
| **Firestore GET Data**        | [Firestore Query Data](https://firebase.google.com/docs/firestore/query-data/get-data)            |
| **Google Sign-In Configurations (No Code)** | [Google Sign-In Setup](https://firebase.google.com/docs/auth/ios/google-signin)                |
| **Google Sign-In (Contains Code)** | [Google Sign-In Integration](https://developers.google.com/identity/sign-in/ios/start-integrating) |
| **Facebook Sign-In Configurations** | [Facebook Login Setup](https://firebase.google.com/docs/auth/ios/facebook-login)                |
| **Facebook Sign-In (Code)**   | [Facebook Login Integration](https://developers.facebook.com/docs/facebook-login/ios)             |
| **Introduction to Notifications** | [Apple WWDC 2020 - Notifications](https://developer.apple.com/videos/play/wwdc2020/10095/)          |
| **AR Kit Implementation**     | [AR App Using RealityKit and ARKit](https://www.createwithswift.com/creating-an-augmented-reality-app-in-swiftui-using-realitykit-and-arkit/) |
