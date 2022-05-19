@echo off
color 0f
set NUM=110
set Goal=60000
set count=0
set pr=0
set gr=1
set "q="
if exist count.txt <count.txt set/p NUM=
if exist count.txt <count.txt set/p gr=
:MAIN
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
set req1=no
set req2=no
set req3=no
set req4=no
set req5=no
set req6=no
set req7=no
set req8=no
set req9=no
set req10=no
set req11=no
set req12=no
set req13=no
set req14=no
set req15=no
set req16=no
set req17=no
set req18=no
set req19=no
set req20=no
set req21=no
set req22=no
set req23=no
set req24=no
set req25=no
DEL 1.txt
DEL 2.txt
DEL 3.txt
DEL 4.txt
DEL 5.txt
DEL 6.txt
DEL 7.txt
DEL 8.txt
DEL 9.txt
DEL 10.txt
DEL 11.txt
DEL 12.txt
DEL 13.txt
DEL 14.txt
DEL 15.txt
DEL 16.txt
DEL 17.txt
DEL 18.txt
DEL 19.txt
DEL 20.txt
DEL 21.txt
DEL 22.txt
DEL 23.txt
DEL 24.txt
DEL 25.txt
DEL 26.txt
cls
IF %NUM%==%Goal% EXIT
:num
set /A Tnum1=%RANDOM% * 26 / 32768 + 1
if %Tnum1%==1 goto num
goto Tnumb
:num1

if %req1%==yes goto num2
set /A Tnum2=%RANDOM% * 26 / 32768 + 1
if %Tnum2%==2 goto num1
if exist %Tnum2%.txt  goto num1
goto Tnumb1
:num2

if %req2%==yes goto num3
set /A Tnum3=%RANDOM% * 26 / 32768 + 1
if %Tnum3%==3 goto num2
if exist %Tnum3%.txt goto num2
goto Tnumb2
:num3

if %req3%==yes goto num4
set /A Tnum4=%RANDOM% * 26 / 32768 + 1
if %Tnum4%==4 goto num3
if exist %Tnum4%.txt goto num3
goto Tnumb3
:num4

if %req4%==yes goto num5
set /A Tnum5=%RANDOM% * 26 / 32768 + 1
if %Tnum5%==5 goto num4
if exist %Tnum5%.txt  goto num4
goto Tnumb4
:num5

if %req5%==yes goto num6
set /A Tnum6=%RANDOM% * 26 / 32768 + 1
if %Tnum6%==6 goto num5
if exist %Tnum6%.txt  goto num5
goto Tnumb5
:num6

if %req6%==yes goto num7
set /A Tnum7=%RANDOM% * 26 / 32768 + 1
if %Tnum7%==7 goto num6
if exist %Tnum7%.txt goto num6
goto Tnumb6
:num7

if %req7%==yes goto num8
set /A Tnum8=%RANDOM% * 26 / 32768 + 1
if %Tnum8%==8 goto num7
if exist %Tnum8%.txt goto num7
goto Tnumb7
:num8

if %req8%==yes goto num9
set /A Tnum9=%RANDOM% * 26 / 32768 + 1
if %Tnum9%==9 goto num8
if exist %Tnum9%.txt goto num8
goto Tnumb8
:num9

if %req9%==yes goto num10
set /A Tnum10=%RANDOM% * 26 / 32768 + 1
if %Tnum10%==10 goto num9
if exist %Tnum10%.txt goto num9
goto Tnumb9
:num10

if %req10%==yes goto num11
set /A Tnum11=%RANDOM% * 26 / 32768 + 1
if %Tnum11%==11 goto num10
if exist %Tnum11%.txt  goto num10
goto Tnumb10
:num11

if %req11%==yes goto num12
set /A Tnum12=%RANDOM% * 26 / 32768 + 1
if %Tnum12%==12 goto num11
if  exist %Tnum12%.txt  goto num11
goto Tnumb11
:num12

if %req12%==yes goto num13
set /A Tnum13=%RANDOM% * 26 / 32768 + 1
if %Tnum13%==13 goto num12
if exist %Tnum13%.txt  goto num12
goto Tnumb12
:num13

