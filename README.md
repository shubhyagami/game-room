# Game Room

[![GitHub stars](https://img.shields.io/github/stars/shubhyagami/game-room?style=for-the-badge)](https://github.com/shubhyagami/game-room/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/shubhyagami/game-room?style=for-the-badge)](https://github.com/shubhyagami/game-room/network)
[![GitHub license](https://img.shields.io/github/license/shubhyagami/game-room?style=for-the-badge)](https://github.com/shubhyagami/game-room/blob/main/LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=for-the-badge)](http://makeapullrequest.com)

A lightweight, real-time multiplayer platform for hosting browser-based game nights. Handle lobby management, turn-based logic, and live score updates out of the box.

## Features

- **Lobby Management**: Create custom rooms with shareable invite links.
- **Real-Time Sync**: Live score updates and state synchronization.
- **Spectator Mode**: Allow non-players to watch and chat.
- **WebRTC Fallback**: Peer-to-peer play with fallback for network stability.

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

- Node.js (v16 or higher)
- npm

### Installation

```bash
git clone https://github.com/shubhyagami/game-room.git
cd game-room
npm install
npm start
```

Open `http://localhost:3000` and invite your friends!

## Usage

Host a trivia night, card game, or real-time strategy match with friends scattered across time zones. Game Room easily supports up to 8 concurrent players in a single room with minimal latency.

**Tips:**
- Use the `/party <room-name>` command in the app to generate a custom shareable invite link.
- Enable **spectator mode** in the lobby settings for non-players to watch and chat.

## Contributing

Contributions are what make the open-source community such a fantastic place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feat/amazing-feature`)
3. Commit your Changes (`git commit -m 'feat: add some amazing feature'`)
4. Push to the Branch (`git push origin feat/amazing-feature`)
5. Open a Pull Request

Please ensure your code passes `npm test` and adheres to the existing ESLint configuration before submitting.

### Reporting Bugs

If you find a bug, please open an issue and include the following details:

- **Steps to reproduce**: Detailed actions to trigger the bug.
- **Expected behavior**: What you expected to happen.
- **Actual behavior**: What actually happened.
- **Environment**: OS, browser, and Node.js version.
- **Screenshots/Logs**: Any relevant error messages or visual context.

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Contact

Shubhyagami - [@shubhyagami](https://github.com/shubhyagami)

Project Link: [https://github.com/shubhyagami/game-room](https://github.com/shubhyagami/game-room)
