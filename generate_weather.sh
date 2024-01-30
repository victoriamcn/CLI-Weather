#!/bin/bash

# Load environment variables from .env file
if [ -f ".env" ]; then
    source ".env"
fi

# jq Debugging
echo "PATH: $PATH"
# which jq

# Check if the API key is set
if [ -z "$TOMORROW_IO_API_KEY" ]; then
    echo "Error: TOMORROW_IO_API_KEY environment variable is not set."
    exit 1
fi

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

myUrl="https://api.tomorrow.io/v4/weather/realtime?location=${ZIPCODE}&units=imperial&apikey=$TOMORROW_IO_API_KEY"

# Fetching and parsing the data
weatherData=$(curl --compressed --request GET --url "$myUrl" --header 'accept: application/json' | ${PATH_TO_JQ} -r '.')

# Extracting individual values
temperature=$(echo "$weatherData" | jq -r '.temperature // "null"')
humidity=$(echo "$weatherData" | jq -r '.humidity // "null"')
weatherCode=$(echo "$weatherData" | jq -r '.weatherCode[0] // "null"')
windSpeed=$(echo "$weatherData" | jq -r '.windSpeed // "null"')

# Outputting the information
echo "At the moment, the temperature for $ZIPCODE is ${temperature}°F with ${humidity}% humidity and wind speeds around ${windSpeed}mph. You can expect ${weatherCode} skies."