if %req13%==yes goto num14
set /A Tnum14=%RANDOM% * 26 / 32768 + 1
if %Tnum14%==14 goto num13
if exist %Tnum14%.txt  goto num13
goto Tnumb13
:num14

if %req14%==yes goto num15
set /A Tnum15=%RANDOM% * 26 / 32768 + 1
if %Tnum15%==15 goto num14
if exist %Tnum15%.txt  goto num14
goto Tnumb14
:num15

if %req15%==yes goto num16
set /A Tnum16=%RANDOM% * 26 / 32768 + 1
if %Tnum16%==16 goto num15
if exist %Tnum16%.txt  goto num15
goto Tnumb15
:num16

if %req16%==yes goto num17
set /A Tnum17=%RANDOM% * 26 / 32768 + 1
if %Tnum17%==17 goto num16
if exist %Tnum17%.txt  goto num16
goto Tnumb16
:num17

if %req17%==yes goto num18
set /A Tnum18=%RANDOM% * 26 / 32768 + 1
if %Tnum18%==18 goto num17
if exist %Tnum18%.txt  goto num17
goto Tnumb17
:num18

if %req18%==yes goto num19
set /A Tnum19=%RANDOM% * 26 / 32768 + 1
if %Tnum19%==19 goto num18
if exist %Tnum19%.txt  goto num18
goto Tnumb18
:num19

if %req19%==yes goto num20
set /A Tnum20=%RANDOM% * 26 / 32768 + 1
if %Tnum20%==20 goto num19
if exist %Tnum20%.txt  goto num19
goto Tnumb19
:num20

if %req20%==yes goto num21
set /A Tnum21=%RANDOM% * 26 / 32768 + 1
if %Tnum21%==21 goto num20
if exist %Tnum21%.txt  goto num20
goto Tnumb20
:num21

if %req21%==yes goto num22
set /A Tnum22=%RANDOM% * 26 / 32768 + 1
if %Tnum22%==22 goto num21
if exist %Tnum22%.txt  goto num21
goto Tnumb21
:num22

if %req22%==yes goto num23
set /A Tnum23=%RANDOM% * 26 / 32768 + 1
if %Tnum23%==23 goto num22
if exist %Tnum23%.txt  goto num22
goto Tnumb22
:num23

if %req23%==yes goto num24
set /A Tnum24=%RANDOM% * 26 / 32768 + 1
if %Tnum24%==24 goto num23
if exist %Tnum24%.txt  goto num23
goto Tnumb23
:num24

if %req24%==yes goto num25
set /A Tnum25=%RANDOM% * 26 / 32768 + 1
if %Tnum25%==25 goto num24
if exist %Tnum25%.txt  goto num24
goto Tnumb24
:num25

