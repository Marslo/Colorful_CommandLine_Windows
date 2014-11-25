@echo off

doskey d=dir $*
doskey l=ls -l
doskey ll=dir /OD
doskey la=dir /A
doskey c=cls
doskey ..=cd ..
doskey ...=cd ../..
doskey ....=cd ../../..
doskey :q=exit
doskey :x=exit
doskey :qa=exit
doskey exp=explorer .
doskey openit=explorer.exe $1
doskey vim="C:\MyProgrames\Vim\vim74\gvim.exe" $1
doskey gvim="C:\MyProgrames\Vim\vim74\gvim.exe" $1
doskey ipy=ipython qtconsole --pylab=inline --ConsoleWidget.font_size=12 --IPythonWidget.font_family=Monaco --profile=marslo --colors=linux --style=marslo
doskey pf=pry -f
doskey netdis=netsh interface set interface name="Wireless Network Connection" admin=disable
doskey neten=netsh interface set interface name="Wireless Network Connection" admin=enable
doskey pwd=cd
doskey desk=cd %HOMEPATH%\Desktop
doskey prog=cd %PROGRAMFILES%
doskey up=cd %USERPROFILE%
doskey gh=cd %HOMEPATH%
doskey cal=gvim %WINDIR%\alias.cmd
doskey alias=cat %WINDIR%\alias.cmd
doskey jt=java.exe junit.textui.TestRunner $1
doskey jc=java.exe org.junit.runner.JUnitCore $1
doskey jaw=java -cp .;c:\MyProgrames\junit3.8.1\junit.jar junit.awtui.TestRunner $1
doskey jsw=java -cp .;c:\MyProgrames\junit3.8.1\junit.jar junit.swingui.TestRunner $1
doskey gr=cd "c:\"
doskey mpr=cd "C:\Marslo\MyProgramFiles"
doskey lno=cd "C:\Marslo\Job\Codes\LotusNotesOpt"
doskey idlelib=cd "C:\MyProgrames\Python27\Lib\idlelib"
doskey sublime="C:\Program Files\Sublime Text 3\sublime_text.exe" $*
doskey gi=cd "C:\Marslo\Tools\Git"
doskey mj=cd "C:\Marslo\Study\My\My_Scripts\Java"
doskey rs=cd "C:\Marslo\Study\Codes\Rails"
doskey sdt=cd "C:\Marslo\Study\Codes\Rails\sdt"
doskey mtty="C:\MyProgrames\cygwin64\bin\mintty.exe"
doskey jo=cd "C:\Marslo\Job"
doskey addalias=reg add "HKCU\SOFTWARE\Microsoft\Command Processor" /v AutoRun /t REG_SZ /d "%WINDIR%\alias.cmd"
