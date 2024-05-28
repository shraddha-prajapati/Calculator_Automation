*** Settings ***
Library    AppiumLibrary
Resource   /home/shraddhap/PycharmProjects/Learning_Mobileautomation/Resources/Operation.resource

*** Variables ***


*** Test Cases ***
Open Calculator on mobile device
    open application     ${APPIUM_SERVER}
        ...             automationName=${AUTOMATION_NAME}
        ...             platformName=${PLATFORM_NAME}
        ...             platformVersion=${PLATFORM_VERSION}
        ...             deviceName=${DEVICE_NAME}
        ...             appPackage=${PACKAGE_NAME}
        ...             appActivity=${ACTIVITY_NAME}
        ...             noReset=true
        ...             allowInsecure=true

Perform addition of two number
    Perform Addition
