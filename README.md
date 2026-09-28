[K[2m  [2mmodel z-ai/glm-5.3-flash failed, trying next...[0m[0m
[K[2m  [2mmodel deepseek-ai/deepseek-v4.1-flash failed, trying next...[0m[0m
# Game Room

[![Build](https://img.shields.io/github/actions/workflow/status/shubhyagami/game-room/ci.yml?branch=main&style=for-the-badge&label=build)](https://github.com/shubhyagami/game-room/actions)
[![Coverage](https://img.shields.io/codecov/c/github/shubhyagami/game-room?style=for-the-badge)](https://app.codecov.io/gh/shubhyagami/game-room)
[![License](https://img.shields.io/github/license/shubhyagami/game-room?style=for-the-badge)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=for-the-badge)](CONTRIBUTING.md)
[![Node 20+](https://img.shields.io/badge/node-20%2B-brightgreen?style=for-the-badge)](https://nodejs.org/en/download/)

Game Room is a lightweight, browser‑based, turn‑based multiplayer platform.  
It supports private lobbies, permanent invite links, real‑time score and turn updates, spectator chat, and a WebRTC fallback when a WebSocket disconnects.

> **Table of Contents**  
> • [Overview](#overview)  
> • [Features](#features)  
> • [Quick Start](#quick-start)  
> • [Development](#development)  
> • [Architecture](#architecture)  
> • [Environment Variables](#environment-variables)  
> • [Testing](#testing)  
> • [Contributing](#contributing)  
> • [Changelog](#changelog)  
> • [License](#license)  
> • [Maintainers](#maintainers)

---

## Overview

Game Room lets you create private, turn‑based games that stay online even if the WebSocket connection drops.  
Key aspects:

- **Private lobbies** – configure player limits and generate shareable invite links.
- **Real‑time sync** – Socket.IO delivers turn and score updates instantly.
- **WebRTC fallback** – keeps the game loop running during WebSocket outages.
- **Spectator mode** – observers can chat without affecting gameplay.
- **Hot reload** – client and server refresh automatically while you develop.

---

## Features

| Feature | Description |
|---|---|
| Lobby Management | Create rooms, set player limits, and share permanent invite links. |
| Real‑time Gameplay | Scores and turn updates are synchronized over Socket.IO. |
| WebRTC Fallback | Maintains state if the WebSocket disconnects. |
| Spectator Mode | View games and chat; spectators can’t influence the outcome. |
| Hot Reload | Both React client and Express server refresh on file changes. |
| Lightweight Stack | Built with React, Express, Socket.IO, Tailwind, and WebRTC. |

---

## Quick Start

> **Prerequisites** – Node.js 20+ (npm comes bundled).

```bash
# Clone the repository
git clone https://github.com/shubhyagami/game-room.git

# Enter the project
cd game-room

# Install dependencies
npm ci

# Launch development environment
npm run dev
```

Open <http://localhost:3000> in your browser. Create or join a room and start playing.

---

## Development

```bash
# Install all packages (runs automatically after cloning)
npm ci

# Start client + server with live reload
npm run dev

# Build production bundles
npm run build

# Lint code
npm run lint
```

The dev script starts:

- **React client** on `http://localhost:3000`
- **Express + Socket.IO server** on the same port
- Hot reloading for both client and server.

---

## Architecture

```
React Client   ↔   Express Server   ↔   Socket.IO / WebRTC
```

- **Client** – React + Tailwind. Uses Socket.IO for gameplay data and falls back to `RTCPeerConnection` if the socket disconnects.
- **Server** – Express handles HTTP routes and serves static assets. Socket.IO manages real‑time state, with WebRTC fallback logic on both sides.
- **Style** – Airbnb ESLint + Prettier ensure consistent formatting.

---

## Environment Variables

| Variable   | Description                         | Default |
|------------|-------------------------------------|---------|
| `PORT`     | Port the server listens on           | `3000`  |
| `NODE_ENV` | Runtime mode (`development` or `production`) | `development` |

Add a `.env` file in the project root if you need custom values.

---

## Testing

The test suite uses Jest.

```bash
# Run all tests once
npm test

# Run tests in watch mode (watch changes)
npm test -- --watch
```

Unit tests cover core game logic and API endpoints.

---

## Contributing

1. Fork the repository and create a feature branch:  
   `git checkout -b feat/<feature-name>`
2. Follow the [Conventional Commits](https://www.conventionalcommits.org/) specification.
3. Run `npm run lint` and add unit tests for any new features.
4. Submit a focused pull request. PRs are welcome!

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

---
