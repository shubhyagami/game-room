# Game Room
-------------
[![Build Status](https://img.shields.io/github/actions/workflow/status/shubhyagami/game-room/ci.yml?branch=main&style=for-the-badge&label=build)](https://github.com/shubhyagami/game-room/actions)
[![License](https://img.shields.io/github/license/shubhyagami/game-room?style=for-the-badge)](https://github.com/shubhyagami/game-room/blob/main/LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=for-the-badge)](http://makeapullrequest.com)
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-blue.svg?style=for-the-badge)](https://github.com/commitizen/cz-cli)
[![Code Style: ESLint](https://img.shields.io/badge/code_style-eslint-yellow.svg?style=for-the-badge)](https://github.com/equivalent/airbnb-eslint-config)

## Real-time Multiplayer Platform for Browser-based Game Nights

Game Room is a lightweight, real-time multiplayer platform designed for hosting browser-based game nights. It offers lobby management, turn-based logic, and live score updates, making it perfect for trivia nights, card games, or real-time strategy matches with friends scattered across time zones.

## Key Features

- **Lobby Management**: Create custom rooms with shareable invite links.
- **Real-Time Sync**: Live score updates and state synchronization.
- **Spectator Mode**: Allow non-players to watch and chat.
- **WebRTC Fallback**: Peer-to-peer play with an automatic fallback mechanism for network stability.

## Getting Started

To set up a local Game Room instance, follow these steps:

1. Clone the repository: `git clone https://github.com/shubhyagami/game-room.git`
2. Install dependencies: `npm install`
3. Start the server: `npm start`

Once the server is running, open `http://localhost:3000` in your browser and invite your friends to test it out.

## Usage

Game Room supports up to 8 concurrent players in a single room with minimal latency. Use the `/party <room-name>` command in the app to generate a custom shareable invite link. Enable **Spectator Mode** in the lobby settings for non-players to watch and chat.

## Contributing

Contributions are welcome and greatly appreciated. To contribute, follow these steps:

1. Fork the repository.
2. Create a feature branch (`git checkout -b feat/amazing-feature`).
3. Commit your changes (`git commit -m 'feat: add an amazing feature'`).
4. Push to the branch (`git push origin feat/amazing-feature`).
5. Open a Pull Request.

Please ensure your code passes `npm test` and adheres to the existing ESLint configuration before submitting.

## Reporting Bugs

If you find a bug, please open an issue and include the following details:

- **Steps to reproduce**: Detailed actions to trigger the bug.
- **Expected behavior**: What you expected to happen.
- **Actual behavior**: What actually happened.
- **Environment**: OS, browser, and Node.js version.
- **Screenshots/Logs**: Any relevant error messages or visual context.

## License

Game Room is distributed under the MIT License. See `LICENSE` for more information.

## Contact

Shubhyagami - [@shubhyagami](https://github.com/shubhyagami)

Project Link: [https://github.com/shubhyagami/game-room](https://github.com/shubhyagami/game-room)
