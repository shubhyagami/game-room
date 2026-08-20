# Game Room

[![Build Status](https://img.shields.io/github/actions/workflow/status/shubhyagami/game-room/ci.yml?branch=main&style=for-the-badge&label=build)](https://github.com/shubhyagami/game-room/actions)
[![Stars](https://img.shields.io/github/stars/shubhyagami/game-room?style=for-the-badge)](https://github.com/shubhyagami/game-room/stargazers)
[![License](https://img.shields.io/github/license/shubhyagami/game-room?style=for-the-badge)](https://github.com/shubhyagami/game-room/blob/main/LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=for-the-badge)](http://makeapullrequest.com)

A lightweight, real-time multiplayer platform for hosting browser-based game nights. It handles lobby management, turn-based logic, and live score updates out of the box.

## Features

- **Lobby Management**: Create custom rooms with shareable invite links.
- **Real-Time Sync**: Live score updates and state synchronization.
- **Spectator Mode**: Allow non-players to watch and chat.
- **WebRTC Fallback**: Peer-to-peer play with automatic fallback for network stability.

## Getting Started

To get a local copy up and running, clone the repository and install the dependencies. Make sure you have [Node.js](https://nodejs.org/) (v16 or higher) and npm installed.

```bash
git clone https://github.com/shubhyagami/game-room.git
cd game-room
npm install
npm start
```

Once the server is running, open `http://localhost:3000` in your browser and invite your friends to test it out. 

## Usage

Game Room is designed for trivia nights, card games, or real-time strategy matches with friends scattered across time zones. It supports up to 8 concurrent players in a single room with minimal latency.

**Tips:**
- Use the `/party <room-name>` command in the app to generate a custom shareable invite link.
- Enable **Spectator Mode** in the lobby settings for non-players to watch and chat.

## Contributing

Contributions are what make the open-source community such a fantastic place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the repository.
2. Create your feature branch (`git checkout -b feat/amazing-feature`).
3. Commit your changes (`git commit -m 'feat: add an amazing feature'`).
4. Push to the branch (`git push origin feat/amazing-feature`).
5. Open a Pull Request.

Please ensure your code passes `npm test` and adheres to the existing ESLint configuration before submitting.

### Reporting Bugs

If you find a bug, please open an issue and include the following details:

- **Steps to reproduce**: Detailed actions to trigger the bug.
- **Expected behavior**: What you expected to happen.
- **Actual behavior**: What actually happened.
- **Environment**: OS, browser, and Node.js version.
- **Screenshots/Logs**: Any relevant error messages or visual context.

## Changelog

### v1.1.0 - 2026-08-20
- Refined lobby synchronization for up to 8 concurrent players.
- Improved WebRTC fallback logic to better handle unstable peer connections.
- Updated README structure for better clarity and onboarding.

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Contact

Shubhyagami - [@shubhyagami](https://github.com/shubhyagami)

Project Link: [https://github.com/shubhyagami/game-room](https://github.com/shubhyagami/game-room)
