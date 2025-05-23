#!/bin/bash

bat=/sys/class/power_supply/BAT0/
stat="$(cat "$bat/status")"



discharging() {
  pct="$(cat "$bat/capacity" | tr -cd '[[:digit:]]')"
  if   (( pct >= 99 )); then echo "󰁹"  #  battery full
  elif (( pct >= 90 )); then echo "󰂂"  #  battery 90%
  elif (( pct >= 80 )); then echo "󰂁"  #  battery 80%
  elif (( pct >= 70 )); then echo "󰂀"  #  battery 70%
  elif (( pct >= 60 )); then echo "󰁿"  #  battery 60%
  elif (( pct >= 50 )); then echo "󰁾"  #  battery 50%
  elif (( pct >= 40 )); then echo "󰁽"  #  battery 40%
  elif (( pct >= 30 )); then echo "󰁼"  #  battery 30%
  elif (( pct >= 20 )); then echo "󰁻"  #  battery 20%
  elif (( pct >= 10 )); then echo "󰁺"  #  battery 10%
  else                         echo "󰂎"  #  battery very low
  fi
}

charging() {
  pct="$(cat "$bat/capacity" | tr -cd '[[:digit:]]')"
  if   (( pct >= 99 )); then echo "󰂅"  #  battery full
  elif (( pct >= 90 )); then echo "󰂋"  #  battery 90%
  elif (( pct >= 80 )); then echo "󰂊"  #  battery 80%
  elif (( pct >= 70 )); then echo "󰢞"  #  battery 70%
  elif (( pct >= 60 )); then echo "󰂉"  #  battery 60%
  elif (( pct >= 50 )); then echo "󰢝"  #  battery 50%
  elif (( pct >= 40 )); then echo "󰂈"  #  battery 40%
  elif (( pct >= 30 )); then echo "󰂇"  #  battery 30%
  elif (( pct >= 20 )); then echo "󰂆"  #  battery 20%
  elif (( pct >= 10 )); then echo "󰢜"  #  battery 10%
  else                         echo "󰢟"  #  battery very low
  fi
}

class() {
  pct="$(cat "$bat/capacity" | tr -cd '[[:digit:]]')"

  # 5 different levels based on percentage
  if (( pct >= 80 )); then
    echo "high"     # High level (80% and above)
  elif (( pct >= 60 )); then
    echo "medium"   # Medium level (60% to 79%)
  elif (( pct >= 40 )); then
    echo "low"      # Low level (40% to 59%)
  elif (( pct >= 20 )); then
    echo "very-low" # Very Low level (20% to 39%)
  else
    echo "critical" # Critical level (below 20%)
  fi
}


percentage() {
  local now full
  now=$(<"$bat/energy_now")
  full=$(<"$bat/energy_full")
  # guard against division by zero or missing files
  if [[ -z $now || -z $full || $full -eq 0 ]]; then
    echo "N/A"
    return
  fi
  # float math + two decimals
  awk -v n="$now" -v f="$full" 'BEGIN { printf("%.2f", n/f*100) }'
}


[ "$1" == "icon" ] && [ "$stat" == "Charging" ] && charging && exit
[ "$1" == "icon" ] && [ "$stat" == "Discharging" ] && discharging && exit
[ "$1" == "icon" ] && [ "$stat" == "Not charging" ] && charging && exit
[ "$1" == "icon" ] && [ "$stat" == "Full" ] && charging && exit
[ "$1" == "percentage" ] && percentage && exit
[ "$1" == "class" ] && class && exit