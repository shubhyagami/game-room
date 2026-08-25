# Game Room
-------------
[![Build Status](https://img.shields.io/github/actions/workflow/status/shubhyagami/game-room/ci.yml?branch=main&style=for-the-badge&label=build)](https://github.com/shubhyagami/game-room/actions)
[![License](https://img.shields.io/github/license/shubhyagami/game-room?style=for-the-badge)](https://github.com/shubhyagami/game-room/blob/main/LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=for-the-badge)](http://makeapullrequest.com)
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-blue.svg?style=for-the-badge)](https://github.com/commitizen/cz-cli)
[![Code Style: ESLint](https://img.shields.io/badge/code_style-eslint-yellow.svg?style=for-the-badge)](https://github.com/equivalent/airbnb-eslint-config)

## Real-time Multiplayer Platform for Browser-based Game Nights

Game Room is a real-time, multiplayer platform designed for hosting browser-based game nights with friends. It offers lobby management, turn-based logic, and live score updates, making it perfect for trivia games, card games, or multiplayer strategy matches.

## Key Features

### Lobby Management

* Create and share custom rooms with invite links.
* Manage players and settings from a centralized lobby.

### Real-Time Sync

* Live score updates and state synchronization for seamless gameplay.
* Automate updates and eliminate latency issues.

### Spectator Mode

* Allow non-players to watch and chat in real-time.
* Ensure an immersive experience for everyone involved.

### WebRTC Fallback

* Automatic fallback mechanism for network stability.
* Ensure uninterrupted gameplay even in unreliable networks.

## Getting Started

To set up Game Room locally:

1. Clone the repository: `git clone https://github.com/shubhyagami/game-room.git`
2. Install dependencies: `npm install`
3. Run the server: `npm start`

Access Game Room by opening `http://localhost:3000` in your browser. Share the invite link to start playing with friends.

## Usage

* Supports up to 8 concurrent players with minimal latency.
* Use the `/party <room-name>` command to generate a custom invite link.
* Enable **Spectator Mode** to allow non-players to watch and chat.

## Contributing

Your contributions are invaluable to Game Room's growth. To contribute:

1. Fork the repository.
2. Create a feature branch (`git checkout -b feat/<feature-name>`).
3. Commit changes (`git commit -m '<commit-message>'`).
4. Push to the branch (`git push origin feat/<feature-name>`).
5. Submit a Pull Request.

## Reporting Bugs

If you encounter a bug, please:

1. Open an issue with detailed steps to reproduce.
2. Include expected behavior and actual behavior.
3. Attach relevant error messages, screenshots, or logs.
4. Specify your environment (OS, browser, and Node.js version).

## License

Game Room is distributed under the MIT License. See `LICENSE` for details.

## Contact

Shubhyagami - [@shubhyagami](https://github.com/shubhyagami)

Project Link: [https://github.com/shubhyagami/game-room](https://github.com/shubhyagami/game-room)
