#!/bin/bash

# Load environment variables from .env file
dotenv_path=".env"

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
weatherData=$(curl --compressed --request GET --url "$myUrl" --header 'accept: application/json' | jq -r '.')

# Extracting individual values
temperature=$(echo "$weatherData" | jq -r '.temperature') 
humidity=$(echo "$weatherData" | jq -r '.humidity')
weatherCode=$(echo "$weatherData" | jq -r '.weatherCode[0]')
windSpeed=$(echo "$weatherData" | jq -r '.windSpeed')

# Outputting the information
echo "At the moment, the temperature for $ZIPCODE is ${temperature}°F with ${humidity}% humidity and wind speeds around ${windSpeed}mph. You can expect ${weatherCode} skies."