# Game Room  
[![Build Status](https://img.shields.io/github/actions/workflow/status/shubhyagami/game-room/ci.yml?branch=main&style=for-the-badge&label=build)](https://github.com/shubhyagami/game-room/actions)  
[![License](https://img.shields.io/github/license/shubhyagami/game-room?style=for-the-badge)](https://github.com/shubhyagami/game-room/blob/main/LICENSE)  
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=for-the-badge)](https://github.com/shubhyagami/game-room/pulls)  
[![Code Style: ESLint](https://img.shields.io/badge/code_style-eslint-yellow.svg?style=for-the-badge)](https://github.com/equivalent/airbnb-eslint-config)  

## About  

Game Room is a lightweight, real‑time platform for hosting browser‑based multiplayer game nights. It supports lobby‑managed, turn‑based games such as trivia, card games, and strategy games. All participants see live score updates, and non‑players can watch in spectator mode and chat.

## Features  

- **Lobby management** – Create rooms, generate invite links, and adjust player settings.  
- **Real‑time sync** – Live score updates with graceful WebSocket fallback.  
- **Spectator mode** – Watch non‑player games and participate in chat.  
- **WebRTC fallback** – Maintain gameplay on unstable connections.  
- **Scalable** – Up to 8 concurrent players with low latency.  

## Getting Started  

1. **Clone the repository**  
   `git clone https://github.com/shubhyagami/game-room.git`  
   `cd game-room`  

2. **Install dependencies**  
   `npm install`  

3. **Start the server** (default port 3000)  
   `npm start`  

4. Open `http://localhost:3000` in your browser, create an invite link, and invite friends.

> **Tip:** During development run `npm run dev` for hot reloading.

## Usage  

| Action | How to do it | Notes |
|--------|--------------|-------|
| Create a room | Click **Create Room** in the UI or type `/party <room-name>` in the chat console. | |
| Join a room | Click the invite link or paste it into the **Join Room** field. | |
| Spectate | Enable **Spectate** in the lobby to watch the game and chat. | |
| Player controls | Join, leave, or swap positions directly from the lobby interface. | |

## Development  

```bash
# Install
npm install

# Development server
npm run dev

# Lint
npm run lint

# Test
npm test
```

### Environment variables  

| Variable | Description | Default |
|----------|-------------|---------|
| `PORT` | Server listening port | `3000` |
| `NODE_ENV` | Runtime mode | `development` (use `production` for deployment) |

## Contributing  

1. Fork the repo.  
2. Create a feature branch: `git checkout -b feat/<name>`.  
3. Commit with a clear message.  
4. Push: `git push origin feat/<name>`.  
5. Open a PR.

Please follow the existing code style (`npm run lint`) and add tests for new functionality.

## Changelog  

### 0.3.0 – 2026‑08‑28  

- Added WebRTC fallback for unstable connections.  
- Introduced Spectator Mode with chat.  
- Improved lobby UI for better room management.

*(Further releases will be documented here.)*

## License  

MIT © Shubhyagami

## Maintainers  

- **Shubhyagami** – [GitHub](https://github.com/shubhyagami) – [@shubhyagami](https://github.com/shubhyagami)

Last updated: 2026‑09‑02
