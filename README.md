# Game Room

[![Build Status](https://img.shields.io/github/actions/workflow/status/shubhyagami/game-room/ci.yml?branch=main&style=for-the-badge&label=build)](https://github.com/shubhyagami/game-room/actions)
[![Test Status](https://img.shields.io/github/actions/workflow/status/shubhyagami/game-room/tests.yml?branch=main&style=for-the-badge&label=tests)](https://github.com/shubhyagami/game-room/actions)
[![Coverage](https://img.shields.io/codecov/c/github/shubhyagami/game-room?style=for-the-badge&label=coverage)](https://app.codecov.io/gh/shubhyagami/game-room)
[![License](https://img.shields.io/github/license/shubhyagami/game-room?style=for-the-badge)](./LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=for-the-badge)](https://github.com/shubhyagami/game-room/pulls)
[![ESLint](https://img.shields.io/badge/code_style-eslint-yellow.svg?style=for-the-badge)](https://github.com/equivalent/airbnb-eslint-config)

## Overview

Game Room is a lightweight, real‑time platform for hosting browser‑based multiplayer game nights. It works with lobby‑managed, turn‑based games such as trivia, card games, and strategy games. All participants see live score updates, while non‑players can watch the game in spectator mode and chat.

## Features

- **Lobby Management** – Create rooms, generate invite links, and adjust player settings.
- **Real‑time Sync** – Automatic state synchronization and live score updates with graceful WebSocket fallback.
- **Spectator Mode** – Watch non‑player games and participate in chat.
- **WebRTC Fallback** – Maintain gameplay on unstable connections.
- **Scalable** – Supports up to 8 concurrent players with low latency.

## Getting Started

```bash
# 1️⃣  Clone the repository
git clone https://github.com/shubhyagami/game-room.git
cd game-room

# 2️⃣  Install dependencies
npm install

# 3️⃣  Start the server (default port 3000)
npm start
```

Open <http://localhost:3000> in your browser, create an invite link, and invite friends.  
`npm run dev` starts the server with hot reloading.

## Usage

| Action | How |
|--------|-----|
| **Create a room** | Type `/party <room‑name>` in the console or click **Create Room** in the UI. |
| **Join a room** | Click the invite link or paste it into the **Join Room** field. |
| **Spectate** | Enable **Spectate** in the lobby to watch the game and chat. |
| **Player controls** | Players can join, leave, or swap positions directly from the lobby interface. |

## Development

| Task | Command |
|------|---------|
| Install dependencies | `npm install` |
| Run dev server | `npm run dev` |
| Lint | `npm run lint` |
| Test | `npm test` |
| Build | `npm run build` |

### Environment Variables

| Variable | Default | Description |
|----------|---------|-------------|
| `PORT` | `3000` | Port on which the server listens. |
| `NODE_ENV` | `production` | Set to `production` for a production build. |

## Contributing

1. Fork the repository.  
2. Create a feature branch: `git checkout -b feat/<feature-name>`.  
3. Commit with a clear message: `git commit -m '<description>'`.  
4. Push: `git push origin feat/<feature-name>`.  
5. Open a pull request.

> Follow the existing code style, run `npm run lint` before submitting, and add tests for new functionality.

## Changelog

### 0.3.0 – 2026‑08‑28

- Added WebRTC fallback for unstable connections.  
- Introduced Spectator Mode with chat.  
- Improved lobby UI for better room management.

*(Future releases will be documented here.)*

## License

Distributed under the MIT License. See the `LICENSE` file for details.

## Contact

- **Shubhyagami** – [GitHub](https://github.com/shubhyagami) – [Twitter](https://twitter.com/shubhyagami)  
- Project repo: [https://github.com/shubhyagami/game-room](https://github.com/shubhyagami/game-room)

*Last updated: 2026‑08‑28*
