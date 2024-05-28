*** Settings ***
Library    AppiumLibrary

*** Variables ***

${APPIUM_SERVER}     http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}     13
${DEVICE_NAME}   RFCNC0TBTJF
${PACKAGE_NAME}   com.sec.android.app.popupcalculator
${ACTIVITY_NAME}     com.sec.android.app.popupcalculator.Calculator
${AUTOMATION_NAME}  UiAutomator2


#TestData
${digit2}   //android.widget.Button[@content-desc="2"]
${digit6}   //android.widget.Button[@content-desc="6"]
${sum}  //android.widget.Button[@content-desc="Plus"]
${result}   //android.widget.Button[@content-desc="Equal"]
${actual_sum}   //android.widget.EditText[@resource-id="com.sec.android.app.popupcalculator:id/calc_edt_formula"]
${addition}=    "6"

*** Keywords ***
Perform Addition
    Wait Until Element Is Visible    ${digit2}
    Wait Until Element Is Visible    ${digit6}


    Click Element    ${digit2}
    Click Element    ${sum}
    Click Element    ${digit6}
    Click Element    ${result}
    ${summation}    get text    ${actual_sum}
    Log    ${summation}