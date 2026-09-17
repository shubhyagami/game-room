# Game Room

Game Room is a lightweight, browser‑based, turn‑based multiplayer platform.  
Players can create private rooms, share permanent invite links, and play in real time with instant score updates.  
If the WebSocket disconnects, a WebRTC fallback keeps the game loop alive while spectators can watch and chat without affecting gameplay.

![Build Status](https://img.shields.io/github/actions/workflow/status/shubhyagami/game-room/ci.yml?branch=main&style=for-the-badge&label=build)  
![Code Coverage](https://img.shields.io/codecov/c/github/shubhyagami/game-room?style=for-the-badge)  
![License](https://img.shields.io/github/license/shubhyagami/game-room?style=for-the-badge)  
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=for-the-badge)  
![Node.js 20+](https://img.shields.io/badge/node-20%2B-brightgreen?style=for-the-badge)  

---

## Table of contents

- [Overview](#overview)
- [Features](#features)
- [Quick start](#quick-start)
- [Architecture](#architecture)
- [Basic usage](#basic-usage)
- [Development](#development)
- [Testing](#testing)
- [Contributing](#contributing)
- [Changelog](#changelog)
- [License](#license)
- [Maintainers](#maintainers)

---

## Overview

Game Room offers:

- **Private lobbies** with a configurable player limit.
- **Permanent invite links** that work forever.
- **Real‑time gameplay** – turns and scores sync instantly via WebSocket.
- **WebRTC fallback** ensures continuity if the socket drops.
- **Spectator mode** – viewers can watch and chat without influencing the game.
- **Hot‑reload development** for both client and server.

---

## Features

| Area | Detail |
|------|--------|
| Lobby | Create rooms, set player cap, generate permanent invites |
| Real‑time sync | Instant score & turn updates (Socket.io) |
| WebRTC fallback | Keeps game loop alive when connections fail |
| Spectator mode | Viewers can chat while watching |
| Low latency | Optimised for up to eight concurrent players |
| Hot reload | Development server auto‑updates on file changes |

---

## Quick start

```bash
git clone https://github.com/shubhyagami/game-room.git
cd game-room
npm ci        # clean install
npm run dev   # start client & server with hot‑reload
```

Open <http://localhost:3000> in a browser, create or join a room, and start playing.

> **Prerequisites** – Node.js 20 or newer (npm is bundled).

---

## Architecture

```
React (browser) ⟶ Express (Node.js) ⟶ Socket.io / WebRTC
```

The client talks to the Express server over WebSockets. If the socket disconnects, a `RTCPeerConnection` takes over to keep the game state synchronized. All code is written in JavaScript and linted with Airbnb’s ESLint configuration.

---

## Basic usage

| Action | UI / Command | Notes |
|--------|--------------|-------|
| Create a room | “Create Room” button | Generates a permanent invite link |
| Join a room | “Join Room” field or `/join <link>` |  |
| Spectate | Toggle “Spectate” in the lobby | Viewers can chat while watching |
| Leave | “Leave” button or `/leave` |  |
| Swap seats | Drag‑and‑drop | Only the room owner may move seats |

---

## Development

```bash
# Install/update dependencies
npm ci

# Start dev server (client + server hot reload)
npm run dev

# Run linter
npm run lint
```

### Environment variables

| Variable   | Description                               | Default      |
|------------|-------------------------------------------|--------------|
| `PORT`     | Server listening port                      | `3000`       |
| `NODE_ENV` | Runtime mode (`development` / `production`) | `development` |

---

## Testing

Run the test suite with Jest. The tests cover core game logic and API endpoints.

```bash
npm test
# Watch mode
npm test -- --watch
```

---

## Contributing

1. Fork the repository and create a feature branch: `git checkout -b feat/<name>`.
2. Follow the [conventional‑commit](https://www.conventionalcommits.org/) format.
3. Run `npm run lint` and add unit tests for any new functionality.
4. Submit a small, focused pull request.

Pull requests are welcome and appreciated!

---

## Changelog

### 0.3.0 – 2026‑08‑28
- Added WebRTC fallback for unstable connections.
- Introduced spectator mode with chat.
- Improved lobby UI for room management.

---

## License

MIT © [Shubhyagami](https://github.com/shubhyagami)

---

## Maintainers

- **Shubhyagami** – [GitHub](https://github.com/shubhyagami) – @shubhyagami
