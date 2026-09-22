# Game Room

**Game Room** is a lightweight, browser‑based, turn‑based multiplayer platform built with React, Express, Socket.io, and WebRTC. It lets you create private lobbies, generate permanent invite links, and play in real‑time with instant score updates. When a WebSocket disconnects, a WebRTC fallback keeps the game loop alive, while spectators can watch and chat without affecting gameplay.

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

Game Room offers a straightforward way to host private turn‑based games:

- **Private lobbies** with configurable player caps  
- **Permanent, non‑expiring invite links**  
- **Real‑time gameplay** – turns and scores sync instantly via Socket.io  
- **WebRTC fallback** keeps the game alive when the WebSocket drops  
- **Spectator mode** – viewers can watch and chat without influencing the game  
- **Hot‑reload** for both client and server during development  

---

## Features

| Feature               | Description |
|------------------------|-------------|
| Lobby management      | Create rooms, set player limits, generate invites |
| Real‑time sync        | Score and turn updates over Socket.io |
| WebRTC fallback       | Maintains state when the socket fails |
| Spectator mode        | Watch & chat while games continue |
| Low latency support   | Optimised for up to 8 concurrent players |
| Hot‑reload workflow   | Client and server auto‑refresh on changes |

---

## Quick Start

```text
    git clone https://github.com/shubhyagami/game-room.git
    cd game-room
    npm ci
    npm run dev
```

Open <http://localhost:3000> in a browser, create or join a room, and start playing.

**Prerequisites** – Node.js 20 or newer (npm is bundled).

---

## Getting Started

```text
    # Install dependencies
    npm ci

    # Build assets for production (optional)
    npm run build

    # Start the development environment
    npm run dev
```

`npm run dev` serves the React client on **3000** and starts an Express + Socket.io backend on the same port with automatic reloading. Any changes to the source tree are reflected instantly.

---

## Architecture

```
React (client)  <->  Express (Node.js)  <->  Socket.io / WebRTC
```

- **Client** – React + Tailwind. Communicates via Socket.io; falls back to `RTCPeerConnection` on socket disconnect.  
- **Server** – Express handles HTTP routes and serves static assets. Socket.io handles real‑time state; fallback logic lives in both client and server.  
- **Code style** – Airbnb ESLint + Prettier enforce consistency.

---

## Development

```text
    # Install dependencies
    npm ci

    # Start dev server (client + server)
    npm run dev

    # Run linter
    npm run lint
```

### Environment Variables

| Variable   | Description                      | Default  |
|-----------|-----------------------------------|----------|
| `PORT`    | Server listening port             | `3000`   |
| `NODE_ENV`| Runtime mode (`development`/`production`) | `development` |

---

## Testing

The test suite uses Jest. Core game logic and API endpoints are covered by unit tests.

```text
    npm test                 # Run tests once
    npm test -- --watch      # Run in watch mode
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

- **Shubhyagami** – <https://github.com/shubhyagami> – @shubhyagami

---
