
*** Settings ***
Library         AppiumLibrary

*** Variables ***
${REMOTE_URL}  http://localhost:4723/wd/hub 

*** Keywords ***
TestStart
    [Documentation]  just demo
    Open Application  ${REMOTE_URL}  platformName=Android platformVersion=6.0  deviceName=2a007419  app=${CURDIR}/demoapp/OrangeDemoApp.apk  automationName=appium  appPackage=com.netease.qa.orangedemo  appActivity=MainActivity
    
	




*** Test Cases ***
test_demo
    [Tags]  regression
    Open Application  http://localhost:4723/wd/hub  platformName=Android  platformVersion=6.0  deviceName=2a007419  app=${CURDIR}/demoapp/OrangeDemoApp.apk  automationName=appium  appPackage=com.netease.qa.orangedemo  appActivity=MainActivity