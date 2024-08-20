@echo off
title gra

echo wpisz imie swojej postaci
set /p imie=
set /a hp=15
set /a maxhp=15
set /a coins=0
set /a lv=0
set /a damege=3
set /a ph=10
set /a damege1=4
set /a ph1=15
set /a damage2=3
set /a ph3=4
set /a damage3=5
set /a products_sold=0
cls
:menu
cls
echo                                    %time%
echo witaj w grze %imie%
echo ====================
echo coinsy %coins%
echo lv %lv%
echo ==========
echo #hp
echo #%maxhp%
echo.
echo wpisz 1 by zagrac
echo wpisz 3 by wejsc do sklepu
echo wpisz 2 by wyjsc
set /p answer= 
if %answer%==1 goto gra 
if %answer%==3 goto sklep
if %answer%==2 exit

:gra
echo rospoczyna sie twoja prygoda
echo 1. walka z przeciwnikiem
echo 2. powrut do menu 
set /p answer= 
if %answer%==1 goto walka
if %answer%==2 goto menu

:walka

set /a ran1=(%random% %%3)
if %ran1%==0 goto menu
cls

if %ran1%==1 goto 1
if %ran1%==2 goto 2
if %ran1%==3 goto 3

:1
set /a hp=15
cls
if %ph%==0 goto finish
echo                                            %time%
echo             walka!
echo================================
echo ogr
echo=statystyki////hp: %ph%////obrarzenia %damage1%
echo==========================================================
echo=%imie% 
echo=statystyki////hp: %hp%////obrarzenia: %damege%
echo.
echo 1 .uderz!
echo 2. lecz
set /p answer= select opsion
if %answer%==1 goto attack
if %answer%==2 goto regenate


:attack
set /a hp=%hp%-%ph%
set /a ph=%ph%-%hp%
if %ph%==0 goto finish
if %ph%==-1 goto finish
if %ph%==-2 goto finish
if %ph%==-3 goto finish
if %ph%==-4 goto finish
if %ph%==-5 goto finish
if %ph%==-6 goto finish
if %ph%==-7 goto finish
if %ph%==-8 goto finish
if %ph%==-9 goto finish
if %ph%==-10 goto finish
if %ph%==-11 goto finish
if %ph%==-12 goto finish
if %ph%==-13 goto finish
if %ph%==-14 goto finish
if %ph%==-15 goto finish
if %ph%==-16 goto finish
if %ph%==-17 goto finish
if %ph%==-18 goto finish
if %ph%==-19 goto finish
if %ph%==-20 goto finish
if %ph%==0 goto GameOver
if %ph%==-1 goto GameOver
if %ph%==-2 goto GameOver
if %ph%==-3 goto GameOver
if %ph%==-4 goto GameOver
if %ph%==-5 goto GameOver
if %ph%==-6 goto GameOver
if %ph%==-7 goto GameOver
if %ph%==-8 goto GameOver
if %ph%==-9 goto GameOver
if %ph%==-10 goto GameOver
if %ph%==-11 goto GameOver
if %ph%==-12 goto GameOver
if %ph%==-13 goto GameOver
if %ph%==-14 goto GameOver
if %ph%==-15 goto GameOver
if %ph%==-16 goto GameOver
if %ph%==-17 goto GameOver
if %ph%==-18 goto GameOver
if %ph%==-19 goto GameOver
if %ph%==-20 goto GameOver
goto walka

:regenate
set /a hp=%hp%+4
set /a ph=%ph%+1
goto walka


:finish
cls
set /a lv=%lv%+1
set /a  coins=%coins%+1
echo brawo ukoncyles bitwe
timeout /t 5 >nul
goto menu

:GameOver
cls
set /a  coins=%coins%-2
echo niestety nieudało sie
timeout /t 3
goto menu

:2
set /a hp=15
cls
if %ph1%==0 goto finish
echo                                            %time%
echo             walka!
echo================================
echo strange tree
echo=statystyki////hp: %ph1%////obrarzenia %damage1%
echo==========================================================
echo=%imie% 
echo=statystyki////hp: %hp%////obrarzenia: %damege%
echo.
echo 1 .uderz!
echo 2. lecz
set /p answer= select opsion
if %answer%==1 goto attack
if %answer%==2 goto regenate


