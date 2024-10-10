@echo off
setlocal enabledelayedexpansion

:menu
echo ==============================
echo        WICK SCRIPT v1.0
echo ==============================
echo Select an option:
echo [1] Activate and Set Routes
echo [2] Reset Routes
echo [3] Exit
echo ==============================
set /p option=Choose an option [1, 2, 3]: 

if "%option%"=="1" goto activate
if "%option%"=="2" goto reset
if "%option%"=="3" goto exit_script
echo Invalid option, please choose 1, 2, or 3.
pause
goto menu

:activate
echo ==============================
echo     Activating and Setting Routes
echo ==============================
REM Define multiple gateway IPs to test
set wick_gateway_1=PUT_FIRST_GATEWAY_IP_HERE
set wick_gateway_2=PUT_SECOND_GATEWAY_IP_HERE
set wick_gateway_3=PUT_3rd_GATEWAY_IP_HERE

REM Variable to store the selected gateway
set selected_gateway=""

REM Function to test the gateway by pinging it
for %%G in (%wick_gateway_1% %wick_gateway_2% %wick_gateway_3%) do (
    echo Testing gateway: %%G...
    ping -n 1 %%G >nul
    if !errorlevel! == 1 (
        echo gateway %%G is reachable.
        set selected_gateway=%%G
        goto add_routes
    ) else (
        echo gateway %%G is not reachable.
    )
)

REM If no gateway is found
if "%selected_gateway%" == "" (
    echo.
    echo ==============================
    echo ERROR: No gateways are reachable.
    echo ==============================
    echo Please check your connection and the gateway IPs provided.
    echo.
    echo For support, contact me on:
    echo Instagram: https://www.instagram.com/mik__subhi/
    echo Discord: discord.gg/wicks
    echo Email: wick@wick-studio.com
    echo ==============================
    pause
    goto menu
)

:add_routes
echo.
echo Using Gateway: %selected_gateway%
echo Adding routes for Discord traffic...

REM Set routes for Discord IPs through the selected Gateway
route add 162.159.128.0 mask 255.255.248.0 %selected_gateway% >nul
route add 162.159.136.0 mask 255.255.252.0 %selected_gateway% >nul
route add 104.16.0.0 mask 255.240.0.0 %selected_gateway% >nul
route add 172.64.0.0 mask 255.248.0.0 %selected_gateway% >nul

REM Flush DNS cache
ipconfig /flushdns >nul

echo.
echo Routes added successfully using Gateway: %selected_gateway%.
echo ==============================
echo          SUCCESS
echo ==============================
pause
goto menu

:reset
echo ==============================
echo     Resetting Routes
echo ==============================
REM Delete routes for Discord IPs
route delete 162.159.128.0 >nul
route delete 162.159.136.0 >nul
route delete 104.16.0.0 >nul
route delete 172.64.0.0 >nul

REM Optionally flush DNS cache to ensure fresh DNS resolution
ipconfig /flushdns >nul

echo.
echo Routes have been reset successfully.
echo ==============================
pause
goto menu

:exit_script
echo Exiting Wick Script...
pause
exit /b