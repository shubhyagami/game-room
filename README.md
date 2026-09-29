[K[2m  [2mmodel z-ai/glm-5.3-flash failed, trying next...[0m[0m
[K[2m  [2mmodel deepseek-ai/deepseek-v4.1-flash failed, trying next...[0m[0m
# Game Room

![Build](https://img.shields.io/github/actions/workflow/status/shubhyagami/game-room/ci.yml?branch=main&style=for-the-badge&label=build)
![Coverage](https://img.shields.io/codecov/c/github/shubhyagami/game-room?style=for-the-badge)
![License](https://img.shields.io/github/license/shubhyagami/game-room?style=for-the-badge)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=for-the-badge)
![Node 20+](https://img.shields.io/badge/node-20%2B-brightgreen?style=for-the-badge)

Game Room is a lightweight, browser‑based, turn‑based multiplayer platform.  
It offers private lobbies, instant sync via Socket.IO, a WebRTC fallback for unstable
connections, spectator chat, and hot‑reload during development.

> **Table of Contents**  
> • [Overview](#overview)  
> • [Features](#features)  
> • [Quick‑Start](#quick-start)  
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

- **Private lobbies** – set the number of players, create permanent invite links, and share them with friends.  
- **Real‑time sync** – Socket.IO transmits turns, scores, and state changes instantly.  
- **WebRTC fallback** – keeps the game loop running if the WebSocket disconnects.  
- **Spectator mode** – observers can watch the game and chat without influencing it.  
- **Hot reload** – both the React client and the Express server reload on file changes, speeding up development.

---

## Features

| Feature | Description |
|---------|-------------|
| **Lobby Management** | Create and configure rooms, set player limits, and generate permanent invite links. |
| **Turn‑based Gameplay** | Scores and turns are synchronized in real time via Socket.IO. |
| **WebRTC Fallback** | Keeps the game state alive when the WebSocket drops. |
| **Spectator Mode** | View games and chat without affecting gameplay. |
| **Hot Reload** | Automatically refresh the client and server during development. |
| **Lightweight Tech Stack** | Built with React, Express, Socket.IO, Tailwind CSS, and WebRTC. |

---

## Quick‑Start

> **Prerequisites** – Node.js 20+ (npm is bundled).

```bash
# 1️⃣ Clone the repo
git clone https://github.com/shubhyagami/game-room.git

# 2️⃣ Enter the directory
cd game-room

# 3️⃣ Install dependencies
npm ci

# 4️⃣ Start the development server
npm run dev
```

Open <http://localhost:3000> in your browser. From there you can create or join a room and start playing.

---

## Development

```bash
# Install dependencies (runs automatically after cloning)
npm ci

# Start dev server (React client + Express + Socket.IO) with hot reloading
npm run dev

# Build production assets
npm run build

# Lint the codebase
npm run lint
```

The `dev` script launches:

* **React client** – `http://localhost:3000`
* **Express + Socket.IO server** – same port, handled behind the scenes
* Live reloading for both client and server code

---

## Architecture

```
React Client  ↔  Express Server  ↔  Socket.IO / WebRTC
```

* **Client** – React + Tailwind. Uses Socket.IO for gameplay data and falls back to `RTCPeerConnection` when the socket disconnects.  
* **Server** – Express serves HTTP routes and static assets. Socket.IO manages the real‑time state; WebRTC logic is handled on both sides.  
* **Style** – Airbnb ESLint + Prettier.

---

## Environment Variables

| Variable   | Description                               | Default     |
|------------|-------------------------------------------|------------|
| `PORT`     | Port for the server to listen on           | `3000`     |
| `NODE_ENV` | Runtime mode (`development` / `production`) | `development` |

Create a `.env` file in the project root to override any of these.

---

## Testing

The test suite uses Jest.

```bash
# Run all tests once
npm test

# Watch for changes
npm test -- --watch
```

Unit tests cover the core game logic and API endpoints.

---

## Contributing

1. Fork the repository and create a feature branch: `git checkout -b feat/<feature-name>`.  
2. Follow the [Conventional Commits](https://www.conventionalcommits.org/) specification.  
3. Run `npm run lint` and add unit tests for any new functionality.  
4. Open a focused pull request. PRs are welcome!

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

- **Shubhyagami** – <https://github.com/shubhyagami> – @shubhyagami

---