:attack
set /a hp=%hp%-%ph1%
set /a ph1=%ph1%-%hp%
if %ph1%==0 goto finish1
if %ph1%==-1 goto finish1
if %ph1%==-2 goto finish1
if %ph1%==-3 goto finish1
if %ph1%==-4 goto finish1
if %ph1%==-5 goto finish1
if %ph1%==-6 goto finish1
if %ph1%==-7 goto finish1
if %ph1%==-8 goto finish1
if %ph1%==-9 goto finish1
if %ph1%==-10 goto finish1
if %ph1%==-11 goto finish1
if %ph1%==-12 goto finish1
if %ph1%==-13 goto finish1
if %ph1%==-14 goto finish1
if %ph1%==-15 goto finish1
if %ph1%==-16 goto finish1
if %ph1%==-17 goto finish1
if %ph1%==-18 goto finish1
if %ph1%==-19 goto finish1
if %ph1%==-20 goto finish1
if %ph1%==0 goto GameOver1
if %ph1%==-1 goto GameOver1
if %ph1%==-2 goto GameOver1
if %ph1%==-3 goto GameOver1
if %ph1%==-4 goto GameOver1
if %ph1%==-5 goto GameOver1
if %ph1%==-6 goto GameOver1
if %ph1%==-7 goto GameOver1
if %ph1%==-8 goto GameOver1
if %ph1%==-9 goto GameOver1
if %ph1%==-10 goto GameOver1
if %ph1%==-11 goto GameOver1
if %ph1%==-12 goto GameOver1
if %ph1%==-13 goto GameOver1
if %ph1%==-14 goto GameOver1
if %ph1%==-15 goto GameOver1
if %ph1%==-16 goto GameOver1
if %ph1%==-17 goto GameOver1
if %ph1%==-18 goto GameOver1
if %ph1%==-19 goto GameOver1
if %ph1%==-20 goto GameOver1
goto 2

:regenate
set /a hp=%hp%+4
set /a ph1=%ph1%+2
goto walka


:finish1
cls
set /a  coins=%coins%+2
echo brawo ukoncyles bitwe
timeout /t 5 >nul
goto menu

:GameOver1
cls
set /a  coins=%coins%-4
echo niestety nieudało sie
timeout /t 3
goto menu

:3
set /a hp=15
cls
if %ph3%==0 goto finish
echo                                            %time%
echo             walka!
echo================================
echo iron golem
echo=statystyki////hp: %ph3%////obrarzenia %damage3%
echo==========================================================
echo=%imie% 
echo=statystyki////hp: %hp%////obrarzenia: %damege%
echo.
echo 1 .uderz!
echo 2. lecz
set /p answer= select opsion
if %answer%==1 goto attack3
if %answer%==2 goto regenate3


:attack3
set /a hp=%hp%-%ph3%
set /a ph3=%ph3%-%hp%
if %ph3%==0 goto finish3
if %ph3%==-1 goto finish3
if %ph3%==-2 goto finish3
if %ph3%==-3 goto finish3
if %ph3%==-4 goto finish3
if %ph3%==-5 goto finish3
if %ph3%==-6 goto finish3
if %ph3%==-7 goto finish3
if %ph3%==-8 goto finish3
if %ph3%==-9 goto finish3
if %ph3%==-10 goto finish3
if %ph3%==-11 goto finish3
if %ph3%==-12 goto finish3
if %ph3%==-13 goto finish3
if %ph3%==-14 goto finish3
if %ph3%==-15 goto finish3
if %ph3%==-16 goto finish3
if %ph3%==-17 goto finish3
if %ph3%==-18 goto finish3
if %ph3%==-19 goto finish3
if %ph3%==-20 goto finish3
if %ph3%==0 goto GameOver3
if %ph3%==-1 goto GameOver3
if %ph3%==-2 goto GameOver3
if %ph3%==-3 goto GameOver3
if %ph3%==-4 goto GameOver3
if %ph3%==-5 goto GameOver3
if %ph3%==-6 goto GameOver3
if %ph3%==-7 goto GameOver3
if %ph3%==-8 goto GameOver3
if %ph3%==-9 goto GameOver3
if %ph3%==-10 goto GameOver3
if %ph3%==-11 goto GameOver3
if %ph3%==-12 goto GameOver3
if %ph3%==-13 goto GameOver3
if %ph3%==-14 goto GameOver3
if %ph3%==-15 goto GameOver3
if %ph3%==-16 goto GameOver3
if %ph3%==-17 goto GameOver3
if %ph3%==-18 goto GameOver3
if %ph3%==-19 goto GameOver3
if %ph3%==-20 goto GameOver
goto 3

:regenate3
set /a hp=%hp%+4
set /a ph1=%ph1%+2
goto walka


:finish3
cls
set /a lv=%lv%+3
set /a coins=%coins%+3
echo brawo ukoncyles bitwe
timeout /t 5 >nul
goto menu

:GameOver3
cls
set /a coins=%coins%-1
echo niestety nieudało sie
timeout /t 3
goto menu

:sklep 
echo      1      
echo     14$ 
echo leprzy miecz
echo.
echo kliknij x by wyjsc ze sklepu 
set /p kup= 
if %kup%==x goto menu
if %kup%==1 goto kup1

:kup1
if coins==15 goto kup1,1
if not coins==15 goto purchase_failed
if products_sold==2 goto purchase_failed1
:kup1,1
set /a coins=%coins%-14
set /a damege=%damege%+2
set /a products_sold=%products_sold%+1
goto sklep

:purchase_failed
echo    zakup nieudany 
echo	powud za malo piniedzy
timeout /t 3 >nul
cls
goto sklep

:purchase_failed1
echo    zakup nieudany 
echo	powud wykupiles ten produkt
timeout /t 3 >nul
cls
goto sklep