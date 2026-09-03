# Game Room

[![Build Status](https://img.shields.io/github/actions/workflow/status/shubhyagami/game-room/ci.yml?branch=main&style=for-the-badge&label=build)](https://github.com/shubhyagami/game-room/actions)
[![License](https://img.shields.io/github/license/shubhyagami/game-room?style=for-the-badge)](https://github.com/shubhyagami/game-room/blob/main/LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=for-the-badge)](https://github.com/shubhyagami/game-room/pulls)
[![Code Style: ESLint](https://img.shields.io/badge/code_style-eslint-yellow.svg?style=for-the-badge)](https://github.com/equivalent/airbnb-eslint-config)

---

## Overview

Game Room is a lightweight, real‑time platform for hosting browser‑based multiplayer game nights.  
It supports lobby‑managed, turn‑based games such as trivia, card games, and strategy games.  
All participants see live score updates, while non‑players can watch in spectator mode and chat.

---

## Features

- **Lobby management** – Create rooms, generate invite links, and adjust player settings.  
- **Real‑time sync** – Live score updates with graceful WebSocket fallback.  
- **WebRTC fallback** – Keep gameplay running on unstable connections.  
- **Spectator mode** – Watch non‑player games and participate in chat.  
- **Low‑latency scalability** – Up to 8 concurrent players without noticeable lag.

---

## Tech Stack

- Node.js (v20+)
- Express (or similar)  
- Socket.io / WebRTC  
- ESLint (Airbnb style)

---

## Quick Start

> **Prerequisites**: Node.js 20+

```bash
# 1️⃣ Clone the repository
git clone https://github.com/shubhyagami/game-room.git
cd game-room

# 2️⃣ Install dependencies
npm install

# 3️⃣ Start the server (default port 3000)
npm start
```

Open `http://localhost:3000` in a browser, create an invite link, and invite friends.

> **Tip**: During development run `npm run dev` to enable hot reloading.

---

## Usage

| Action         | How to do it                                                | Notes |
|----------------|-------------------------------------------------------------|-------|
| Create a room  | Click **Create Room** in the UI or type `/party <name>` in chat | |
| Join a room    | Click the invite link or paste it into **Join Room** field | |
| Spectate       | Enable **Spectate** in the lobby                            | |
| Player actions | Join, leave, or swap positions directly from the lobby | |

---

## Development

```bash
# Install dependencies
npm install

# Development server (hot reloading)
npm run dev

# Linting
npm run lint

# Tests
npm test
```

### Environment variables

| Variable  | Description                          | Default |
|-----------|--------------------------------------|---------|
| `PORT`    | Server listening port                | `3000`  |
| `NODE_ENV` | Runtime mode (development/production) | `development` (use `production` for deployment) |

---

## Contributing

1. Fork the repository.  
2. Create a feature branch: `git checkout -b feat/<name>`.  
3. Commit with a clear message.  
4. Push: `git push origin feat/<name>`.  
5. Open a pull request.

Please run `npm run lint` before submitting and add tests for new features.

---

## Changelog

### 0.3.0 – 2026‑08‑28
- Added WebRTC fallback for unstable connections.  
- Introduced spectator mode with chat.  
- Improved lobby UI for better room management.

*(Further releases will be documented here.)*

---

## License

MIT © [Shubhyagami](https://github.com/shubhyagami)

---

## Maintainers

- **Shubhyagami** – [GitHub](https://github.com/shubhyagami) – [@shubhyagami](https://github.com/shubhyagami)

Last updated: 2026‑09‑02
