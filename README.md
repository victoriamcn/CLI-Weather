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

*Note: This app works for US Zip Codes only*

1. **Clone this repository to your local computer.**
2. **Open the repository and the terminal within your preferred `IDE/Editor`.**
    Examples: `VSCode`, `Notepad`, `Atom`, `Brackets`, `Eclipse`
3. **Install Dependencies**
    Type `npm i` in the open terminal's command line.
    Install [`./jq`](https://jqlang.github.io/jq/) on your device.
4. **API Key Set Up** 
   - Register with [`tomorrow.io`](https://app.tomorrow.io/signin?_gl=1*dxtskt*_ga*MTkxNDc5Mzk2LjE3MDY1NzY4NTY.*_ga_FYZPGBJRTX*MTcwNjU4MjkzNC4yLjEuMTcwNjU4Mjk0Mi4wLjAuMA..&return_to=%2Fdevelopment%2Fkeys) to get your private `API key.`
    - Create a `.env` file with the following variable:
    ```
    TOMORROW_IO_API_KEY = 'YOUR_KEY_HERE'
    ```
5. **Make the Script Executable**
    Type the following in the open terminal to make the script executable within the current repository:
    ```
    chmod +x generate_weather.sh
    ```
    Command Breakdown:
        - `chmod`: This command stands for "change mode," and it is used to change the permissions of a file.
        - `+x`: In Unix-like operating systems, the execute permission is represented by the letter `x`. Adding the `+x`option means granting the execute permission.
        - `generate_weather.sh`: This is the name of the file for which you want to change the permissions. In this case, it's assumed to be a shell script (`.sh`) file named `generate_weather`.

6. **Execute the Script**
    Execute the script directly from the command line with
    ```
    ./generate_weather.sh --zipcode 29601

    ```
---
### ***OPTIONAL SET-UP***
7. **Make Custom Shell Script Accessible from Any Location**
    Move the script to a directory in your system's `PATH`:
    ```
    sudo mv generate_weather.sh /usr/local/bin/generate_weather
    ```
    - This assumes that `/usr/local/bin`` is in your PATH. You can adjust the destination based on your preference.
    - Skip Step 6 if you start getting a headache.
8. **Create an Alias for Custom Shell Script**
    - Open your shell configuration file in a text editor. (e.g., `~/.bashrc` for Bash, `~/.zshrc` for Zsh)
    - Add the following line at the end of the file:
        ```
        alias weather="/path/to/your/generate_weather.sh"
        ```
        - If you did `Step 6` and moved the script to a directory in your PATH, you can simply use the script name and then save the file.
            ```
            alias weather="generate_weather"
            ```
        - After making changes to your shell configuration file, you need to either restart your terminal or run the following command to apply the changes:
            ```
            source ~/.bashrc   # For Bash
            ```
            ```
            source ~/.zshrc   # For Zsh
            ```
    - Test the Alias by typing the following in the terminal:
        ```
        weather --zipcode 29601
        ```

## Credits

### [Weather API by tomorrow.io](https://www.tomorrow.io/a/faq/weather-api/can-i-get-weather-data-by-zip-code-using-an-api/)

### [dotenv-cli](https://www.npmjs.com/package/dotenv-cli)

### [jq](https://jqlang.github.io/jq/)

### [DataCamp Tutorial: How to Write Bash Script](https://www.datacamp.com/tutorial/how-to-write-bash-script-tutorial)

### [The Shell Scripting Tutorial](https://www.shellscript.sh/)

## Badges

[![Git](https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white)](https://git-scm.com/)
[![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)](https://docs.github.com/en/get-started/quickstart/hello-world)
[![NPM](https://img.shields.io/badge/NPM-%23CB3837.svg?style=for-the-badge&logo=npm&logoColor=white)](https://www.npmjs.com/)
[![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)]((https://www.shellscript.sh/))
[![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)](https://code.visualstudio.com/)