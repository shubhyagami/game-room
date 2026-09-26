[K[2m  [2mmodel z-ai/glm-5.3-flash failed, trying next...[0m[0m
# Game Room

![Build](https://img.shields.io/github/actions/workflow/status/shubhyagami/game-room/ci.yml?branch=main&style=for-the-badge&label=build)
![Coverage](https://img.shields.io/codecov/c/github/shubhyagami/game-room?style=for-the-badge)
![License](https://img.shields.io/github/license/shubhyagami/game-room?style=for-the-badge)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=for-the-badge)
![Node 20+](https://img.shields.io/badge/node-20%2B-brightgreen?style=for-the-badge)

Game Room is a lightweight, browser-based, turn-based multiplayer platform built with React, Express, Socket.IO, and WebRTC. It supports private lobbies, non-expiring invite links, real-time score and turn updates, and spectator chat. If a WebSocket connection drops, a WebRTC fallback helps keep the game loop alive.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Quick Start](#quick-start)
- [Development](#development)
- [Architecture](#architecture)
- [Environment Variables](#environment-variables)
- [Testing](#testing)
- [Contributing](#contributing)
- [Changelog](#changelog)
- [License](#license)
- [Maintainers](#maintainers)

## Overview

Game Room provides a simple way to host private turn-based games:

- Private lobbies with configurable player limits
- Permanent, non-expiring invite links
- Real-time gameplay with turn and score sync over Socket.IO
- WebRTC fallback when a WebSocket disconnects
- Spectator mode with chat that does not affect gameplay
- Hot reload for client and server during development

## Features

| Feature | Description |
| --- | --- |
| Lobby management | Create rooms, set player limits, and generate invite links |
| Real-time sync | Score and turn updates over Socket.IO |
| WebRTC fallback | Maintains game state when the WebSocket fails |
| Spectator mode | Watch and chat while games continue |
| Low-latency support | Optimized for up to 8 concurrent players |
| Hot-reload workflow | Client and server refresh automatically on changes |

## Quick Start

Prerequisites: Node.js 20 or newer. npm is bundled with Node.js.

1. Clone the repository:
   `git clone https://github.com/shubhyagami/game-room.git`
2. Enter the project directory:
   `cd game-room`
3. Install dependencies:
   `npm ci`
4. Start the development server:
   `npm run dev`

Open http://localhost:3000 in your browser, create or join a room, and start playing.

## Development

- Install dependencies: `npm ci`
- Start the dev server for client and server: `npm run dev`
- Build production assets: `npm run build`
- Run the linter: `npm run lint`

`npm run dev` serves the React client on port 3000 and starts the Express + Socket.IO backend on the same port. Source changes are reflected automatically.

## Architecture

React client ↔ Express (Node.js) ↔ Socket.IO / WebRTC

- **Client**: React and Tailwind. Communicates over Socket.IO and falls back to `RTCPeerConnection` when the socket disconnects.
- **Server**: Express handles HTTP routes and serves static assets. Socket.IO manages real-time state; fallback logic exists on both client and server.
- **Code style**: Airbnb ESLint and Prettier keep formatting consistent.

## Environment Variables

| Variable | Description | Default |
| --- | --- | --- |
| `PORT` | Server listening port | `3000` |
| `NODE_ENV` | Runtime mode (`development` or `production`) | `development` |

## Testing

The test suite uses Jest. Core game logic and API endpoints are covered by unit tests.

- Run tests once: `npm test`
- Run tests in watch mode: `npm test -- --watch`

## Contributing

1. Fork the repository and create a feature branch: `git checkout -b feat/<name>`.
2. Follow the [Conventional Commits](https://www.conventionalcommits.org/) spec.
3. Run `npm run lint` and add unit tests for new functionality.
4. Submit a focused pull request.

Pull requests are welcome.

## Changelog

### 0.3.0 – 2026-08-28

- Added WebRTC fallback for unstable connections.
- Introduced spectator mode with chat.
- Improved the lobby UI for room management.

## License

MIT © [Shubhyagami](https://github.com/shubhyagami)

## Maintainers

- **Shubhyagami** – [GitHub](https://github.com/shubhyagami) – @shubhyagami
