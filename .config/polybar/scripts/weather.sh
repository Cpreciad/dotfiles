#!/bin/sh

ONECALL="https://api.openweathermap.org/data/2.5/onecall"

# source OW_KEY, LAT, LON, and UNITS
#. "$(dirname "$0")/weather.config"
# TOTO actually source these variables
OW_KEY="cdba1f0dd231b686e5a0bbbf3a12f482"
LAT="33"
LON="-177"
UNITS="imperial"

data=$(curl -sf "${ONECALL}?lat=${LAT}&lon=${LON}&units=${UNITS}&appid=${OW_KEY}")
temp=$(echo "$data" | jq -r .current.temp)
weather=$(echo "$data" | jq -r .current.weather[0].icon)

case "$weather" in
    01d) icon= ;;
    01n) icon= ;;
    02d|04d) icon= ;;
    02n|04n) icon= ;;
    03d|03n) icon= ;;
    09d|09n|10d|10n) icon= ;;
    11d|11n) icon= ;;
    13d|13n) icon= ;;
    50d|50n) icon= ;;
    *) icon= ;;
esac

echo "$icon $temp °F"

