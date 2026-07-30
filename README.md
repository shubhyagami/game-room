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
- [ ] **Tournament

## 🕰️ Contributing – How to Branch the Timeline

> *“Every pull request is a Nexus Event. Handle with care.”*  
> — TVA Handbook, Chapter 7

Welcome, temporal agent! You’ve been selected to help us prune paradoxes and weave a better multiverse of multiplayer gaming. Before you start splicing timelines, read the following **Time Variance Authority Contribution Guidelines**.

### 📜 Pruning Protocols (aka Code of Conduct)

- **Respect the Sacred Timeline** – All contributions must follow the existing architecture. No branching off into spaghetti code.
- **No Alioth Zones** – Keep your changes clean, documented, and free of uncaught exceptions. We don’t want to reset the entire timeline.
- **Minutemen Review** – Every PR must be approved by at least one other agent before merging. Use the `review:request` label to summon a Variant Inspector.

### 🧬 Branching Your Timeline

1. **Fork the repository** – This creates your own pocket dimension.
2. **Create a feature branch** – Name it after the Temporal Variant you’re fixing (e.g., `fix/score-reset`, `feat/spectator-mode`).
3. **Commit with TVA timestamps** – Use conventional commits, e.g.:  
   `feat(lobby): add CRT scanline toggle for Retro Arcade theme`  
   `fix(matchmaking): prune lag spike at 0x1A3F (2026-07-31)`
4. **Submit a Pull Request** – Label it `nexus-event` and describe what timeline you’re altering.

### 🧪 Testing Your Chronoton Crystals

- Run `npm test` to verify you haven’t created a timeline paradox.
- New features require at least one unit test covering the happy path and one for the “reset” scenario (because timelines always get reset).
- For UI changes, attach a screenshot or a Loom recording of your local variant in action.

### 🚨 Reporting a Temporal Anomaly (Bug)

Found a bug? Open an issue with the `anomaly` tag and include:
- Steps to reproduce the paradox.
- Expected behavior vs. actual timeline corruption.
- Browser/OS details (a.k.a. your Temporal Locator).
- Any error logs (these are your Chronoton readings).

### 🏆 Rewards for Loyal Agents

Every accepted PR earns you a **Cosmic Cubit** (virtual badge) on your profile. Collect five and you’ll unlock the **“Time Keeper”** role in the game-room community Discord. Plus, your name will be carved into the **Loom of Legends** (the CONTRIBUTORS.md file).

Now suit up, grab your Tempad, and let’s make this timeline the best one yet. ⏳

---  
*TVA Engineering Department – Temporal Standard 2026-07-31*