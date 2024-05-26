# ProfilePage Contract
## Introduction
This contract, named ProfilePage, is designed to manage user profiles, including email and password storage, and a simple sign-in/sign-out mechanism. It utilizes Solidity version 0.8.18 and is licensed under the MIT License.
## Functionality
The contract has four main functions:
### enterEmail
- Allows users to save their email addresses.
- Requires that the email has not been saved previously.
- Returns a success message.

### enterPassword
- Allows users to save their passwords.
- Requires that the password is at least 8 characters long (enforced by the PASSWORD_LESS_THAN_8_CHARACTERS error).
- Returns a success message.

### signIn
- Allows users to sign in.
- Requires that the user is not already signed in.
- Returns a success message.

### signOut
- Allows users to sign out.
- Requires that the user is currently signed in.
- Returns a success message.

## Structs
The contract uses a single struct, Profile, to store user data:
### Profile
- email: A mapping of user addresses to their email addresses.
- password: A mapping of user addresses to their passwords.
- signedIn: A mapping of user addresses to their sign-in status (boolean).

## Error Handling
The contract uses a custom error, PASSWORD_LESS_THAN_8_CHARACTERS, to handle cases where a password is less than 8 characters long.

## Usage
To use this contract, simply deploy it to a compatible blockchain network and interact with it using the functions described above.
Note: This contract is for demonstration purposes only and should not be used in production without additional security measures and testing.