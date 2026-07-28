________                        ________
 /  _____/_____    _____   ____   \_____  \   ____   _______
/   \  ___\__  \  /     \_/ __ \   /   |   \ /  _ \ /  ___/
\    \_\  \/ __ \|  Y Y  \  ___/  /    |    (  <_> )___ \
 \______  (____  /__|_|  /\___  > \_______  /\____/____  >
        \/     \/      \/     \/          \/            \/
```

> *“The best multiplayer experiences are built on connection, latency, and a little bit of chaos.”*  
> — Anonymous Game Room Architect

## Quick Start

```bash
git clone https://github.com/shubhyagami/game-room.git
cd game-room
npm install
npm start
```

Open `http://localhost:3000` and invite your friends!

## Featured Use Case

**Virtual Game Night – 8 players, one room, zero lag**  
Host a trivia night, card game, or real‑time strategy match with friends scattered across time zones. game‑room handles lobby management, turn‑based logic, and live score updates out of the box.

## Pro Tips

- Use the `/party` command to generate a shareable invite link with custom room name.
- Enable **spectator mode** for non‑players to watch and chat.
- Keep your network stable – game‑room uses WebRTC fallback for peer‑to‑peer play.

## Weekly Highlight – 2026‑07‑26

**Changelog**  
- Added real‑time voice chat via WebRTC (opt‑in)  
- New lobby theme: "Retro Arcade" – neon glow and CRT scanlines  
- Fixed a bug where player scores would reset on reconnection  
- Improved matchmaking latency by ~18% on global servers  

## Roadmap

> *Building the multiverse of multiplayer, one timeline at a time.*

Our mission: make `game-room` the friendliest, fastest, and most chaotic-good game night host on the open web. Here's where we're headed next — and where you can help us branch the timeline.

### 🛣️ Now Boarding – In Progress

- [x] Real‑time voice chat via WebRTC *(shipped 2026‑07‑26)*
- [x] Retro Arcade lobby theme *(shipped 2026‑07‑26)*
- [ ] **Persistent player profiles** – carry your win streak, avatar, and stats across rooms
- [ ] **Tournament mode** – bracket-style competitions with auto-seeding and crowd cheering
- [ ] **Custom game plugins** – drop in your own ruleset via a sandboxed API
- [ ] **Mobile push notifications** – ping friends when their turn is up or a room opens

### 🔮 Variant Futures – On the Horizon

- [ ] AI-powered game master for solo play
- [ ] Cross-room "cross-overs" – merge two lobbies mid-match
- [ ] VR lobby support (WebXR)
- [ ] Replay system with cinematic camera modes

---

## 🛠 Technical Stack & Architecture

![Node.js](https://img.shields.io/badge/Node.js-18.x-339933?style=flat&logo=node.js&logoColor=white)
![React](https://img.shields.io/badge/React-18-61DAFB?style=flat&logo=react&logoColor=white)
![Socket.IO](https://img.shields.io/badge/Socket.IO-4.x-010101?style=flat&logo=socket.io&logoColor=white)
![WebRTC](https://img.shields.io/badge/WebRTC-supported-333333?style=flat&logo=webrtc&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

- **Frontend**: React 18 with Vite, Tailwind CSS for responsive UI, Three.js for lobby themes.
- **Backend**: Node.js with Express, Socket.IO for real-time communication, WebRTC for peer-to-peer voice/video.
- **Database**: PostgreSQL for persistent player profiles and game state (coming in v0.8).
- **Deployment**: Dockerized microservices on Kubernetes, with CDN for static assets.

## 🌍 Community & Support

- **Discord**: [Join our server](https://discord.gg/gameroom) for live chat, support, and game nights.
- **GitHub Issues**: Report bugs or request features.
- **Twitter**: Follow [@shubhyagami](https://twitter.com/shubhyagami) for updates.

---

## ⏳ Version History

> *Every timeline leaves a footprint. Here's ours.*

### `v0.7.0` – "The Arcade Awakens" *(2026‑07‑26)*
- ✨ Real-time voice chat via WebRTC (opt-in)
- 🎨 Retro Arcade lobby theme – neon glow, CRT scanlines, cabinet vibes
- 🐛 Fixed: player scores no longer reset on reconnection
- ⚡ Matchmaking latency improved ~18% on global servers

### `v0.6.2` – "The Ping Whisperer" *(2026‑06‑14)*
- 🐛 Fixed: lobby desync when host migrated mid-game
- 🛠 Refactored WebSocket layer for cleaner reconnects
- 📜 Added: detail