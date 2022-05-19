:reboot
@echo off
title Enigma
color 0f
set "col="
if not exist Data.txt goto missinglink
setlocal
set file="Data.txt"
FOR /F "usebackq" %%A IN ('%file%') DO set size=%%~zA
if %size% GEQ 644300 if %size% LEQ 6443000 goto kkmart
goto missinglink
:kkmart
endlocal
set n=0
set s=0
set vad=0
if not exist opt.dat goto optionnn
 <opt.dat (
 set/p col=
 set/p hel=
 )
:lfk
title Enigma
if not exist opt.dat set col=OA&set hel=FALSE
color %col%
:smml
set sw=0
set sma=1
set med=1
set lrg=1
set num=111
title Enigma Machine [%sw%]--[%sma%]--[%med%]--[%lrg%]
:Menu
title Enigma Machine [%sw%]--[%sma%]--[%med%]--[%lrg%]
:Start
del Secret.txt
color %col%
set switch=okkk
cls
echo                 " _____ _   _ _____ _____ ___  ___  ___  "
echo                 "|  ___| \ | |_   _|  __ \|  \/  | / _ \ "
echo                 "| |__ |  \| | | | | |  \/| .  . |/ /_\ \"
echo                 "|  __|| . \ | | | | | __ | |\/| ||  _  |"
echo                 "| |___| |\  |_| |_| |_\ \| |  | || | | |"
echo                 "\____/\_| \_/\___/ \____/\_|  |_/\_| |_/"
echo.
echo.
echo                       -----------------------------
echo                       I  (1) Encrypt / Decode     I
echo                       I                           I
echo                       I  (2) Turn The Rotors      I
echo                       I                           I
echo                       I  (3) Options              I
echo                       I                           I
echo                       I  (4) Help                 I
echo                       I                           I
echo                       I  (5) Exit                 I
echo                       -----------------------------
echo. 
echo                                                             -------------------
echo                                                             I  Made By Filip  I
echo                                                             -------------------
CHOICE /C 12345 /N 
IF %ERRORLEVEL%==1 goto okkk
IF %ERRORLEVEL%==2 goto TTR
IF %ERRORLEVEL%==4 goto Help
IF %ERRORLEVEL%==3 goto optionnde
IF %ERRORLEVEL%==5 goto exit
goto Menu
:optionnde
cls
echo.
echo.
echo                       --------------------------------
echo                       I  (1) Color Change            I
echo                       I                              I
echo                       I  (2) Assist Enable/Disable   I
echo                       I                              I
echo                       I  (3) Back                    I
echo                       --------------------------------
echo.
echo.
CHOICE /C 123 /N 
IF %ERRORLEVEL%==1 goto optionn
IF %ERRORLEVEL%==2 goto helptog
IF %ERRORLEVEL%==3 goto menu
goto optionnde
:helptog
cls
if %hel%==TRUE echo %col%>opt.dat&echo FALSE >> opt.dat&set hel=FALSE&goto optionndee
echo %col%>opt.dat
echo TRUE >>opt.dat
set hel=TRUE
goto optionndee
:optionndee
if %hel%==TRUE echo Help Is Toggled Off
if %hel%==FALSE echo Help Is Toggled On
pause
goto optionnde 
:optionnn
cls
echo                          Welcome To Enigma !
pause
:optionnd
cls
echo Do You Want Default  y or n ?
echo (Green Letters Black Background)
set/p "selection=>"
if %selection%==y set colorn=A& set letcol=0& goto donedone
if %selection%==n goto optionn
if %selection%==Y set colorn=A& set letcol=0& goto donedone
if %selection%==N goto optionn
:optionn
color 0f
color %col%
cls
echo Choose Letter Color !
ECHO  A	=	Light Green
ECHO  B	=	Light Aqua
ECHO  C	=	Light Red
ECHO  D	=	Light Purple
ECHO  E	=	Light Yellow
ECHO  F	=	Bright White
CHOICE /C ABCDEF /N 
IF %ERRORLEVEL%==1 set colorn=A& goto nextnc
IF %ERRORLEVEL%==2 set colorn=B& goto nextnc
IF %ERRORLEVEL%==3 set colorn=C& goto nextnc
IF %ERRORLEVEL%==4 set colorn=D& goto nextnc
IF %ERRORLEVEL%==5 set colorn=E& goto nextnc
IF %ERRORLEVEL%==6 set colorn=F& goto nextnc
goto optionn
:nextnc
cls
echo Choose Background Color !
echo 0	=	Black	 	
echo 1	=	Blue
echo 2	=	Green	 	
echo 3	=	Aqua	 	
echo 4	=	Red	 	    
echo 5	=	Purple	 	
echo 6	=	Yellow	 	
echo 7	=	White
echo 8	=	Gray
echo 9	=	Light Blue	
CHOICE /C 0123456789 /N 
IF %ERRORLEVEL%==1 set letcol=0& goto donecol
IF %ERRORLEVEL%==2 set letcol=1& goto donecol
IF %ERRORLEVEL%==3 set letcol=2& goto donecol
IF %ERRORLEVEL%==4 set letcol=3& goto donecol
IF %ERRORLEVEL%==5 set letcol=4& goto donecol
IF %ERRORLEVEL%==6 set letcol=5& goto donecol
IF %ERRORLEVEL%==7 set letcol=6& goto donecol
IF %ERRORLEVEL%==8 set letcol=7& goto donecol
IF %ERRORLEVEL%==9 set letcol=8& goto donecol
IF %ERRORLEVEL%==10 set letcol=9& goto donecol
goto nextnc
:donecol
cls
color %letcol%%colorn%
echo Is This the Color You Want  y or n ?
CHOICE /C yn /N 
IF %ERRORLEVEL%==1 goto donedone
IF %ERRORLEVEL%==2 goto optionn
goto donecol
:donedone
echo %letcol%%colorn%>opt.dat
echo TRUE>>opt.dat
set col=%letcol%%colorn%
set hel=TRUE
goto lfk
:exit
exit
:okkk
set bod=0
set kok=10
set noo=1
echo Enigma Machine [%sw%]--[%sma%]--[%med%]--[%lrg%]>Secret.txt
set var1=Enigma Machine [%sw%]--[%sma%]--[%med%]--[%lrg%]
set switch=okk
title Enigma Machine [%sw%]--[%sma%]--[%med%]--[%lrg%]
cls
echo.
echo.
echo                      --------------------------
echo                      I    T    S    M    L    I
echo                      I                        I
if %lrg% GEQ 10 if %med% GEQ 10 echo                      I  [%sw%]--[%sma%]--[%med%]--[%lrg%]  I  
if %lrg% LSS 10 if %med% LSS 10 echo                      I   [%sw%]--[%sma%]--[%med%]--[%lrg%]   I  
if %lrg% LSS 10 if %med% GEQ 10 echo                      I   [%sw%]--[%sma%]--[%med%]--[%lrg%]  I  
if %med% LSS 10 if %lrg% GEQ 10 echo                      I   [%sw%]--[%sma%]--[%med%]--[%lrg%]  I  
echo                      I                        I
echo                      I    Type Your Text      I
echo                      --------------------------
echo.
echo.
echo.
set/p "lettt=>"
if "%lettt%"=="menu" goto Menu
setlocal
call :strlen result lettt
goto newfact
:wait
if %let%==1 set let=%Tnum1%& goto check
if %let%==2 set let=%Tnum2%& goto check
if %let%==3 set let=%Tnum3%& goto check
if %let%==4 set let=%Tnum4%& goto check
if %let%==5 set let=%Tnum5%& goto check
if %let%==6 set let=%Tnum6%& goto check
if %let%==7 set let=%Tnum7%& goto check
if %let%==8 set let=%Tnum8%& goto check
if %let%==9 set let=%Tnum9%& goto check
if %let%==10 set let=%Tnum10%& goto check
if %let%==11 set let=%Tnum11%& goto check
if %let%==12 set let=%Tnum12%& goto check
if %let%==13 set let=%Tnum13%& goto check
if %let%==14 set let=%Tnum14%& goto check
if %let%==15 set let=%Tnum15%& goto check
if %let%==16 set let=%Tnum16%& goto check
if %let%==17 set let=%Tnum17%& goto check
if %let%==18 set let=%Tnum18%& goto check
if %let%==19 set let=%Tnum19%& goto check
if %let%==20 set let=%Tnum20%& goto check
if %let%==21 set let=%Tnum21%& goto check
if %let%==22 set let=%Tnum22%& goto check
if %let%==23 set let=%Tnum23%& goto check
if %let%==24 set let=%Tnum24%& goto check
if %let%==25 set let=%Tnum25%& goto check
if %let%==26 set let=%Tnum26%& goto check
:check
if %type%==c goto INTERc
:INTERn
if %let%==1 set let=a
if %let%==2 set let=b
if %let%==3 set let=c
if %let%==4 set let=d
if %let%==5 set let=e
if %let%==6 set let=f
if %let%==7 set let=g
if %let%==8 set let=h
if %let%==9 set let=i
if %let%==10 set let=j
if %let%==11 set let=k
if %let%==12 set let=l
if %let%==13 set let=m
if %let%==14 set let=n
if %let%==15 set let=o
if %let%==16 set let=p
if %let%==17 set let=q
if %let%==18 set let=r
if %let%==19 set let=s
if %let%==20 set let=t
if %let%==21 set let=u
if %let%==22 set let=v
if %let%==23 set let=w
if %let%==24 set let=x
if %let%==25 set let=y
if %let%==26 set let=z
set/a num=%num%+1
set/a lrg=%lrg%+1
if %lrg%==100 goto clock
goto %switch%
:INTERc
if %let%==1 set let=A
if %let%==2 set let=B
if %let%==3 set let=C
if %let%==4 set let=D
if %let%==5 set let=E
if %let%==6 set let=F
if %let%==7 set let=G
if %let%==8 set let=H
if %let%==9 set let=I
if %let%==10 set let=J
if %let%==11 set let=K
if %let%==12 set let=L
if %let%==13 set let=M
if %let%==14 set let=N
if %let%==15 set let=O
if %let%==16 set let=P
if %let%==17 set let=Q
if %let%==18 set let=R
if %let%==19 set let=S
if %let%==20 set let=T
if %let%==21 set let=U
if %let%==22 set let=V
if %let%==23 set let=W
if %let%==24 set let=X
if %let%==25 set let=Y
if %let%==26 set let=Z
set/a num=%num%+1
set/a lrg=%lrg%+1
if %lrg%==100 goto clock
goto %switch%
:clock
set lrg=1
set/a med=%med%+1
if %med%==10 goto clock2
goto %switch%
:clock2
set med=1
set/a sma=%sma%+1
if %sma%==10 goto clock3
goto %switch%
:clock3
set sma=1
set/a sw=%sw%+1
if %sw%==2 goto clock4
goto %switch%
:clock4
set sw=0
set med=1
set sma=1
set lrg=1
set num=111
goto %switch%
:TTR
cls
set lrgp=%lrg%
title Enigma Machine [%sw%]--[%sma%]--[%med%]--[%lrg%]
if %hel%==TRUE  echo Typing menu At Any Point Will Get You Back To The Main Menu !
echo.
echo.
echo                      --------------------------
echo                      I    T    S    M    L    I
echo                      I                        I
if %lrg% GEQ 10 if %med% GEQ 10 echo                      I  [%sw%]--[%sma%]--[%med%]--[%lrg%]  I  
if %lrg% LSS 10 if %med% LSS 10 echo                      I   [%sw%]--[%sma%]--[%med%]--[%lrg%]   I  
if %lrg% LSS 10 if %med% GEQ 10 echo                      I   [%sw%]--[%sma%]--[%med%]--[%lrg%]  I  
if %med% LSS 10 if %lrg% GEQ 10 echo                      I   [%sw%]--[%sma%]--[%med%]--[%lrg%]  I  
echo                      I                        I
echo                      I                        I
echo                      --------------------------
echo.
echo.
echo.
echo      Turn The Large Rotor To :
set/p "lrg=>"
cls
:strat
cls
if %lrg%==menu set lrg=%lrgp%& goto Menu
if %lrg% GEQ 1 goto next1
echo Large Rotor goes from 1-99
pause
goto TTR
:next1
if %lrg% LEQ 99 goto nextm
set lrg=%lrgp%
echo Large Rotor goes from 1-99
pause
goto TTR
:nextm
cls
set medp=%med%
title Enigma Machine [%sw%]--[%sma%]--[%med%]--[%lrg%]
if %hel%==TRUE  echo Typing menu At Any Point Will Get You Back To The Main Menu !
echo.
echo.
echo                      --------------------------
echo                      I    T    S    M    L    I
echo                      I                        I
if %lrg% GEQ 10 if %med% GEQ 10 echo                      I  [%sw%]--[%sma%]--[%med%]--[%lrg%]  I  
if %lrg% LSS 10 if %med% LSS 10 echo                      I   [%sw%]--[%sma%]--[%med%]--[%lrg%]   I  
if %lrg% LSS 10 if %med% GEQ 10 echo                      I   [%sw%]--[%sma%]--[%med%]--[%lrg%]  I  
if %med% LSS 10 if %lrg% GEQ 10 echo                      I   [%sw%]--[%sma%]--[%med%]--[%lrg%]  I   
echo                      I                        I
echo                      I                        I
echo                      --------------------------
echo.
echo.
echo.
echo      Turn The Medium Rotor To :
set/p "med=>"
cls
:strat2
cls
if %med%==menu set med=%medp%& goto Menu
if %med% GEQ 1 goto next2
echo Large Rotor goes from 1-9
pause
goto nextm
:next2
if %med% LEQ 9 goto nexts
echo Medium Rotor goes from 1-9
 set med=%medp%
