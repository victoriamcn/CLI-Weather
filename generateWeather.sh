#!/bin/bash

while [[ $# -gt 0 ]]; do
    key="$1"

    case $key in
        --zipcode)
        ZIPCODE="$2"
        shift
        shift
        ;;
        *)
        echo "Unknown option: $1"
        exit 1
        ;;
    esac
done

if [ -z "$ZIPCODE" ]; then
    echo "Error: --zipcode flag is required."
    exit 1
fi

myUrl="https://api.tomorrow.io/v4/weather/realtime?location=${ZIPCODE}&units=imperial&apikey=stq6JSuxCBwvp3u2OVqVXFuQgLTqa8ff"

# Fetching and parsing the data
weatherData=$(curl --compressed --request GET --url "$myUrl" --header 'accept: application/json' | jq -r '.')

# Extracting individual values
temperature=$(echo "$weatherData" | jq -r '.temperature') 
humidity=$(echo "$weatherData" | jq -r '.humidity')
weatherCode=$(echo "$weatherData" | jq -r '.weatherCode[0]')
windSpeed=$(echo "$weatherData" | jq -r '.windSpeed')
