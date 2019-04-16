::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::                                                    :::
:::           This Tool has coded by Barish            :::
:::                 GSMTURKEY.NET                      :::
:::                                                    :::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
:START
chcp 857 
cls
title Casper VIA G1 Plus Stock Rom / 
cd "%~dp0"
if exist "%~dp0\bin" SET PATH=%PATH%;"%~dp0\bin"
::------------------------------------------------------------------------------------------------------------------
::Colors
set "[LGREEN]=\033[92m"
set "[LCYAN]=\033[96m"
set "[LRED]=\033[91m"
set "[LMAGENTA]=\033[95m"
set "[LYELLOW]=\033[93m"
set "[WHITE]=\033[0m"
::------------------------------------------------------------------------------------------------------------------
:MAIN_TR
chcp 857 
cls
echo( 
echo ******************************************************************
echo *                %[LCYAN]%CASPER VIA G1 PLUS FASTBOOT ROM%[WHITE]%                 * | cmdcolor
echo *  %[LYELLOW]%            TOOL BARIS MIZRAKLI TARAFINDAN KODLANDI         %[WHITE]%  * | cmdcolor
echo *  %[LRED]%                          TESEKKURLER                       %[WHITE]%  * | cmdcolor
echo *                   %[LGREEN]%SILIVRISERDAR / GSMTURKEY.NET    %[WHITE]%            * | cmdcolor
echo *             %[LMAGENTA]%YAPACAGINIZ ISLEMLERDEN SORUMLU DEGILIZ   %[WHITE]%         * | cmdcolor
echo ******************************************************************
echo %[LCYAN]%  __________________   ________________________     %[WHITE]% | cmdcolor
echo %[LCYAN]%  [__)[__][__) ! (__   !\/! !   _/ [__)[__]!_/ !    ! %[WHITE]% | cmdcolor
echo %[LCYAN]%  [__)!  !!  \_!____)  !  !_!__/___!  \!  !!  \!__  ! %[WHITE]% | cmdcolor
echo.
echo %[LRED]%  YAPACAGINIZ ISLEMLERDEN DOGACAK HASARLARDAN SIZ SORUMLUSUNUZ.%[WHITE]% | cmdcolor
echo(
echo  OEM KILIDI ACIK BIR SEKILDE YUKLEME YAPINIZ
echo(	
echo  %[LMAGENTA]%1. STOCK BOOT ve STOCK RECOVERY%[LRED]%| cmdcolor 

echo  %[LYELLOW]%2. FULL ROM YUKLE%[LRED]%%[WHITE]% | cmdcolor 

echo  %[LRED]%3. ROMU FULL SIL%[LRED]%%[WHITE]% | cmdcolor 


echo ******************************************************************
echo                          %[LCYAN]%GSMTURKEY.NET%[WHITE]%                     | cmdcolor

echo   %[LRED]%                          BARIS MIZRAKLI                   %[WHITE]%   | cmdcolor
set /p option=Seciminizi yazin [1-3] ve ENTER'a basin: || set option="0"
if /I %option%==1 goto stockbootandrecovery
if /I %option%==2 goto fullrom
if /I %option%==3 goto erase


goto MAIN_TR

:stockbootandrecovery
@echo off
cls
echo  %[LMAGENTA]%STOCK BOOT ve STOCK RECOVERY%[LRED]%| cmdcolor
echo  %[LCYAN]%Yuklemek icin bir tus'a basmaniz bekleniyor...%[LRED]%%[WHITE]% | cmdcolor 
pause
fastboot erase recovery
fastboot flash recovery recovery.img
fastboot erase boot
fastboot flash boot boot.img
echo %[LRED]%Islev Tamamlandı.%[WHITE]% | cmdcolor
pause
goto MAIN_TR
:fullrom
@echo off
cls
echo  %[LMAGENTA]%FULL ROM%[LRED]%| cmdcolor
echo  %[LCYAN]%Yuklemek icin bir tus'a basmaniz bekleniyor...%[LRED]%%[WHITE]% | cmdcolor 
pause
echo Aboot Flashlanıyor.
fastboot flash aboot aboot.img
echo Bazı Dosyalar Flashlanıyor.
fastboot flash abootbak abootbak
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash apdp apdp
echo Boot Flashlanıyor.
fastboot flash boot boot.img
echo Cache Flashlanıyor.
fastboot flash cache cache.img
echo Bir Kac Dosya Daha Flashlanıyor.
fastboot flash cmnlib cmnlib
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash cmnlib64 cmnlib64

echo Bir Kac Dosya Daha Flashlanıyor.
fastboot flash cmnlib64bak cmnlib64bak
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash cmnlibbak cmnlibbak
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash config config
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash ddr ddr
echo Bir Kac Dosya Daha Flashlanıyor.

echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash devcfg devcfg
echo Bir Kac Dosya Daha Flashlanıyor.



fastboot flash devinfo devinfo
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash dip dip
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash dpo dpo
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash dsp dsp
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash fsc fsc
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash fsg fsg
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash keymaster keymaster
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash keymasterbak keymasterbak
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash keystore keystore
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash limits limits
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash mcfg mcfg
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash mdtp mdtp
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash misc misc
echo Modemler Flashlanıyor.
fastboot flash modem modem
fastboot flash modemst1 modemst1
fastboot flash modemst2 modemst2
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash mota mota
fastboot flash msadp msadp
echo Bir Kac Dosya Daha Flashlanıyor.

echo OEM Flashlanıyor.
fastboot flash oem oem
echo Persist Flashlanıyor.
fastboot flash persist persist.img
echo Recovery Flashlanıyor.
fastboot flash recovery recovery.img
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash rpm rpm
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash rpmbak rpmbak
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash sbl1 sbl1
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash sbl1bak sbl1bak
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash sec sec
echo Logo Flashlanıyor...

fastboot flash splash splash
fastboot flash ssd ssd
fastboot flash syscfg syscfg
echo System Flashlanıyor.
fastboot flash system system.img
echo Bir Kac Dosya Daha Flashlanıyor.

fastboot flash tz tz
fastboot flash tzbak tzbak
echo %[LRED]%Islev Tamamlandı.%[WHITE]% | cmdcolor
pause
goto MAIN_TR
:erase
@echo off
cls
echo  %[LMAGENTA]%FULL ERASE%[LRED]%| cmdcolor
echo  %[LCYAN]%ERASE icin bir tus'a basmaniz bekleniyor...%[LRED]%%[WHITE]% | cmdcolor 
pause
fastboot erase aboot
fastboot erase abootbak
fastboot erase apdp
fastboot erase boot
fastboot erase cache
fastboot erase cmnlib
fastboot erase cmnlib64
fastboot erase cmnlib64bak
fastboot erase cmnlibbak
fastboot erase config
fastboot erase ddr
fastboot erase devcfg
fastboot erase devinfo
fastboot erase dip
fastboot erase dpo
fastboot erase dsp
fastboot erase fsc
fastboot erase fsg
fastboot erase keymaster
fastboot erase keymasterbak
fastboot erase keystore
fastboot erase limits
fastboot erase mcfg
fastboot erase mdtp
fastboot erase misc
fastboot erase modem
fastboot erase modemst1
fastboot erase modemst2
fastboot erase mota
fastboot erase msadp
fastboot erase oem
fastboot erase persist
fastboot erase recovery
fastboot erase rpm
fastboot erase rpmbak
fastboot erase sbl1
fastboot erase sbl1bak
fastboot erase sec
fastboot erase splash
fastboot erase ssd
fastboot erase syscfg
fastboot erase system
fastboot erase tz
fastboot erase tzbak
echo %[LRED]%Islev Tamamlandı.%[WHITE]% | cmdcolor
pause
goto MAIN_TR





