#!/bin/bash
# wellness_hub.1m.sh
# SwiftBar Plugin: Wellness Hub — Reminders for eyes, stretch & yoga

export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

# --- CONSTANTS ---
YOGA_TIMER_FILE="/tmp/yoga_timer.txt"
NOW_TS=$(date +%s)

echo "💆 Wellness | dropdown=false"
echo "---"

# --- EYE REMINDER ---
echo "👁 Eye break (20-20-20) | bash=/usr/bin/osascript param1=-e param2='display notification \"Сделай паузу и посмотри вдаль 20 секунд 👀\" with title \"Глаза отдыхают\"' terminal=false"

# --- STRETCH REMINDER ---
echo "🧍‍♂️ Stretch your body | bash=/usr/bin/osascript param1=-e param2='display notification \"Разомнись! Пройди немного или сделай наклоны.\" with title \"Разминка тела\"' terminal=false"

echo "---"

# --- YOGA TIMER LOGIC ---
if [[ ! -f "$YOGA_TIMER_FILE" || $(<"$YOGA_TIMER_FILE") -le $NOW_TS ]]; then
  # Yoga not running
  echo "🧘 Start 5-min Yoga | bash=$0 param1=start terminal=false refresh=true"
else
  # Yoga running
  remaining=$(( $(<"$YOGA_TIMER_FILE") - $NOW_TS ))
  mins=$((remaining / 60))
  secs=$((remaining % 60))
  echo "⏳ Yoga: ${mins}m ${secs}s left | refresh=true"
fi

# --- TIMER START ---
if [[ "$1" == "start" ]]; then
  echo $((NOW_TS + 300)) > "$YOGA_TIMER_FILE"
fi