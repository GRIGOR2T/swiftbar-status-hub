# 🧠 Status Hub for SwiftBar

A personal productivity and system-status plugin for [SwiftBar](https://github.com/swiftbar/SwiftBar).  
Displays local uptime, memory, weather, currency, Docker, battery, project timers, mood of the day, and custom alerts — all in your menu bar.

---

## ✨ Features

- ⏱ Uptime since custom start date
- 🔋 Battery cycle count + memory/swap usage
- 🐳 Docker container counter
- 🌤 Live weather (via [met.no](https://api.met.no))
- 💱 Live currency exchange (via [open.er-api.com](https://www.exchangerate-api.com))
- ⏰ Custom reminder timer (ex: eye drops, water, breaks)
- 🧠 Daily random mood quote
- 📌 Configurable event timers (e.g. country move, wedding, device purchase)

---

## 🧩 Requirements

- macOS
- [SwiftBar](https://github.com/swiftbar/SwiftBar)
- `jq` (via `brew install jq`)
- `coreutils` (via `brew install coreutils`)

---

## 🔧 Setup

1. Place `status_hub.10s.sh` into your SwiftBar plugin directory.
2. Make it executable:

```bash
chmod +x status_hub.10s.sh
```

3. Customize the top of the script:
   ```bash
   START_DATE="2024-01-01"       # system uptime
   EVENT_1_DATE="2023-08-01"      # anything you want
   WEATHER_LAT="42.2835"
   WEATHER_LON="18.8378"
   ```

---

## 🧠 Customization

- 💡 **Timer logic** is configurable: `schedule=(660 900 1140 1380 180)` → minutes from midnight
- 💬 Mood list lives in `MOOD_LIST=(...)` — make it weird.
- 🐳 Docker summary appears if Docker is running.
- 🌤 Weather powered by `met.no`, API is free, just customize your `User-Agent`.

---

## 🤝 Attribution

- Weather API: [Met.no Locationforecast](https://api.met.no)
- Currency API: [open.er-api.com](https://open.er-api.com)
- SwiftBar: [swiftbar.app](https://swiftbar.app)

---

## 🔒 Notes

This version is a **clean public template**.  
For private usage, you can:
- Add personal events
- Include sensitive timers
- Integrate with your GitHub / Telegram / other services

---

## 📄 License

MIT — Use freely, modify freely, attribute kindly 💙
