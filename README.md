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
- 📜 Added: detailed player activity logs (opt-in)

### `v0.6.0` – "Spectator's Delight" *(2026‑05‑02)*
- 👀 Spectator mode – watch and chat without joining
- 🔗 Shareable invite links via `/party`
- 🎵 Background music now persists across lobby navigation
- 🐛 Fixed: occasional "ghost player" slots after timeout

### `v0.5.0` – "Eight Is Enough" *(2026‑03‑19)*
- 🎮 Support for up to 8 concurrent players per room
- 🏆 Live score updates with animation flourishes
- 🌐 Expanded global server coverage (12 new PoPs)

### `v0.4.0` – "Turn-Based Takes Over" *(2026‑02‑08)*
- ♻️ Turn-based logic engine (trivia, card games, strategy)
- 💬 In-room chat with emoji reactions
- 🔒 Room passwords and join approval flow

### `v0.3.0` – "Peer Pressure" *(2026‑01‑15)*
- 🤝 WebRTC fallback for peer-to-peer play
- 📉 Reduced server load by ~40% in low-latency regions

### `v0.2.0` – "Lobby Logic" *(2025‑12‑01)*
- 🏠 Lobby creation, join, leave, kick
- 🎲 First playable game shipped: Tic-Tac-Toe Royale

### `v0.1.0` – "First Light" *(2025‑10‑17)*
- 🚀 Initial release
- 🧪 Proof-of-concept multiplayer room
- ☕ One very tired developer and a lot of coffee

---

> *“We don't preserve the timeline. We preserve the game night.”*  
> — The game-room TVA Cell