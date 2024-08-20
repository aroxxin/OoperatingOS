@echo off
title Kalkulator

:menu3
echo Witaj w prostym kalkulatorze!
echo Wybierz dzialanie:
echo 1. Dodawanie
echo 2. Odejmowanie
echo 3. Mnozenie
echo 4. Dzielenie
echo 5. Wyjscie
set /p choice="Wybierz opcje (1-5): "

if %choice%==1 goto dodawanie
if %choice%==2 goto odejmowanie
if %choice%==3 goto mnozenie
if %choice%==4 goto dzielenie
if %choice%==5 goto koniec

:dodawanie
set /p a="Podaj pierwsza liczbe: "
set /p b="Podaj druga liczbe: "
set /a wynik=%a%+%b%
echo Wynik dodawania: %wynik%
pause
goto menu3

:odejmowanie
set /p a="Podaj pierwsza liczbe: "
set /p b="Podaj druga liczbe: "
set /a wynik=%a%-%b%
echo Wynik odejmowania: %wynik%
pause
goto menu3

:mnozenie
set /p a="Podaj pierwsza liczbe: "
set /p b="Podaj druga liczbe: "
set /a wynik=%a%*%b%
echo Wynik mnożenia: %wynik%
pause
goto menu3

:dzielenie
set /p a="Podaj pierwsza liczbe: "
set /p b="Podaj druga liczbe: "
if %b%==0 (
    echo Nie mozna dzielic	przez zero!
) else (
    set /a wynik=%a%/%b%
    echo Wynik dzielenia: %wynik%
)
pause
goto menu3

:koniec
exit
