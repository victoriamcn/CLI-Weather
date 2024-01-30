// TODO: Include packages, .env and tomorrow.io API URL
const inquirer = require('inquirer');

let key = process.env.PRIVATE_KEY;
let usValidZip = '^\d{5}(?:[-\s]\d{4})?$';
let url = `https://api.tomorrow.io/v4/weather/forecast?location=${zipcodeUS}&apikey=${key}`

const generateWeatherReport  = require('./generateWeatherCLI');


const options = {method: 'GET', headers: {accept: 'application/json'}};

// Questions for App
const questions = [
    // {
    //     type: 'list',
    //     name: 'confirm',
    //     message: 'Would you like to search the weather for a particular US Zip Code? ',
    //     choices: ['YES', 'NO'],
    // },
    {
        type: 'input',
        name: 'zipCodeUS',
        message: 'Enter a US Zipcode to See Weather: ',
        validate(value) {
            const pass = value.match(
                usValidZip
            );
            if (pass) {
              return true;
            }
      
            return 'Please enter a valid US Zip Code.';
          }
    },
    // {
    //     type: 'list',
    //     name: 'again',
    //     message: 'Would you like to check the weather for another US Zip Code? ',
    //     choices: ['YES', 'NO'],
    // }
]
// TODO: Function Initialize User Input + US Zip Code
 //based on "zipCodeUS", GET request for weather

function initWeatherCliApp () {
    inquirer
        .prompt(questions)
        .then((answers) => {
        console.log(`Getting the weather for ${answers.zipCodeUS}...`)
        generateWeatherReport
    })
}

// TODO: Write GET request
// fetch(url, options)
//   .then(response => response.json())
//   .then(response => console.log(response))
//   .catch(err => console.error(err));