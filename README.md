# orange

# Mini Social Network

This is a mini social network built using SwiftUI and Firebase. The application allows users to sign up, sign in, create a profile, search for other users, view other users' profiles, make them friends/unfriend them, and view a list of mutual friends between users.

## Solution and Choices

This application is built using SwiftUI, which provides a modern way of building user interfaces. Firebase is used as a backend service, which provides authentication, real-time database, and storage functionalities. The application uses Firebase Authentication to allow users to sign up and sign in to the application securely. 

The users' profiles are stored in the Firebase Realtime Database, and the application uses Firebase Storage to store the users' profile pictures. The users can search for other users using their usernames, and they can view other users' profiles, make them friends or unfriend them. 

The application also shows a list of mutual friends between two users. A mutual friend is a user who is a friend of two other users who may or may not know each other. The list of mutual friends is generated by comparing the lists of friends of the two users.

## Current Features

1. Able to Sign In/Sign Up to the app
2. Able to access predefined static UI


## Demo Video

Here's a [demo video](https://drive.google.com/file/d/19307XsG-C70oI5Gb4T5sM__ewZdUVHaU/view?usp=sharing) of the application.

## Running the Code

To run the code, follow these steps:

1. Clone this repository using `git clone https://github.com/13x02/orange.git`
2. Open the project in Xcode.
3. Open the `Firebase.swift` file and replace the Firebase configuration with your own Firebase configuration.
4. Build and run the application.

Note: Make sure to install the necessary dependencies using CocoaPods before running the application.

## Dependencies

- Firebase/Core
- Firebase/Auth
- Firebase/Firestore

