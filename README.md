# Game Room

![Build Status](https://img.shields.io/github/actions/workflow/status/shubhyagami/game-room/ci.yml?branch=main&style=for-the-badge&label=build)
![Code Coverage](https://img.shields.io/codecov/c/github/shubhyagami/game-room?style=for-the-badge)
![MIT License](https://img.shields.io/github/license/shubhyagami/game-room?style=for-the-badge)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=for-the-badge)
![ESLint](https://img.shields.io/badge/code_style-eslint-yellow?style=for-the-badge)

Game Room is a browser‑based, turn‑based multiplayer game platform.  
Create private rooms, share permanent invite links, and play games in real time with live score updates. When the WebSocket disconnects, a WebRTC fallback keeps the game loop alive. Spectators can watch and chat without affecting gameplay.

---

## Table of Contents

- [Quick Start](#quick-start)
- [Features](#features)
- [Architecture](#architecture)
- [Using the App](#using-the-app)
- [Development](#development)
- [Testing](#testing)
- [Contributing](#contributing)
- [Changelog](#changelog)
- [License](#license)
- [Maintainers](#maintainers)

---

## Quick Start

```bash
git clone https://github.com/shubhyagami/game-room.git
cd game-room
npm install
npm start
```

Open <http://localhost:3000> in a browser, create or join a room, and start playing.

**Prerequisites**  
- Node.js 20+ (npm is bundled)

---

## Features

| Feature                | Description |
|------------------------|-------------|
| Lobby                  | Create rooms, set player limits, and generate permanent invite links |
| Real‑time sync         | WebSocket updates for instant score changes |
| WebRTC fallback        | Keeps the game loop alive when the socket drops |
| Spectator mode         | Viewers can watch and chat without impacting gameplay |
| Low latency            | Optimized for up to 8 simultaneous players |
| Hot‑reload             | Development server updates code instantly |

---

## Architecture

```
Browser (React) ──► Express (Node.js) ──► Socket.io / WebRTC
```

The React client talks to the Express server over WebSocket. When the socket disconnects, a PeerConnection maintains the game flow. All code is written in JavaScript and linted with ESLint (Airbnb style).

---

## Using the App

| Action          | UI / Command                | Notes                              |
|-----------------|----------------------------|------------------------------------|
| Create a room   | "Create Room" button       | Generates an invite link           |
| Join a room     | "Join Room" field or `/join <link>` |                                      |
| Spectate        | Toggle "Spectate" in lobby | Can chat while watching            |
| Leave           | "Leave" button or `/leave` |                                      |
| Swap seats      | Drag‑and‑drop in lobby      | Only the room owner can move seats |

---

## Development

```bash
# Install dependencies
npm install

# Run the dev server (client + server hot reload)
npm run dev

# Lint the code
npm run lint
```

### Environment Variables

| Variable   | Description                                | Default |
|------------|--------------------------------------------|---------|
| `PORT`     | Server listening port                      | `3000`  |
| `NODE_ENV` | Runtime mode (`development` / `production`) | `development` |

---

## Testing

The test suite uses Jest and covers core game logic and API endpoints.

```bash
npm test
```

---

## Contributing

1. Fork the repo and create a feature branch: `git checkout -b feat/<name>`
2. Commit with a clear, conventional message.
3. Push to your fork: `git push origin feat/<name>`
4. Open a pull request.

Before submitting, run `npm run lint` and add unit tests for new features.

---

## Changelog

**0.3.0 – 2026‑08‑28**

- Added WebRTC fallback for unstable connections  
- Introduced spectator mode with chat  
- Improved lobby UI for room management  

*Future releases will be documented here.*

---

## License

MIT © [Shubhyagami](https://github.com/shubhyagami)

---

## Maintainers

- **Shubhyagami** – [GitHub](https://github.com/shubhyagami) – @shubhyagami
