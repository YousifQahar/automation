*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://rahulshettyacademy.com/seleniumPractise/#/
${BROWSER}    chrome
${COUNTRY}    Iraq    # Desired country to select
${BROCCOLI_INCREMENT}    xpath://h4[text()='Brocolli - 1 Kg']/parent::div//a[@class='increment']
${BROCCOLI_ITEM}         Brocolli - 1 Kg
${ITEM_QUANTITY}     5
