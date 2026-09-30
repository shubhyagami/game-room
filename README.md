# Game Room

![Build](https://img.shields.io/github/actions/workflow/status/shubhyagami/game-room/ci.yml?branch=main&style=for-the-badge&label=build)
![Coverage](https://img.shields.io/codecov/c/github/shubhyagami/game-room?style=for-the-badge)
![License](https://img.shields.io/github/license/shubhyagami/game-room?style=for-the-badge)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=for-the-badge)
![Node 20+](https://img.shields.io/badge/node-20%2B-brightgreen?style=for-the-badge)

Game Room is a lightweight, browser-based, turn-based multiplayer platform. Create a private lobby, share the invite link, and play with friends in real time — with a WebRTC fallback for unstable connections and spectator chat for everyone else.

## Contents

- [Overview](#overview)
- [Getting Started](#getting-started)
- [Development](#development)
- [Architecture](#architecture)
- [Environment Variables](#environment-variables)
- [Testing](#testing)
- [Contributing](#contributing)
- [Changelog](#changelog)
- [License](#license)
- [Maintainers](#maintainers)

---

## Overview

- **Private lobbies** — set the player limit, generate a permanent invite link, and share it with friends.
- **Real-time sync** — Socket.IO delivers turns, scores, and state changes instantly.
- **WebRTC fallback** — keeps the game loop running if the WebSocket connection drops.
- **Spectator mode** — observers can watch and chat without influencing the game.
- **Hot reload** — the React client and Express server both reload on file changes during development.

**Tech stack:** React, Express, Socket.IO, Tailwind CSS, WebRTC.

---

## Getting Started

**Prerequisites:** Node.js 20+ (npm is bundled).

```bash
# 1. Clone the repository
git clone https://github.com/shubhyagami/game-room.git

# 2. Enter the project directory
cd game-room

# 3. Install dependencies
npm ci

# 4. Start the development server
npm run dev
```

Open <http://localhost:3000> in your browser, create or join a room, and start playing.

---

## Development

```bash
# Install dependencies
npm ci

# Start dev server (React client + Express + Socket.IO) with hot reloading
npm run dev

# Build production assets
npm run build

# Lint the codebase
npm run lint
```

The `dev` script serves the React client and the Express + Socket.IO server on the same port (3000 by default), with live reloading for both.

---

## Architecture

```
React client  <->  Express server  <->  Socket.IO / WebRTC
```

- **Client** — React + Tailwind CSS. Gameplay data flows over Socket.IO, with an `RTCPeerConnection` fallback when the socket disconnects.
- **Server** — Express serves HTTP routes and static assets; Socket.IO manages real-time game state. WebRTC signaling is handled on both sides