pause
goto nextm
:nexts
cls
set smap=%sma%
title Enigma Machine [%sw%]--[%sma%]--[%med%]--[%lrg%]
if %hel%==TRUE  echo Typing menu At Any Point Will Get You Back To The Main Menu !
echo.
echo.
echo                      --------------------------
echo                      I    T    S    M    L    I
echo                      I                        I
if %lrg% GEQ 10 if %med% GEQ 10 echo                      I  [%sw%]--[%sma%]--[%med%]--[%lrg%]  I  
if %lrg% LSS 10 if %med% LSS 10 echo                      I   [%sw%]--[%sma%]--[%med%]--[%lrg%]   I  
if %lrg% LSS 10 if %med% GEQ 10 echo                      I   [%sw%]--[%sma%]--[%med%]--[%lrg%]  I  
if %med% LSS 10 if %lrg% GEQ 10 echo                      I   [%sw%]--[%sma%]--[%med%]--[%lrg%]  I     
echo                      I                        I
echo                      I                        I
echo                      --------------------------
echo.
echo.
echo.
echo      Turn The Small Rotor To :
set/p "sma=>"
cls
:strat3
cls
if %sma%==menu set sma=%smap%& goto Menu
if %sma% GEQ 1 goto next3
echo Large Rotor goes from 1-9
pause
goto nexts
:next3
if %sma% LEQ 9 goto nextss
if %sma%==menu goto Menu
echo Small Rotor goes from 1-9
set sma=%smap%
pause
goto nexts
:nextss
cls
set swp=%sw%
title Enigma Machine [%sw%]--[%sma%]--[%med%]--[%lrg%]
if %hel%==TRUE  echo Typing menu At Any Point Will Get You Back To The Main Menu !
echo.
echo.
echo                      --------------------------
echo                      I    T    S    M    L    I
echo                      I                        I
if %lrg% GEQ 10 if %med% GEQ 10 echo                      I  [%sw%]--[%sma%]--[%med%]--[%lrg%]  I  
if %lrg% LSS 10 if %med% LSS 10 echo                      I   [%sw%]--[%sma%]--[%med%]--[%lrg%]   I  
if %lrg% LSS 10 if %med% GEQ 10 echo                      I   [%sw%]--[%sma%]--[%med%]--[%lrg%]  I  
if %med% LSS 10 if %lrg% GEQ 10 echo                      I   [%sw%]--[%sma%]--[%med%]--[%lrg%]  I  
echo                      I                        I
echo                      I                        I
echo                      --------------------------
echo.
echo.
echo.
echo      Turn The Small Rotor To :
set/p "sw=>"
cls
:next4
if %swp%==menu set sw=%swp%&goto Menu
if %sw%==0 goto over
if %sw%==1 goto over
set sw=%swp%
cls
echo Thousands Rotor goes from 0-1 
pause
goto nextss
:over
cls
title Enigma Machine [%sw%]--[%sma%]--[%med%]--[%lrg%]
echo.
echo.
echo                      --------------------------
echo                      I    T    S    M    L    I
echo                      I                        I
if %lrg% GEQ 10 if %med% GEQ 10 echo                      I  [%sw%]--[%sma%]--[%med%]--[%lrg%]  I  
if %lrg% LSS 10 if %med% LSS 10 echo                      I   [%sw%]--[%sma%]--[%med%]--[%lrg%]   I  
if %lrg% LSS 10 if %med% GEQ 10 echo                      I   [%sw%]--[%sma%]--[%med%]--[%lrg%]  I  
if %med% LSS 10 if %lrg% GEQ 10 echo                      I   [%sw%]--[%sma%]--[%med%]--[%lrg%]  I      
echo                      I                        I
echo                      I                        I
echo                      --------------------------
echo.
echo.
echo.
if %sw%==1 set num=%sw%%sma%%med%%lrg%
if %sw%==0 set num=%sma%%med%%lrg%
pause
goto Menu
:strlen <resultVar> <stringVar>
(   
    setlocal EnableDelayedExpansion
    set "s=!%~2!#"
    set "len=0"
    for %%P in (4096 2048 1024 512 256 128 64 32 16 8 4 2 1) do (
        if "!s:~%%P,1!" NEQ "" ( 
            set /a "len+=%%P"
            set "s=!s:~%%P!"
        )
    )
)
( 
    endlocal
    set "%~1=%len%"
    exit /b
)
:newfact
set "trump1=  "
set "trump2=  "
set "trump3=  "
set "trump4=  "
set "trump5=  "
set "trump6=  "
set "trump7=  "
set "trump8=  "
set "trump9=  "
set "trump10=  "
set "trump11=  "
set "trump12=  "
set "trump13=  "
set "trump14=  "
set "trump15=  "
set "trump16=  "
set "trump17=  "
set "trump18=  "
set "trump19=  "
set "trump20=  "
set tmp=%time%
set endprd='
SET art=0
set switch=okkkk
set/a load=%result%/10
if %load%==0 set load=1
set bnt=0
set brr=0
:okk
set type=n
if %art%==%result% goto ovver
CALL SET nana=%%lettt:~%art%,1%%
set "let=%nana%"
IF "%let%"=="=" goto okkkk
IF "%let%"=="," goto okkkk
IF "%let%"==" " goto okkkk
if %let%==a set let=1 & goto next
if %let%==b set let=2 & goto next
if %let%==c set let=3 & goto next
if %let%==d set let=4 & goto next
if %let%==e set let=5 & goto next
if %let%==f set let=6 & goto next
if %let%==g set let=7 & goto next
if %let%==h set let=8 & goto next
if %let%==i set let=9 & goto next
if %let%==j set let=10 & goto next
if %let%==k set let=11 & goto next
if %let%==l set let=12 & goto next
if %let%==m set let=13 & goto next
if %let%==n set let=14 & goto next
if %let%==o set let=15 & goto next
if %let%==p set let=16 & goto next
if %let%==q set let=17 & goto next
if %let%==r set let=18 & goto next
if %let%==s set let=19 & goto next
if %let%==t set let=20 & goto next
if %let%==u set let=21 & goto next
if %let%==v set let=22 & goto next
if %let%==w set let=23 & goto next
if %let%==x set let=24 & goto next
if %let%==y set let=25 & goto next
if %let%==z set let=26 & goto next
if %let%==A set let=1  & set type=c & goto next
if %let%==B set let=2  & set type=c & goto next
if %let%==C set let=3  & set type=c & goto next
if %let%==D set let=4  & set type=c & goto next
if %let%==E set let=5  & set type=c & goto next
if %let%==F set let=6  & set type=c & goto next
if %let%==G set let=7  & set type=c & goto next
if %let%==H set let=8  & set type=c & goto next
if %let%==I set let=9  & set type=c & goto next
if %let%==J set let=10  & set type=c & goto next
if %let%==K set let=11  & set type=c & goto next
if %let%==L set let=12  & set type=c & goto next
if %let%==M set let=13  & set type=c & goto next
if %let%==N set let=14 & set type=c & goto next
if %let%==O set let=15  & set type=c & goto next
if %let%==P set let=16  & set type=c & goto next
if %let%==Q set let=17  & set type=c & goto next
if %let%==R set let=18  & set type=c & goto next
if %let%==S set let=19  & set type=c & goto next
if %let%==T set let=20  & set type=c & goto next
if %let%==U set let=21  & set type=c & goto next
if %let%==V set let=22  & set type=c & goto next
if %let%==W set let=23  & set type=c & goto next
if %let%==X set let=24 & set type=c & goto next
if %let%==Y set let=25 & set type=c & goto next
if %let%==Z set let=26 & set type=c & goto next
goto okkkk
:next
set Tnum1=0
set Tnum2=0
set Tnum3=0
set Tnum4=0
set Tnum5=0
set Tnum6=0
set Tnum7=0
set Tnum8=0
set Tnum9=0
set Tnum10=0
set Tnum11=0
set Tnum12=0
set Tnum13=0
set Tnum14=0
set Tnum15=0
set Tnum16=0
set Tnum17=0
set Tnum18=0
set Tnum19=0
set Tnum20=0
set Tnum21=0
set Tnum22=0
set Tnum23=0
set Tnum24=0
set Tnum25=0
set Tnum26=0
set chnum=0
set bloop=0
:brfaf
set "s="
SET /a blip=(((%NUM%-110)/19))+1
set "sin="
for /F "skip=%blip% delims=" %%i in (data.txt) do if not defined sin set "sin=%%i"
:goog
SET/a LLM=((%blip%*19)-(%NUM%-110))
SET/A LLM=19-%LLM%
if %LLM%==0 set LLM=19
set/a brop=(%LLM%*13)-13
SET /A KKKP=%LLM%*13
set r=0
:II
CALL SET suu=%%sin:~%brop%,1%%
set s=%s%%suu%
if %brop%==%KKKP% goto I
set/a brop=%brop%+1
goto II
:I
CALL SET nana%bloop%=%%s:~%bloop%,1%%
if %bloop%==12 goto mainlol
set/a bloop=%bloop%+1
goto I
:mainlol
if %chnum%==0 set lol=%nana0%
if %chnum%==1 set lol=%nana1%
if %chnum%==2 set lol=%nana2%
if %chnum%==3 set lol=%nana3%
if %chnum%==4 set lol=%nana4%
if %chnum%==5 set lol=%nana5%
if %chnum%==6 set lol=%nana6%
if %chnum%==7 set lol=%nana7%
if %chnum%==8 set lol=%nana8%
if %chnum%==9 set lol=%nana9%
if %chnum%==10 set lol=%nana10%
if %chnum%==11 set lol=%nana11%
if %chnum%==12 set lol=%nana12%
if %chnum%==13 goto lol1
:mainlolfaz
if %lol%==a set lol=10
if %lol%==b set lol=11
if %lol%==c set lol=12
if %lol%==d set lol=13
if %lol%==e set lol=14
if %lol%==f set lol=15
if %lol%==g set lol=16
if %lol%==h set lol=17
if %lol%==i set lol=18
if %lol%==j set lol=19
if %lol%==k set lol=20
if %lol%==l set lol=21
if %lol%==m set lol=22
if %lol%==n set lol=23
if %lol%==o set lol=24
if %lol%==p set lol=25
if %lol%==q set lol=26
set/a chnum=%chnum%+1
set c%chnum%=%lol%
goto mainlol
:lol1
set trr=2
set try=2
set tr=1
set Tnum1=%c1%
set Tnum%c1%=1
:demo1
if %try%==2 set c=%c2%&set Tnum=%Tnum2%&goto dep
if %try%==3 set c=%c2%&set Tnum=%Tnum3%&goto dep
if %try%==4 set c=%c2%&set Tnum=%Tnum4%&goto dep
if %try%==5 set c=%c2%&set Tnum=%Tnum5%&goto dep
if %try%==6 set c=%c2%&set Tnum=%Tnum6%&goto dep
if %try%==7 set c=%c2%&set Tnum=%Tnum7%&goto dep
if %try%==8 set c=%c2%&set Tnum=%Tnum8%&goto dep
if %try%==9 set c=%c2%&set Tnum=%Tnum9%&goto dep
if %try%==10 set c=%c2%&set Tnum=%Tnum10%&goto dep
if %try%==11 set c=%c2%&set Tnum=%Tnum11%&goto dep
if %try%==12 set c=%c2%&set Tnum=%Tnum12%&goto dep
if %try%==13 set c=%c2%&set Tnum=%Tnum13%&goto dep
if %try%==14 set c=%c2%&set Tnum=%Tnum14%&goto dep
if %try%==15 set c=%c2%&set Tnum=%Tnum15%&goto dep
if %try%==16 set c=%c2%&set Tnum=%Tnum16%&goto dep
if %try%==17 set c=%c2%&set Tnum=%Tnum17%&goto dep
if %try%==18 set c=%c2%&set Tnum=%Tnum18%&goto dep
if %try%==19 set c=%c2%&set Tnum=%Tnum19%&goto dep
if %try%==20 set c=%c2%&set Tnum=%Tnum20%&goto dep
if %try%==21 set c=%c2%&set Tnum=%Tnum21%&goto dep
if %try%==22 set c=%c2%&set Tnum=%Tnum22%&goto dep
if %try%==23 set c=%c2%&set Tnum=%Tnum23%&goto dep
if %try%==24 set c=%c2%&set Tnum=%Tnum24%&goto dep
if %try%==25 set c=%c2%&set Tnum=%Tnum25%&goto dep
if %try%==26 set c=%c2%&set Tnum=%Tnum26%&goto dep
:dep1
if %try%==27 goto wait
:demo2
if %try%==3 set c=%c3%&set Tnum=%Tnum3%&goto dep
if %try%==4 set c=%c3%&set Tnum=%Tnum4%&goto dep
if %try%==5 set c=%c3%&set Tnum=%Tnum5%&goto dep
if %try%==6 set c=%c3%&set Tnum=%Tnum6%&goto dep
if %try%==7 set c=%c3%&set Tnum=%Tnum7%&goto dep
if %try%==8 set c=%c3%&set Tnum=%Tnum8%&goto dep
if %try%==9 set c=%c3%&set Tnum=%Tnum9%&goto dep
if %try%==10 set c=%c3%&set Tnum=%Tnum10%&goto dep
if %try%==11 set c=%c3%&set Tnum=%Tnum11%&goto dep
if %try%==12 set c=%c3%&set Tnum=%Tnum12%&goto dep
if %try%==13 set c=%c3%&set Tnum=%Tnum13%&goto dep
if %try%==14 set c=%c3%&set Tnum=%Tnum14%&goto dep
if %try%==15 set c=%c3%&set Tnum=%Tnum15%&goto dep
if %try%==16 set c=%c3%&set Tnum=%Tnum16%&goto dep
if %try%==17 set c=%c3%&set Tnum=%Tnum17%&goto dep
if %try%==18 set c=%c3%&set Tnum=%Tnum18%&goto dep
if %try%==19 set c=%c3%&set Tnum=%Tnum19%&goto dep
if %try%==20 set c=%c3%&set Tnum=%Tnum20%&goto dep
if %try%==21 set c=%c3%&set Tnum=%Tnum21%&goto dep
if %try%==22 set c=%c3%&set Tnum=%Tnum22%&goto dep
if %try%==23 set c=%c3%&set Tnum=%Tnum23%&goto dep
if %try%==24 set c=%c3%&set Tnum=%Tnum24%&goto dep
if %try%==25 set c=%c3%&set Tnum=%Tnum25%&goto dep
if %try%==26 set c=%c3%&set Tnum=%Tnum26%&goto dep
if %try%==27 goto wait
:demo3
if %try%==4 set c=%c4%&set Tnum=%Tnum4%&goto dep
if %try%==5 set c=%c4%&set Tnum=%Tnum5%&goto dep
if %try%==6 set c=%c4%&set Tnum=%Tnum6%&goto dep
if %try%==7 set c=%c4%&set Tnum=%Tnum7%&goto dep
if %try%==8 set c=%c4%&set Tnum=%Tnum8%&goto dep
if %try%==9 set c=%c4%&set Tnum=%Tnum9%&goto dep
if %try%==10 set c=%c4%&set Tnum=%Tnum10%&goto dep
if %try%==11 set c=%c4%&set Tnum=%Tnum11%&goto dep
if %try%==12 set c=%c4%&set Tnum=%Tnum12%&goto dep
if %try%==13 set c=%c4%&set Tnum=%Tnum13%&goto dep
if %try%==14 set c=%c4%&set Tnum=%Tnum14%&goto dep
if %try%==15 set c=%c4%&set Tnum=%Tnum15%&goto dep
if %try%==16 set c=%c4%&set Tnum=%Tnum16%&goto dep
if %try%==17 set c=%c4%&set Tnum=%Tnum17%&goto dep
if %try%==18 set c=%c4%&set Tnum=%Tnum18%&goto dep
if %try%==19 set c=%c4%&set Tnum=%Tnum19%&goto dep
if %try%==20 set c=%c4%&set Tnum=%Tnum20%&goto dep
if %try%==21 set c=%c4%&set Tnum=%Tnum21%&goto dep
if %try%==22 set c=%c4%&set Tnum=%Tnum22%&goto dep
if %try%==23 set c=%c4%&set Tnum=%Tnum23%&goto dep
if %try%==24 set c=%c4%&set Tnum=%Tnum24%&goto dep
if %try%==25 set c=%c4%&set Tnum=%Tnum25%&goto dep
if %try%==26 set c=%c4%&set Tnum=%Tnum26%&goto dep
if %try%==27 goto wait
:demo4
if %try%==5 set c=%c5%&set Tnum=%Tnum5%&goto dep
if %try%==6 set c=%c5%&set Tnum=%Tnum6%&goto dep
if %try%==7 set c=%c5%&set Tnum=%Tnum7%&goto dep
if %try%==8 set c=%c5%&set Tnum=%Tnum8%&goto dep
if %try%==9 set c=%c5%&set Tnum=%Tnum9%&goto dep
if %try%==10 set c=%c5%&set Tnum=%Tnum10%&goto dep
if %try%==11 set c=%c5%&set Tnum=%Tnum11%&goto dep
if %try%==12 set c=%c5%&set Tnum=%Tnum12%&goto dep
if %try%==13 set c=%c5%&set Tnum=%Tnum13%&goto dep
if %try%==14 set c=%c5%&set Tnum=%Tnum14%&goto dep
if %try%==15 set c=%c5%&set Tnum=%Tnum15%&goto dep
if %try%==16 set c=%c5%&set Tnum=%Tnum16%&goto dep
if %try%==17 set c=%c5%&set Tnum=%Tnum17%&goto dep
if %try%==18 set c=%c5%&set Tnum=%Tnum18%&goto dep
if %try%==19 set c=%c5%&set Tnum=%Tnum19%&goto dep
if %try%==20 set c=%c5%&set Tnum=%Tnum20%&goto dep
if %try%==21 set c=%c5%&set Tnum=%Tnum21%&goto dep
if %try%==22 set c=%c5%&set Tnum=%Tnum22%&goto dep
if %try%==23 set c=%c5%&set Tnum=%Tnum23%&goto dep
if %try%==24 set c=%c5%&set Tnum=%Tnum24%&goto dep
if %try%==25 set c=%c5%&set Tnum=%Tnum25%&goto dep
if %try%==26 set c=%c5%&set Tnum=%Tnum26%&goto dep
if %try%==27 goto wait
:demo5
if %try%==6 set c=%c6%&set Tnum=%Tnum6%&goto dep
if %try%==7 set c=%c6%&set Tnum=%Tnum7%&goto dep
if %try%==8 set c=%c6%&set Tnum=%Tnum8%&goto dep
if %try%==9 set c=%c6%&set Tnum=%Tnum9%&goto dep
if %try%==10 set c=%c6%&set Tnum=%Tnum10%&goto dep
if %try%==11 set c=%c6%&set Tnum=%Tnum11%&goto dep
if %try%==12 set c=%c6%&set Tnum=%Tnum12%&goto dep
if %try%==13 set c=%c6%&set Tnum=%Tnum13%&goto dep
if %try%==14 set c=%c6%&set Tnum=%Tnum14%&goto dep
if %try%==15 set c=%c6%&set Tnum=%Tnum15%&goto dep
if %try%==16 set c=%c6%&set Tnum=%Tnum16%&goto dep
if %try%==17 set c=%c6%&set Tnum=%Tnum17%&goto dep
if %try%==18 set c=%c6%&set Tnum=%Tnum18%&goto dep
if %try%==19 set c=%c6%&set Tnum=%Tnum19%&goto dep
if %try%==20 set c=%c6%&set Tnum=%Tnum20%&goto dep
if %try%==21 set c=%c6%&set Tnum=%Tnum21%&goto dep
if %try%==22 set c=%c6%&set Tnum=%Tnum22%&goto dep
if %try%==23 set c=%c6%&set Tnum=%Tnum23%&goto dep
if %try%==24 set c=%c6%&set Tnum=%Tnum24%&goto dep
if %try%==25 set c=%c6%&set Tnum=%Tnum25%&goto dep
if %try%==26 set c=%c6%&set Tnum=%Tnum26%&goto dep
if %try%==27 goto wait
:demo6
if %try%==7 set c=%c7%&set Tnum=%Tnum7%&goto dep
if %try%==8 set c=%c7%&set Tnum=%Tnum8%&goto dep
if %try%==9 set c=%c7%&set Tnum=%Tnum9%&goto dep
if %try%==10 set c=%c7%&set Tnum=%Tnum10%&goto dep
if %try%==11 set c=%c7%&set Tnum=%Tnum11%&goto dep
if %try%==12 set c=%c7%&set Tnum=%Tnum12%&goto dep
if %try%==13 set c=%c7%&set Tnum=%Tnum13%&goto dep
if %try%==14 set c=%c7%&set Tnum=%Tnum14%&goto dep
if %try%==15 set c=%c7%&set Tnum=%Tnum15%&goto dep
if %try%==16 set c=%c7%&set Tnum=%Tnum16%&goto dep
if %try%==17 set c=%c7%&set Tnum=%Tnum17%&goto dep
if %try%==18 set c=%c7%&set Tnum=%Tnum18%&goto dep
if %try%==19 set c=%c7%&set Tnum=%Tnum19%&goto dep
if %try%==20 set c=%c7%&set Tnum=%Tnum20%&goto dep
if %try%==21 set c=%c7%&set Tnum=%Tnum21%&goto dep
if %try%==22 set c=%c7%&set Tnum=%Tnum22%&goto dep
if %try%==23 set c=%c7%&set Tnum=%Tnum23%&goto dep
if %try%==24 set c=%c7%&set Tnum=%Tnum24%&goto dep
if %try%==25 set c=%c7%&set Tnum=%Tnum25%&goto dep
if %try%==26 set c=%c7%&set Tnum=%Tnum26%&goto dep
if %try%==27 goto wait
:demo7
if %try%==8 set c=%c8%&set Tnum=%Tnum8%&goto dep
if %try%==9 set c=%c8%&set Tnum=%Tnum9%&goto dep
if %try%==10 set c=%c8%&set Tnum=%Tnum10%&goto dep
if %try%==11 set c=%c8%&set Tnum=%Tnum11%&goto dep
if %try%==12 set c=%c8%&set Tnum=%Tnum12%&goto dep
if %try%==13 set c=%c8%&set Tnum=%Tnum13%&goto dep
if %try%==14 set c=%c8%&set Tnum=%Tnum14%&goto dep
if %try%==15 set c=%c8%&set Tnum=%Tnum15%&goto dep
if %try%==16 set c=%c8%&set Tnum=%Tnum16%&goto dep
if %try%==17 set c=%c8%&set Tnum=%Tnum17%&goto dep
if %try%==18 set c=%c8%&set Tnum=%Tnum18%&goto dep
if %try%==19 set c=%c8%&set Tnum=%Tnum19%&goto dep
if %try%==20 set c=%c8%&set Tnum=%Tnum20%&goto dep
if %try%==21 set c=%c8%&set Tnum=%Tnum21%&goto dep
if %try%==22 set c=%c8%&set Tnum=%Tnum22%&goto dep
if %try%==23 set c=%c8%&set Tnum=%Tnum23%&goto dep
if %try%==24 set c=%c8%&set Tnum=%Tnum24%&goto dep
if %try%==25 set c=%c8%&set Tnum=%Tnum25%&goto dep
if %try%==26 set c=%c8%&set Tnum=%Tnum26%&goto dep
if %try%==27 goto wait
:demo8
if %try%==9 set c=%c9%&set Tnum=%Tnum9%&goto dep
if %try%==10 set c=%c9%&set Tnum=%Tnum10%&goto dep
if %try%==11 set c=%c9%&set Tnum=%Tnum11%&goto dep
if %try%==12 set c=%c9%&set Tnum=%Tnum12%&goto dep
if %try%==13 set c=%c9%&set Tnum=%Tnum13%&goto dep
if %try%==14 set c=%c9%&set Tnum=%Tnum14%&goto dep
if %try%==15 set c=%c9%&set Tnum=%Tnum15%&goto dep
if %try%==16 set c=%c9%&set Tnum=%Tnum16%&goto dep
if %try%==17 set c=%c9%&set Tnum=%Tnum17%&goto dep
if %try%==18 set c=%c9%&set Tnum=%Tnum18%&goto dep
if %try%==19 set c=%c9%&set Tnum=%Tnum19%&goto dep
if %try%==20 set c=%c9%&set Tnum=%Tnum20%&goto dep
if %try%==21 set c=%c9%&set Tnum=%Tnum21%&goto dep
if %try%==22 set c=%c9%&set Tnum=%Tnum22%&goto dep
if %try%==23 set c=%c9%&set Tnum=%Tnum23%&goto dep
if %try%==24 set c=%c9%&set Tnum=%Tnum24%&goto dep
if %try%==25 set c=%c9%&set Tnum=%Tnum25%&goto dep
if %try%==26 set c=%c9%&set Tnum=%Tnum26%&goto dep
if %try%==27 goto wait
:demo9
if %try%==10 set c=%c10%&set Tnum=%Tnum10%&goto dep
if %try%==11 set c=%c10%&set Tnum=%Tnum11%&goto dep
if %try%==12 set c=%c10%&set Tnum=%Tnum12%&goto dep
if %try%==13 set c=%c10%&set Tnum=%Tnum13%&goto dep
if %try%==14 set c=%c10%&set Tnum=%Tnum14%&goto dep
if %try%==15 set c=%c10%&set Tnum=%Tnum15%&goto dep
if %try%==16 set c=%c10%&set Tnum=%Tnum16%&goto dep
if %try%==17 set c=%c10%&set Tnum=%Tnum17%&goto dep
if %try%==18 set c=%c10%&set Tnum=%Tnum18%&goto dep
if %try%==19 set c=%c10%&set Tnum=%Tnum19%&goto dep
if %try%==20 set c=%c10%&set Tnum=%Tnum20%&goto dep
if %try%==21 set c=%c10%&set Tnum=%Tnum21%&goto dep
if %try%==22 set c=%c10%&set Tnum=%Tnum22%&goto dep
if %try%==23 set c=%c10%&set Tnum=%Tnum23%&goto dep
if %try%==24 set c=%c10%&set Tnum=%Tnum24%&goto dep
if %try%==25 set c=%c10%&set Tnum=%Tnum25%&goto dep
if %try%==26 set c=%c10%&set Tnum=%Tnum26%&goto dep
if %try%==27 goto wait
:demo10
if %try%==11 set c=%c11%&set Tnum=%Tnum11%&goto dep
if %try%==12 set c=%c11%&set Tnum=%Tnum12%&goto dep
if %try%==13 set c=%c11%&set Tnum=%Tnum13%&goto dep
if %try%==14 set c=%c11%&set Tnum=%Tnum14%&goto dep
if %try%==15 set c=%c11%&set Tnum=%Tnum15%&goto dep
if %try%==16 set c=%c11%&set Tnum=%Tnum16%&goto dep
if %try%==17 set c=%c11%&set Tnum=%Tnum17%&goto dep
if %try%==18 set c=%c11%&set Tnum=%Tnum18%&goto dep
if %try%==19 set c=%c11%&set Tnum=%Tnum19%&goto dep
if %try%==20 set c=%c11%&set Tnum=%Tnum20%&goto dep
if %try%==21 set c=%c11%&set Tnum=%Tnum21%&goto dep
if %try%==22 set c=%c11%&set Tnum=%Tnum22%&goto dep
if %try%==23 set c=%c11%&set Tnum=%Tnum23%&goto dep
if %try%==24 set c=%c11%&set Tnum=%Tnum24%&goto dep
if %try%==25 set c=%c11%&set Tnum=%Tnum25%&goto dep
if %try%==26 set c=%c11%&set Tnum=%Tnum26%&goto dep
if %try%==27 goto wait
:demo11
if %try%==12 set c=%c12%&set Tnum=%Tnum12%&goto dep
if %try%==13 set c=%c12%&set Tnum=%Tnum13%&goto dep
if %try%==14 set c=%c12%&set Tnum=%Tnum14%&goto dep
if %try%==15 set c=%c12%&set Tnum=%Tnum15%&goto dep
if %try%==16 set c=%c12%&set Tnum=%Tnum16%&goto dep
if %try%==17 set c=%c12%&set Tnum=%Tnum17%&goto dep
if %try%==18 set c=%c12%&set Tnum=%Tnum18%&goto dep
if %try%==19 set c=%c12%&set Tnum=%Tnum19%&goto dep
if %try%==20 set c=%c12%&set Tnum=%Tnum20%&goto dep
if %try%==21 set c=%c12%&set Tnum=%Tnum21%&goto dep
if %try%==22 set c=%c12%&set Tnum=%Tnum22%&goto dep
if %try%==23 set c=%c12%&set Tnum=%Tnum23%&goto dep
if %try%==24 set c=%c12%&set Tnum=%Tnum24%&goto dep
if %try%==25 set c=%c12%&set Tnum=%Tnum25%&goto dep
if %try%==26 set c=%c12%&set Tnum=%Tnum26%&goto dep
if %try%==27 goto wait

