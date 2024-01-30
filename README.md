# CLI Weather App

## Description

Simple shell script that gets the weather for a particular zip code.

## Table of Contents
- [Installation and Usage](#installation-and-usage)
- [Demo]()
- [License](#license)
- [Credits](#credits)
- [Badges](#badges)
- 

## License

[![GitHub License Badge](https://img.shields.io/github/license/Ileriayo/markdown-badges?style=for-the-badge)](https://github.com/victoriamcn/CLI-Weather/blob/main/LICENSE)

## Installation and Usage

1. Clone this repository to your local computer.
2. Open the repo and the terminal within your preferred `IDE/Editor`. I prefer `VSCode`.
3. Type `npm i` in the open terminal's command line.
4. Register with [`tomorrow.io`](https://app.tomorrow.io/signin?_gl=1*dxtskt*_ga*MTkxNDc5Mzk2LjE3MDY1NzY4NTY.*_ga_FYZPGBJRTX*MTcwNjU4MjkzNC4yLjEuMTcwNjU4Mjk0Mi4wLjAuMA..&return_to=%2Fdevelopment%2Fkeys) to get your private `API key.`
5. Create a `.env` file with the following variable:
    ```
    TOMORROW_IO_API_KEY = 'YOUR_KEY_HERE'
    ```
6. Make the script executable on your local computer. In the command line type the following in the open terminal's command line:
    ```
    chmod +x get_weather.sh
    ```
    Command Breakdown:
        - `chmod`: This command stands for "change mode," and it is used to change the permissions of a file.
        - `+x`: In Unix-like operating systems, the execute permission is represented by the letter `x`. Adding the `+x`option means granting the execute permission.
        - `get_weather.sh`: This is the name of the file for which you want to change the permissions. In this case, it's assumed to be a shell script named `get_weather.sh`.
## Demo

DEMO TBD

## Credits

### [Weather API by tomorrow.io](https://www.tomorrow.io/a/faq/weather-api/can-i-get-weather-data-by-zip-code-using-an-api/)

### [dotenv-cli](https://www.npmjs.com/package/dotenv-cli)

### [DataCamp Tutorial: How to Write Bash Script](https://www.datacamp.com/tutorial/how-to-write-bash-script-tutorial)

### [The Shell Scripting Tutorial](https://www.shellscript.sh/)

## Badges

[![Git](https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white)](https://git-scm.com/)
[![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)](https://docs.github.com/en/get-started/quickstart/hello-world)
[![NPM](https://img.shields.io/badge/NPM-%23CB3837.svg?style=for-the-badge&logo=npm&logoColor=white)](https://www.npmjs.com/)
[![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)]((https://www.shellscript.sh/))
[![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)](https://code.visualstudio.com/)