# omniETHNet

OmniETHNet is a futuristic solution to combat the disparity amongst blockchain users by increasing the accessibility for users with erratic internet connectivity. It shifts the requirement of connectivity to an offline approach to fulfill transactions on the blockchain.

## Working Methodology 
- The client application built on Flutter gathers the user’s transaction details such as the amount of gas etc, and further signs it using the client’s account.
- The generated signed transaction hash would be then sent to the server in chunks along with serial so as to maintain the integrity of the signed hash.
- The chunks would be then reformed into the signed transaction and executed at the server end which would be built with the help of Node.js, ETH, and web3.
- Details of the transaction will then be sent to the client via a virtual SMS provider like Twilio or Nexmo.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