:demo12
if %try%==13 set c=%c13%& set Tnum=%Tnum13%&goto dep
if %try%==14 set c=%c13%& set Tnum=%Tnum14%&goto dep
if %try%==15 set c=%c13%& set Tnum=%Tnum15%&goto dep
if %try%==16 set c=%c13%& set Tnum=%Tnum16%&goto dep
if %try%==17 set c=%c13%& set Tnum=%Tnum17%&goto dep
if %try%==18 set c=%c13%& set Tnum=%Tnum18%&goto dep
if %try%==19 set c=%c13%& set Tnum=%Tnum19%&goto dep
if %try%==20 set c=%c13%& set Tnum=%Tnum20%&goto dep
if %try%==21 set c=%c13%& set Tnum=%Tnum21%&goto dep
if %try%==22 set c=%c13%& set Tnum=%Tnum22%&goto dep
if %try%==23 set c=%c13%& set Tnum=%Tnum23%&goto dep
if %try%==24 set c=%c13%& set Tnum=%Tnum24%&goto dep
if %try%==25 set c=%c13%& set Tnum=%Tnum25%&goto dep
if %try%==26 set c=%c13%& set Tnum=%Tnum26%&goto dep
if %try%==27 goto wait
:dep
if not %Tnum%==0 goto try
set Tnum%try%=%c%
set Tnum%c%=%try%
goto prdemo
:prdemo
set/a try=%trr%+1
set/a tr=%tr%+1
set/a trr=%trr%+1
if %tr%==13 goto wait
goto demo%tr%
:try
set/a try=%try%+1
goto demo%tr%
:okkkk
set kok=5
set/a bod=%bod%+1
title Enigma Machine [%sw%]--[%sma%]--[%med%]--[%lrg%]
if %art%==%result% goto ovver
set endprd=%endprd%%let%
set/a art=%art%+1
if %art%==1 CALL SET endprd=%%endprd:~1,%result%%%
set/a boba=(%bod%*100)/%result%
:lopopg
if %boba% LEQ %kok% set trump%noo%=//& goto kfl
set trump%noo%=//
set/a kok=%kok%+5
set/a noo=%kok%/5
goto lopopg
:kfl
cls
echo.
echo                                _______________
echo                                I   LOADING   I
echo                                ---------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                   __________________________________________
echo                   i%trump1%%trump2%%trump3%%trump4%%trump5%%trump6%%trump7%%trump8%%trump9%%trump10%%trump11%%trump12%%trump13%%trump14%%trump15%%trump16%%trump17%%trump18%%trump19%%trump20%i
echo                   ------------------------------------------
echo                                %boba%/100 Completed
goto okk
:ovver
cls
echo %endprd% >> secret.txt
echo                       ----Done!----
echo.
echo -Saved In Secret.txt
echo      ----------------
echo        In %var1%
echo      ----------------
echo.
echo      -------
echo      %lettt%
echo      -------
echo.
echo      Turns Into
echo.
echo      -------
echo      %endprd%
echo      -------
echo.
pause
cls
if %hel%==TRUE  echo --Secret.txt Is Going To Be Deleted Please
if %hel%==TRUE  echo Extract All The Info You Require Before Proceeding
if %hel%==TRUE  pause
goto menu
:Help
cls
echo         -----Welcome To Enigma-----
echo         MADE BY FILIPPOS BAGORDAKIS
echo.
echo.
pause
cls
echo         Enigma Was A Machine Germans 
echo    Used During WW2 To Conceal Their Messenges
echo.
pause
cls
echo       Using The Program Is Really Easy
echo      Just Set The Numbers On The Machine
echo      (Each One Has A Different Outcome!)
echo       And Afterwards Type Your Messenge
echo       To Translate Put The Same Numbers
echo  And Type The Hidden Messenge Into The Machine
echo.
pause
cls
echo  Keep In Mind By No Means This Will Give You The
echo          Results Of An Actual Machine
pause
goto menu
:reset
DEL opt.dat
del Secret.txt
exit
:missinglink
TITLE ! ERROR ! ! ERROR ! ! ERROR ! ! ERROR ! ! ERROR ! ! ERROR ! ! ERROR ! ! ERROR ! ! ERROR ! ! ERROR ! ! ERROR ! ! ERROR !
COLOR 4F
ECHO.
echo       ERROR !    --- Data.txt IS MISSING OR IT IS CORRUPTED ---
echo                     --- ELSE MAKE SURE TO UNZIP THE FILES ---
ECHO.
PAUSE >NUL
EXIT