# Game Room

A browser‑based, turn‑based multiplayer platform that lets you create private rooms, share permanent invite links, and play in real time with live score updates. If a WebSocket disconnects, a WebRTC fallback keeps the game loop alive while spectators can watch and chat without affecting gameplay.

![Build Status](https://img.shields.io/github/actions/workflow/status/shubhyagami/game-room/ci.yml?branch=main&style=for-the-badge&label=build)  
![Code Coverage](https://img.shields.io/codecov/c/github/shubhyagami/game-room?style=for-the-badge)  
![MIT License](https://img.shields.io/github/license/shubhyagami/game-room?style=for-the-badge)  
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=for-the-badge)  
![ESLint](https://img.shields.io/badge/code_style-eslint-yellow?style=for-the-badge)

---

## Features

| Feature | Description |
|---------|-------------|
| **Lobby** | Create rooms, set a player limit, and generate permanent invite links. |
| **Real‑time sync** | Instant score updates via WebSocket. |
| **WebRTC fallback** | Keeps the game loop running when the socket drops. |
| **Spectator mode** | Viewers can watch and chat without influencing gameplay. |
| **Low latency** | Optimised for up to eight concurrent players. |
| **Hot reload** | Development server reflects changes immediately. |

---

## Quick Start

```bash
git clone https://github.com/shubhyagami/game-room.git
cd game-room
npm install          # or `npm ci` for clean install
npm run dev           # starts the client & server with hot‑reload
```

Open <http://localhost:3000> in a browser, create or join a room, and start playing.

> **Prerequisites** – Node.js 20 or later (npm comes bundled).

---

## Architecture

```
Browser (React) ⟶ Express (Node.js) ⟶ Socket.io / WebRTC
```

The React client talks to the Express server over WebSockets.  
When the socket disconnects, a PeerConnection keeps the game state in sync.  
The entire codebase is written in JavaScript, linted with Airbnb‑style ESLint.

---

## Using the App

| Action | UI / Command | Notes |
|--------|--------------|-------|
| **Create a room** | “Create Room” button | Generates a permanent invite link |
| **Join a room** | “Join Room” field or `/join <link>` |  |
| **Spectate** | Toggle “Spectate” in the lobby | Viewers can chat while watching |
| **Leave** | “Leave” button or `/leave` |  |
| **Swap seats** | Drag‑and‑drop | Only the room owner can move seats |

---

## Development

```bash
# Install or update dependencies
npm install

# Start the development server (client + server hot reload)
npm run dev

# Lint the codebase
npm run lint
```

### Environment Variables

| Variable   | Description                     | Default     |
|------------|----------------------------------|-------------|
| `PORT`     | Server listening port            | `3000`      |
| `NODE_ENV` | Runtime mode (`development`/`production`) | `development` |

---

## Testing

The test suite uses Jest and covers core game logic and API endpoints.

```bash
npm test
```

Run `npm test -- --watch` for interactive testing.

---

## Contributing

1. Fork the repository and create a branch: `git checkout -b feat/<name>`.  
2. Follow [conventional commit](https://www.conventionalcommits.org/) style.  
3. Push the branch and open a pull request.  
4. Before submitting, run `npm run lint` and add relevant unit tests.

Pull requests should be small and focused.

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
