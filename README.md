# Game Room

![Build Status](https://img.shields.io/github/actions/workflow/status/shubhyagami/game-room/ci.yml?branch=main&style=for-the-badge&label=build)  
![License](https://img.shields.io/github/license/shubhyagami/game-room?style=for-the-badge)  
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=for-the-badge)  
![Code Style: ESLint](https://img.shields.io/badge/code_style-eslint-yellow?style=for-the-badge)

Game Room is a lightweight, real‑time web app that lets friends play simple turn‑based browser games together.  
It features a lobby, live score updates, spectator mode, and a WebRTC fallback for unstable connections.

---

## Table of contents

- [Overview](#overview)
- [Getting Started](#getting-started)
- [Features](#features)
- [Architecture](#architecture)
- [Usage](#usage)
- [Development](#development)
- [Testing](#testing)
- [Contributing](#contributing)
- [Changelog](#changelog)
- [License](#license)
- [Maintainers](#maintainers)

---

## Overview

- **Browser‑based** – no need to install extra software
- **Real‑time** – live score updates via WebSocket
- **Reliable** – WebRTC fallback keeps the game loop alive if the socket drops
- **Spectator mode** – non‑players can watch and chat
- **Lightweight** – runs on a single Node.js process and a React front‑end

---

## Getting Started

### Quick start

```bash
git clone https://github.com/shubhyagami/game-room.git
cd game-room
npm install
npm start
```

Open <http://localhost:3000> in your browser, create a room, and invite friends.

### Prerequisites

- Node.js **20+** (npm is bundled)

### Development mode

```bash
npm run dev   # hot‑reload server and client
```

---

## Features

| Feature            | Description |
|---------------------|-------------|
| **Lobby** | Create rooms, set player limits, and generate permanent invite links |
| **Real‑time sync** | Live score updates via WebSocket; graceful fallback to WebRTC |
| **WebRTC fallback** | Keeps the game loop running if the socket disconnects |
| **Spectator mode** | Viewers can chat while the game continues |
| **Low latency** | Optimised for up to 8 concurrent players with minimal lag |

---

## Architecture

```
Browser (React) ──► Express (Node.js) ──► Socket.io / WebRTC
```

The client talks to the server over a WebSocket for fast updates.  
If the socket disconnects, a `PeerConnection` keeps the game loop alive.  
All code is written in JavaScript and linted with ESLint using Airbnb’s style guide.

---

## Usage

| Action          | UI / Chat command | Notes |
|-----------------|-------------------|-------|
| Create a room   | **Create Room** button | Generates an invite link |
| Join a room     | Paste link into **Join Room** field or `@join <link>` | |
| Spectate        | Toggle **Spectate** in the lobby | Join as a viewer and chat |
| Leave           | **Leave** button or `/leave` | |
| Swap seats      | Drag‑and‑drop in the lobby | Only the room owner can swap positions |

---

## Development

```bash
# Install dependencies
npm install

# Run the dev server with hot reloading
npm run dev

# Lint the codebase
npm run lint

# Test
npm test
```

### Environment variables

| Variable   | Description                            | Default   |
|-----------|----------------------------------------|-----------|
| `PORT`    | Server listening port                  | `3000`    |
| `NODE_ENV`| Runtime mode (`development` / `production`) | `development` |

---

## Testing

The test suite uses Jest and covers core game logic and API endpoints.

```bash
npm test
```

---

## Contributing

1. Fork the repo and create a feature branch: `git checkout -b feat/<name>`  
2. Commit with a clear, conventional message  
3. Push to your fork: `git push origin feat/<name>`  
4. Open a pull request

Before submitting, run `npm run lint` and write unit tests for any new features.

---

## Changelog

**0.3.0 – 2026‑08‑28**

- Added WebRTC fallback for unstable connections  
- Introduced spectator mode with chat  
- Improved lobby UI for better room management  

*(Future releases will be documented here.)*

---

## License

MIT © [Shubhyagami](https://github.com/shubhyagami)

---

## Maintainers

- **Shubhyagami** – [GitHub](https://github.com/shubhyagami) – @shubhyagami