if %req25%==yes goto alopfinal
set /A Tnum26=%RANDOM% * 26 / 32768 + 1
if %Tnum26%==26 goto num25
if exist %Tnum26%.txt  goto num25
:alopfinal
set lin=1
:alfinal
set let=%Tnum1%
if %lin%==1 goto prefinal
set let=%Tnum2%
if %lin%==2 goto prefinal
set let=%Tnum3%
if %lin%==3 goto prefinal
set let=%Tnum4%
if %lin%==4 goto prefinal
set let=%Tnum5%
if %lin%==5 goto prefinal
set let=%Tnum6%
if %lin%==6 goto prefinal
set let=%Tnum7%
if %lin%==7 goto prefinal
set let=%Tnum8%
if %lin%==8 goto prefinal
set let=%Tnum9%
if %lin%==9 goto prefinal
set let=%Tnum10%
if %lin%==10 goto prefinal
set let=%Tnum11%
if %lin%==11 goto prefinal
set let=%Tnum12%
if %lin%==12 goto prefinal
set let=%Tnum13%
if %lin%==13 goto prefinal
set let=%Tnum14%
if %lin%==14 goto prefinal
set let=%Tnum15%
if %lin%==15 goto prefinal
set let=%Tnum16%
if %lin%==16 goto prefinal
set let=%Tnum17%
if %lin%==17 goto prefinal
set let=%Tnum18%
if %lin%==18 goto prefinal
set let=%Tnum19%
if %lin%==19 goto prefinal
set let=%Tnum20%
if %lin%==20 goto prefinal
set let=%Tnum21%
if %lin%==21 goto prefinal
set let=%Tnum22%
if %lin%==22 goto prefinal
set let=%Tnum23%
if %lin%==23 goto prefinal
set let=%Tnum24%
if %lin%==24 goto prefinal
set let=%Tnum25%
if %lin%==25 goto prefinal
set let=%Tnum26%
if %lin%==26 goto prefinal
:prefinal
if %let%==10 set Tnum%lin%=a
if %let%==11 set Tnum%lin%=b
if %let%==12 set Tnum%lin%=c
if %let%==13 set Tnum%lin%=d
if %let%==14 set Tnum%lin%=e
if %let%==15 set Tnum%lin%=f
if %let%==16 set Tnum%lin%=g
if %let%==17 set Tnum%lin%=h
if %let%==18 set Tnum%lin%=i
if %let%==19 set Tnum%lin%=j
if %let%==20 set Tnum%lin%=k
if %let%==21 set Tnum%lin%=l
if %let%==22 set Tnum%lin%=m
if %let%==23 set Tnum%lin%=n
if %let%==24 set Tnum%lin%=o
if %let%==25 set Tnum%lin%=p
if %let%==26 set Tnum%lin%=q
set /a lin=%lin%+1
if %lin%==27 goto finall
goto alfinal
:finall
set string=%Tnum1%
if %Tnum2%==1 goto fin1
set string=%string%%Tnum2%
:fin1
if %Tnum3%==1 goto fin2
if %Tnum3%==2 goto fin2
set string=%string%%Tnum3%
:fin2
if %Tnum4%==1 goto fin3
if %Tnum4%==2 goto fin3
if %Tnum4%==3 goto fin3
set string=%string%%Tnum4%
:fin3
if %Tnum5%==1 goto fin4
if %Tnum5%==2 goto fin4
if %Tnum5%==3 goto fin4
if %Tnum5%==4 goto fin4
set string=%string%%Tnum5%
:fin4
if %Tnum6%==1 goto fin5
if %Tnum6%==2 goto fin5
if %Tnum6%==3 goto fin5
if %Tnum6%==4 goto fin5
if %Tnum6%==5 goto fin5
set string=%string%%Tnum6%
:fin5
if %Tnum7%==1 goto fin6
if %Tnum7%==2 goto fin6
if %Tnum7%==3 goto fin6
if %Tnum7%==4 goto fin6
if %Tnum7%==5 goto fin6
if %Tnum7%==6 goto fin6
set string=%string%%Tnum7%
:fin6
if %Tnum8%==1 goto fin7
if %Tnum8%==2 goto fin7
if %Tnum8%==3 goto fin7
if %Tnum8%==4 goto fin7
if %Tnum8%==5 goto fin7
if %Tnum8%==6 goto fin7
if %Tnum8%==7 goto fin7
set string=%string%%Tnum8%
:fin7
set rofl=%Tnum9%
if %Tnum9%==1 goto fin8
if %rofl%==2 goto fin8
if %rofl%==3 goto fin8
if %rofl%==4 goto fin8
if %rofl%==5 goto fin8
if %rofl%==6 goto fin8
if %rofl%==7 goto fin8
if %rofl%==8 goto fin8
set string=%string%%Tnum9%
:fin8
set rofl=%Tnum10%
if %Tnum10%==1 goto fin9
if %rofl%==2 goto fin9
if %rofl%==3 goto fin9
if %rofl%==4 goto fin9
if %rofl%==5 goto fin9
if %rofl%==6 goto fin9
if %rofl%==7 goto fin9
if %rofl%==8 goto fin9
if %rofl%==9 goto fin9
set string=%string%%Tnum10%
:fin9
set rofl=%Tnum11%
if %Tnum11%==1 goto fin10
if %rofl%==2 goto fin10
if %rofl%==3 goto fin10
if %rofl%==4 goto fin10
if %rofl%==5 goto fin10
if %rofl%==6 goto fin10
if %rofl%==7 goto fin10
if %rofl%==8 goto fin10
if %rofl%==9 goto fin10
if %rofl%==a goto fin10
set string=%string%%Tnum11%
:fin10
set rofl=%Tnum12%
if %Tnum12%==1 goto fin11
if %rofl%==2 goto fin11
if %rofl%==3 goto fin11
if %rofl%==4 goto fin11
if %rofl%==5 goto fin11
if %rofl%==6 goto fin11
if %rofl%==7 goto fin11
if %rofl%==8 goto fin11
if %rofl%==9 goto fin11
if %rofl%==a goto fin11
if %rofl%==b goto fin11
set string=%string%%Tnum12%
:fin11
set rofl=%Tnum13%
if %Tnum13%==1 goto fin12
if %rofl%==2 goto fin12
if %rofl%==3 goto fin12
if %rofl%==4 goto fin12
if %rofl%==5 goto fin12
if %rofl%==6 goto fin12
if %rofl%==7 goto fin12
if %rofl%==8 goto fin12
if %rofl%==9 goto fin12
if %rofl%==a goto fin12
if %rofl%==b goto fin12
if %rofl%==c goto fin12
set string=%string%%Tnum13%
:fin12
set rofl=%Tnum14%
if %Tnum14%==1 goto fin13
if %rofl%==2 goto fin13
if %rofl%==3 goto fin13
if %rofl%==4 goto fin13
if %rofl%==5 goto fin13
if %rofl%==6 goto fin13
if %rofl%==7 goto fin13
if %rofl%==8 goto fin13
if %rofl%==9 goto fin13
if %rofl%==a goto fin13
if %rofl%==b goto fin13
if %rofl%==c goto fin13
if %rofl%==d goto fin13
set string=%string%%Tnum14%
:fin13
set rofl=%Tnum15%
if %Tnum15%==1 goto fin14
if %rofl%==2 goto fin14
if %rofl%==3 goto fin14
if %rofl%==4 goto fin14
if %rofl%==5 goto fin14
if %rofl%==6 goto fin14
if %rofl%==7 goto fin14
if %rofl%==8 goto fin14
if %rofl%==9 goto fin14
if %rofl%==a goto fin14
if %rofl%==b goto fin14
if %rofl%==c goto fin14
if %rofl%==d goto fin14
if %rofl%==e goto fin14
set string=%string%%Tnum15%
:fin14
set rofl=%Tnum16%
if %Tnum16%==1 goto fin15
if %rofl%==2 goto fin15
if %rofl%==3 goto fin15
if %rofl%==4 goto fin15
if %rofl%==5 goto fin15
if %rofl%==6 goto fin15
if %rofl%==7 goto fin15
if %rofl%==8 goto fin15
if %rofl%==9 goto fin15
if %rofl%==a goto fin15
if %rofl%==b goto fin15
if %rofl%==c goto fin15
if %rofl%==d goto fin15
if %rofl%==e goto fin15
if %rofl%==f goto fin15
set string=%string%%Tnum16%
:fin15
set rofl=%Tnum17%
if %Tnum17%==1 goto fin16
if %rofl%==2 goto fin16
if %rofl%==3 goto fin16
if %rofl%==4 goto fin16
if %rofl%==5 goto fin16
if %rofl%==6 goto fin16
if %rofl%==7 goto fin16
if %rofl%==8 goto fin16
if %rofl%==9 goto fin16
if %rofl%==a goto fin16
if %rofl%==b goto fin16
if %rofl%==c goto fin16
if %rofl%==d goto fin16
if %rofl%==e goto fin16
if %rofl%==f goto fin16
if %rofl%==g goto fin16
set string=%string%%Tnum17%
:fin16
set rofl=%Tnum18%
if %Tnum18%==1 goto fin17
if %rofl%==2 goto fin17
if %rofl%==3 goto fin17
if %rofl%==4 goto fin17
if %rofl%==5 goto fin17
if %rofl%==6 goto fin17
if %rofl%==7 goto fin17
if %rofl%==8 goto fin17
if %rofl%==9 goto fin17
if %rofl%==a goto fin17
if %rofl%==b goto fin17
if %rofl%==c goto fin17
if %rofl%==d goto fin17
if %rofl%==e goto fin17
if %rofl%==f goto fin17
if %rofl%==g goto fin17
if %rofl%==h goto fin17
set string=%string%%Tnum18%
:fin17
set rofl=%Tnum19%
if %Tnum19%==1 goto fin18
if %rofl%==2 goto fin18
if %rofl%==3 goto fin18
if %rofl%==4 goto fin18
if %rofl%==5 goto fin18
if %rofl%==6 goto fin18
if %rofl%==7 goto fin18
if %rofl%==8 goto fin18
if %rofl%==9 goto fin18
if %rofl%==a goto fin18
if %rofl%==b goto fin18
if %rofl%==c goto fin18
if %rofl%==d goto fin18
if %rofl%==e goto fin18
if %rofl%==f goto fin18
if %rofl%==g goto fin18
if %rofl%==h goto fin18
if %rofl%==i goto fin18
set string=%string%%Tnum19%
:fin18
set rofl=%Tnum20%
if %Tnum20%==1 goto fin19
if %rofl%==2 goto fin19
if %rofl%==3 goto fin19
if %rofl%==4 goto fin19
if %rofl%==5 goto fin19
if %rofl%==6 goto fin19
if %rofl%==7 goto fin19
if %rofl%==8 goto fin19
if %rofl%==9 goto fin19
if %rofl%==a goto fin19
if %rofl%==b goto fin19
if %rofl%==c goto fin19
if %rofl%==d goto fin19
if %rofl%==e goto fin19
if %rofl%==f goto fin19
if %rofl%==g goto fin19
if %rofl%==h goto fin19
if %rofl%==i goto fin19
if %rofl%==j goto fin19
set string=%string%%Tnum20%
:fin19
set rofl=%Tnum21%
if %Tnum21%==1 goto fin20
if %rofl%==2 goto fin20
if %rofl%==3 goto fin20
if %rofl%==4 goto fin20
if %rofl%==5 goto fin20
if %rofl%==6 goto fin20
if %rofl%==7 goto fin20
if %rofl%==8 goto fin20
if %rofl%==9 goto fin20
if %rofl%==a goto fin20
if %rofl%==b goto fin20
if %rofl%==c goto fin20
if %rofl%==d goto fin20
if %rofl%==e goto fin20
if %rofl%==f goto fin20
if %rofl%==g goto fin20
if %rofl%==h goto fin20
if %rofl%==i goto fin20
if %rofl%==j goto fin20
if %rofl%==k goto fin20
set string=%string%%Tnum21%
:fin20
set rofl=%Tnum22%
if %Tnum22%==1 goto fin21
if %rofl%==2 goto fin21
if %rofl%==3 goto fin21
if %rofl%==4 goto fin21
if %rofl%==5 goto fin21
if %rofl%==6 goto fin21
if %rofl%==7 goto fin21
if %rofl%==8 goto fin21
if %rofl%==9 goto fin21
if %rofl%==a goto fin21
if %rofl%==b goto fin21
if %rofl%==c goto fin21
if %rofl%==d goto fin21
if %rofl%==e goto fin21
if %rofl%==f goto fin21
if %rofl%==g goto fin21
if %rofl%==h goto fin21
if %rofl%==i goto fin21
if %rofl%==j goto fin21
if %rofl%==k goto fin21
if %rofl%==l goto fin21
set string=%string%%Tnum22%
:fin21
set rofl=%Tnum23%
if %Tnum23%==1 goto fin22
if %rofl%==2 goto fin22
if %rofl%==3 goto fin22
if %rofl%==4 goto fin22
if %rofl%==5 goto fin22
if %rofl%==6 goto fin22
if %rofl%==7 goto fin22
if %rofl%==8 goto fin22
if %rofl%==9 goto fin22
if %rofl%==a goto fin22
if %rofl%==b goto fin22
if %rofl%==c goto fin22
if %rofl%==d goto fin22
if %rofl%==e goto fin22
if %rofl%==f goto fin22
if %rofl%==g goto fin22
if %rofl%==h goto fin22
if %rofl%==i goto fin22
if %rofl%==j goto fin22
if %rofl%==k goto fin22
if %rofl%==l goto fin22
if %rofl%==m goto fin22
set string=%string%%Tnum23%
:fin22
set rofl=%Tnum24%
if %Tnum24%==1 goto fin23
if %rofl%==2 goto fin23
if %rofl%==3 goto fin23
if %rofl%==4 goto fin23
if %rofl%==5 goto fin23
if %rofl%==6 goto fin23
if %rofl%==7 goto fin23
if %rofl%==8 goto fin23
if %rofl%==9 goto fin23
if %rofl%==a goto fin23
if %rofl%==b goto fin23
if %rofl%==c goto fin23
if %rofl%==d goto fin23
if %rofl%==e goto fin23
if %rofl%==f goto fin23
if %rofl%==g goto fin23
if %rofl%==h goto fin23
if %rofl%==i goto fin23
if %rofl%==j goto fin23
if %rofl%==k goto fin23
if %rofl%==l goto fin23
if %rofl%==m goto fin23
if %rofl%==n goto fin23
set string=%string%%Tnum24%
:fin23
set rofl=%Tnum25%
if %Tnum25%==1 goto fin24
if %rofl%==2 goto fin24
if %rofl%==3 goto fin24
if %rofl%==4 goto fin24
if %rofl%==5 goto fin24
if %rofl%==6 goto fin24
if %rofl%==7 goto fin24
if %rofl%==8 goto fin24
if %rofl%==9 goto fin24
if %rofl%==a goto fin24
if %rofl%==b goto fin24
if %rofl%==c goto fin24
if %rofl%==d goto fin24
if %rofl%==e goto fin24
if %rofl%==f goto fin24
if %rofl%==g goto fin24
if %rofl%==h goto fin24
if %rofl%==i goto fin24
if %rofl%==j goto fin24
if %rofl%==k goto fin24
if %rofl%==l goto fin24
if %rofl%==m goto fin24
if %rofl%==n goto fin24
if %rofl%==o goto fin24
set string=%string%%Tnum25%
:fin24
if %Tnum26%==1 goto final
if %Tnum26%==2 goto final
if %Tnum26%==3 goto final
if %Tnum26%==4 goto final
if %Tnum26%==5 goto final
if %Tnum26%==6 goto final
if %Tnum26%==7 goto final
if %Tnum26%==8 goto final
if %Tnum26%==9 goto final
if %Tnum26%==a goto final
if %Tnum26%==b goto final
if %Tnum26%==c goto final
if %Tnum26%==d goto final
if %Tnum26%==e goto final
if %Tnum26%==f goto final
if %Tnum26%==g goto final
if %Tnum26%==h goto final
if %Tnum26%==i goto final
if %Tnum26%==j goto final
if %Tnum26%==k goto final
if %Tnum26%==l goto final
if %Tnum26%==m goto final
if %Tnum26%==n goto final
if %Tnum26%==o goto final
if %Tnum26%==p goto final
set string=%string%%Tnum26%
:final
SET q=%q%%string%
set/a pr=%pr%+1
if not %pr% GEQ 19 goto MAINE
(echo %q%
)>>directory%gr%.txt
set pr=0
set "q="
:MAINE
set/a NUM=%NUM%+1
echo %NUM%>count.txt
echo %gr%>>count.txt
goto MAIN
:Tnumb
set/a Tnumbr1=%Tnum1%-1
set req%Tnumbr1%=yes
set Tnum%Tnum1%=1
echo a>%Tnum1%.txt
echo a>1.txt
goto num1
:Tnumb1
set/a Tnumbr2=%Tnum2%-1
set req%Tnumbr2%=yes
set Tnum%Tnum2%=2
echo a>%Tnum2%.txt
echo a>2.txt
goto num2
:Tnumb2
set/a Tnumbr3=%Tnum3%-1
set req%Tnumbr3%=yes
set Tnum%Tnum3%=3
echo a>%Tnum3%.txt
echo a>3.txt
goto num3
:Tnumb3
set/a Tnumbr4=%Tnum4%-1
set req%Tnumbr4%=yes
set Tnum%Tnum4%=4
echo a>%Tnum4%.txt
echo a>4.txt
goto num4
:Tnumb4
set/a Tnumbr5=%Tnum5%-1
set req%Tnumbr5%=yes
set Tnum%Tnum5%=5
echo a>%Tnum5%.txt
echo a>5.txt
goto num5
:Tnumb5
set/a Tnumbr6=%Tnum6%-1
set req%Tnumbr6%=yes
set Tnum%Tnum6%=6
echo a>%Tnum6%.txt
echo a>6.txt
goto num6
:Tnumb6
set/a Tnumbr7=%Tnum7%-1
set req%Tnumbr7%=yes
set Tnum%Tnum7%=7
echo a>%Tnum7%.txt
echo a>7.txt
goto num7
:Tnumb7
set/a Tnumbr8=%Tnum8%-1
set req%Tnumbr8%=yes
set Tnum%Tnum8%=8
echo a>%Tnum8%.txt
echo a>8.txt
goto num8
:Tnumb8
set/a Tnumbr9=%Tnum9%-1
set req%Tnumbr9%=yes
set Tnum%Tnum9%=9
echo a>%Tnum9%.txt
echo a>9.txt
goto num9
:Tnumb9
set/a Tnumbr10=%Tnum10%-1
set req%Tnumbr10%=yes
set Tnum%Tnum10%=10
echo a>%Tnum10%.txt
echo a>10.txt
goto num10
:Tnumb10
set/a Tnumbr11=%Tnum11%-1
set req%Tnumbr11%=yes
set Tnum%Tnum11%=11
echo a>%Tnum11%.txt
echo a>11.txt
goto num11
:Tnumb11
set/a Tnumbr12=%Tnum12%-1
set req%Tnumbr12%=yes
set Tnum%Tnum12%=12
echo a>%Tnum12%.txt
echo a>12.txt
goto num12
:Tnumb12
set/a Tnumbr13=%Tnum13%-1
set req%Tnumbr13%=yes
set Tnum%Tnum13%=13
echo a>%Tnum13%.txt
echo a>13.txt
goto num13
:Tnumb13
set/a Tnumbr14=%Tnum14%-1
set req%Tnumbr14%=yes
set Tnum%Tnum14%=14
echo a>%Tnum14%.txt
echo a>14.txt
goto num14
:Tnumb14
set/a Tnumbr15=%Tnum15%-1
set req%Tnumbr15%=yes
set Tnum%Tnum15%=15
echo a>%Tnum15%.txt
echo a>15.txt
goto num15
:Tnumb15
set/a Tnumbr16=%Tnum16%-1
set req%Tnumbr16%=yes
set Tnum%Tnum16%=16
echo a>%Tnum16%.txt
echo a>16.txt
goto num16
:Tnumb16
set/a Tnumbr17=%Tnum17%-1
set req%Tnumbr17%=yes
set Tnum%Tnum17%=17
echo a>%Tnum17%.txt
echo a>17.txt
goto num17
:Tnumb17
set/a Tnumbr18=%Tnum18%-1
set req%Tnumbr18%=yes
set Tnum%Tnum18%=18
echo a>%Tnum18%.txt
echo a>18.txt
goto num18
:Tnumb18
set/a Tnumbr19=%Tnum19%-1
set req%Tnumbr19%=yes
set Tnum%Tnum19%=19
echo a>%Tnum19%.txt
echo a>19.txt
goto num19
:Tnumb19
set/a Tnumbr20=%Tnum20%-1
set req%Tnumbr20%=yes
set Tnum%Tnum20%=20
echo a>%Tnum20%.txt
echo a>20.txt
goto num20
:Tnumb20
set/a Tnumbr21=%Tnum21%-1
set req%Tnumbr21%=yes
set Tnum%Tnum21%=21
echo a>%Tnum21%.txt
echo a>21.txt
goto num21
:Tnumb21
set/a Tnumbr22=%Tnum22%-1
set req%Tnumbr22%=yes
set Tnum%Tnum22%=22
echo a>%Tnum22%.txt
echo a>22.txt
goto num22
:Tnumb22
set/a Tnumbr23=%Tnum23%-1
set req%Tnumbr23%=yes
set Tnum%Tnum23%=23
echo a>%Tnum23%.txt
echo a>23.txt
goto num23
:Tnumb23
set/a Tnumbr24=%Tnum24%-1
set req%Tnumbr24%=yes
set Tnum%Tnum24%=24
echo a>%Tnum24%.txt
echo a>24.txt
goto num24
:Tnumb24
set/a Tnumbr25=%Tnum25%-1
set req%Tnumbr25%=yes
set Tnum%Tnum25%=25
echo a>%Tnum25%.txt
echo a>25.txt
goto num25