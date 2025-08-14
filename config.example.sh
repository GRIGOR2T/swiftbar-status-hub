#!/bin/bash
# config.example.sh
# Configuration file for status_hub.10s.sh
# Copy this file to config.sh and update with your personal data

# --- PERSONAL DATES ---
# Format: YYYY-MM-DD
START_DATE="2024-01-01"                # Your MacBook purchase/start date
MACBOOK_UPTIME_DATE="2024-01-01"       # Same as START_DATE
WEDDING_DATE="2023-06-15"              # Your wedding date (or any significant date)
EMIGRATION_START="2022-01-01"          # Emigration/relocation start date
TURKEY_START="2022-01-01"              # Period in Turkey start
TURKEY_END="2023-01-01"                # Period in Turkey end
MONTENEGRO_START="2023-01-01"          # Period in Montenegro start
IPHONE_PURCHASE_DATE="2025-01-01"      # iPhone purchase date
COMPANY_START_DATE="2023-01-01"        # Your company/work start date

# --- PERSONAL INFO ---
COMPANY_NAME="YourCompany"             # Your company name
COUNTRY_1_EMOJI="🇹🇷"                 # First country emoji
COUNTRY_1_NAME="Country1"              # First country name
COUNTRY_2_EMOJI="🇲🇪"                 # Second country emoji  
COUNTRY_2_NAME="Country2"              # Second country name

# --- LOCATION SETTINGS ---
# Weather location coordinates (example: New York)
WEATHER_LAT="40.7128"
WEATHER_LON="-74.0060"
WEATHER_CITY="YourCity"

# --- API SETTINGS ---
# User agent for weather API (use your own)
WEATHER_USER_AGENT="YourApp-WeatherScript/1.0 (https://github.com/yourusername)"

# --- DEVICE INFO ---
DEVICE_NAME="MacBook Pro M2"           # Your device name
PHONE_MODEL="iPhone 15 Pro"           # Your phone model

# --- MOOD MESSAGES ---
# Customize your daily mood messages
MOOD_LIST=(
  "You got this 💪" 
  "Focus. Breathe. Win. 🧘‍♂️" 
  "Chaos is a ladder 🔥" 
  "Today's vibe: coffee ☕ + code" 
  "Eat. Code. Sleep. Repeat." 
  "Be the bug you wish to see in prod 🐞"
  "Another day, another commit 🚀"
  "Code like nobody's watching 👨‍💻"
)
