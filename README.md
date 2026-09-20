# Game Room

**Game Room** is a lightweight, browser‑based, turn‑based multiplayer platform written in JavaScript. It lets you create private lobbies, generate permanent invite links, and play in real time with instant score updates. When a WebSocket disconnects, an integrated WebRTC fallback keeps the game loop alive, while spectators can watch and chat without affecting gameplay.

![Build](https://img.shields.io/github/actions/workflow/status/shubhyagami/game-room/ci.yml?branch=main&style=for-the-badge&label=build)
![Coverage](https://img.shields.io/codecov/c/github/shubhyagami/game-room?style=for-the-badge)
![License](https://img.shields.io/github/license/shubhyagami/game-room?style=for-the-badge)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=for-the-badge)
![Node 20+](https://img.shields.io/badge/node-20%2B-brightgreen?style=for-the-badge)

---

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Quick Start](#quick-start)
- [Getting Started](#getting-started)
- [Architecture](#architecture)
- [Development](#development)
- [Testing](#testing)
- [Contributing](#contributing)
- [Changelog](#changelog)
- [License](#license)
- [Maintainers](#maintainers)

---

## Overview

Game Room provides:

- **Private lobbies** with configurable player caps
- **Permanent invite links** that never expire
- **Real‑time gameplay** – turns and scores sync instantly via Socket.io
- **WebRTC fallback** that keeps the game loop running when the WebSocket drops
- **Spectator mode** – viewers can watch and chat without influencing the game
- **Hot‑reload** for both client and server during development

---

## Features

| Feature                 | Description |
|-------------------------|-------------|
| Lobby management        | Create and configure rooms, set player limits, generate permanent invites |
| Real‑time sync          | Instant score and turn updates over Socket.io |
| WebRTC fallback         | Maintains game state when the socket fails |
| Spectator mode          | Viewers can watch and chat while games continue |
| Low latency             | Optimised for up to eight concurrent players |
| Development workflow    | Hot‑reload for client and server |

---

## Quick Start

```bash
git clone https://github.com/shubhyagami/game-room.git
cd game-room
npm ci          # Clean install dependencies
npm run dev     # Start client & server with hot‑reload
```

Open <http://localhost:3000> in a browser, create or join a room, and start playing.

> **Prerequisites** – Node.js 20 or newer (npm is bundled).

---

## Getting Started

```bash
# Install or update dependencies
npm ci

# Build assets (optional – used by the production server)
npm run build

# Start the development environment
npm run dev
```

The dev command serves the React client on **3000** and starts the Express + Socket.io backend on the same port with automatic reloading. Any changes to the source tree are reflected instantly.

---

## Architecture

```
React (client)  <->  Express (Node.js)  <->  Socket.io / WebRTC
```

- **Client** – React, styled with Tailwind, communicates with the server via Socket.io. On socket disconnect the client falls back to a `RTCPeerConnection` to keep receiving game state.
- **Server** – Express handles HTTP routes and serves static assets. Socket.io manages real‑time state synchronization. The fallback logic lives on both sides.
- **Code style** – Airbnb’s ESLint rules and Prettier keep the codebase consistent.

---

## Development

```bash
# Install dependencies
npm ci

# Start the development server (client + server)
npm run dev

# Lint the code
npm run lint
```

### Environment Variables

| Variable   | Description                                 | Default |
|------------|---------------------------------------------|---------|
| `PORT`     | Server listening port                        | `3000`  |
| `NODE_ENV` | Runtime mode (`development` / `production`) | `development` |

---

## Testing

The test suite uses Jest. Core game logic and API endpoints are covered by unit tests.

```bash
npm test           # Run tests once
npm test -- --watch  # Run in watch mode
```

---

## Contributing

1. Fork the repository and create a feature branch: `git checkout -b feat/<name>`.
2. Follow the [conventional‑commit](https://www.conventionalcommits.org/) spec.
3. Run `npm run lint` and add unit tests for any new functionality.
4. Submit a focused pull request.

Pull requests are welcome and appreciated!

---

## Changelog

### 0.3.0 – 2026‑08‑28
- Added WebRTC fallback for unstable connections
- Introduced spectator mode with chat
- Improved lobby UI for room management

---

## License

MIT © [Shubhyagami](https://github.com/shubhyagami)

---

## Maintainers

- **Shubhyagami** – [GitHub](https://github.com/shubhyagami) – @shubhyagami
