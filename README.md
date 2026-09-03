# Game Room

![Build Status](https://img.shields.io/github/actions/workflow/status/shubhyagami/game-room/ci.yml?branch=main&style=for-the-badge&label=build)
![License](https://img.shields.io/github/license/shubhyagami/game-room?style=for-the-badge)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=for-the-badge)
![Code Style: ESLint](https://img.shields.io/badge/code_style-eslint-yellow?style=for-the-badge)

Game Room is a lightweight, real‑time web application that lets friends play browser‑based, turn‑based games together.  
It provides a simple lobby, live score updates, spectator mode, and a fallback for unstable connections.

> **Table of Contents**  
> • [Getting Started](#getting-started)  
> • [Features](#features)  
> • [Architecture](#architecture)  
> • [Usage](#usage)  
> • [Development](#development)  
> • [Testing](#testing)  
> • [Contributing](#contributing)  
> • [Changelog](#changelog)  
> • [License](#license)  
> • [Maintainers](#maintainers)

---

## Getting Started

### Prerequisites

- Node.js 20 or newer
- npm (comes with Node.js)

### Install & Run

```bash
# 1️⃣ Clone the repo
git clone https://github.com/shubhyagami/game-room.git
cd game-room

# 2️⃣ Install dependencies
npm install

# 3️⃣ Start the server (default 3000)
npm start
```

Open <http://localhost:3000> in your browser, create a room, and invite friends.

> **Tip**: During development use `npm run dev` for hot reloading.

---

## Features

- **Lobby management** – Create rooms, generate permanent invite links, set player limits.
- **Real‑time sync** – Live score updates via WebSocket, with graceful fallback.
- **WebRTC fallback** – Keeps the game functional on flaky connections.
- **Spectator mode** – Non‑players can watch and chat while the game runs.
- **Scalable latency** – Designed for up to 8 concurrent players with minimal lag.

---

## Architecture

```
┌──────────────────────┐
│  Browser Client     │
│  (React / Vanilla JS) │
└─────────────┬────────┘
              │
              ▼
     ┌─────────────────┐
     │  Express Server │
     │  (Node.js v20+) │
     └───────┬─────────┘
             │
             ├───── Socket.io (WebSocket) ────────┐
             │                                │
             └───── WebRTC (PeerConnection) ────────┘
```

- The client connects to the server via WebSocket for fast updates.  
- WebRTC is used only if the WebSocket connection drops; it keeps the game loop alive.  
- Everything is written in JavaScript with ESLint enforcing the Airbnb style guide.

---

## Usage

Below are common actions you can perform from the UI or chat commands.

| Action | UI/Chat Command | Notes |
|--------|-----------------|-------|
| Create a room | **Create Room** button | Generates a unique invite link. |
| Join a room | Paste link into **Join Room** field, or `@join <link>` | |
| Spectate | Toggle **Spectate** in the lobby | Join as a viewer; you can chat. |
| Leave | **Leave** button or `/leave` command | |
| Swap seats | Drag‑and‑drop in the lobby | Only owners can swap positions. |

---

## Development

```bash
# Install dependencies
npm install

# Development server with live reload
npm run dev

# Lint the codebase
npm run lint

# Run tests
npm test
```

### Environment Variables

| Variable    | Description                                 | Default  |
|-------------|---------------------------------------------|----------|
| `PORT`      | Server listening port                       | `3000`   |
| `NODE_ENV`  | Runtime mode (`development` / `production`) | `development` |

---

## Testing

Run the test suite with:

```bash
npm test
```

All tests are written with Jest and cover core game logic and API endpoints.

---

## Contributing

1. Fork the repository and create a feature branch: `git checkout -b feat/<name>`  
2. Commit with a clear, conventional message.  
3. Push to your fork: `git push origin feat/<name>`  
4. Open a pull request.

> Please run `npm run lint` before submitting and write unit tests for new features.

---

## Changelog

### 0.3.0 – 2026‑08‑28
- Added WebRTC fallback for unstable connections.  
- Introduced spectator mode with chat.  
- Improved lobby UI for better room management.

*(Additional releases will be documented here.)*

---

## License

MIT © [Shubhyagami](https://github.com/shubhyagami)

---

## Maintainers

- **Shubhyagami** – [GitHub](https://github.com/shubhyagami) – [@shubhyagami](https://github.com/shubhyagami)

---
