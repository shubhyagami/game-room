# Game Room  

A lightweight, real‑time multiplayer platform for browser‑based game nights. Host lobby‑managed, turn‑based games—such as trivia, cards, and strategy—while displaying live scores and offering optional spectator chat.

[![Build Status](https://img.shields.io/github/actions/workflow/status/shubhyagami/game-room/ci.yml?branch=main&style=for-the-badge&label=build)](https://github.com/shubhyagami/game-room/actions)  
[![License](https://img.shields.io/github/license/shubhyagami/game-room?style=for-the-badge)](https://github.com/shubhyagami/game-room/blob/main/LICENSE)  
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=for-the-badge)](https://github.com/shubhyagami/game-room/pulls)  
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-blue.svg?style=for-the-badge)](https://github.com/commitizen/cz-cli)  
[![Code Style: ESLint](https://img.shields.io/badge/code_style-eslint-yellow.svg?style=for-the-badge)](https://github.com/equivalent/airbnb-eslint-config)  

---

## Key Features  

- **Lobby Management** – Create rooms, share invite links, and configure player settings.  
- **Real‑Time Sync** – Live score updates and state synchronization with automatic network fallback.  
- **Spectator Mode** – Non‑players can watch and chat while games progress.  
- **WebRTC Fallback** – Seamless operation on unstable connections.  
- **Scalable** – Supports up to 8 concurrent players with low latency.  

---

## Getting Started  

1. **Clone** the repository  
   ```bash
   git clone https://github.com/shubhyagami/game-room.git
   ```  

2. **Install dependencies**  
   ```bash
   cd game-room
   npm install
   ```  

3. **Run the server**  
   ```bash
   npm start
   ```  

4. **Open** `http://localhost:3000` in a browser, generate an invite link, and start playing.  

---

## Usage  

- **Create a custom room** with `/party <room-name>` to generate an invite link.  
- **Enable Spectator Mode** via the lobby UI for watch‑and‑chat participants.  
- **Manage players** – join, leave, or adjust settings directly from the lobby interface.  

---

## Contributing  

1. Fork the repository.  
2. Create a feature branch (`git checkout -b feat/<feature-name>`).  
3. Make changes and commit (`git commit -m '<description>'`).  
4. Push to the branch (`git push origin feat/<feature-name>`).  
5. Open a Pull Request.  

Please adhere to the existing code style and run `npm run lint` before submitting.  

---

## Changelog  

### 0.3.0 – 2026‑08‑28  
- Added WebRTC fallback for unstable connections.  
- Introduced Spectator Mode with chat.  
- Improved lobby UI for better room management.  

---

## License  

Distributed under the MIT License. See `LICENSE` for details.  

---

## Contact  

**Shubhyagami** – [GitHub](https://github.com/shubhyagami) – [@shubhyagami](https://github.com/shubhyagami)  

Project Link: [https://github.com/shubhyagami/game-room](https://github.com/shubhyagami/game-room)  

*Last updated: 2026‑08‑28*
