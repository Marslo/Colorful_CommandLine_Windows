@echo off

doskey d=dir $*
doskey l=ls -l
doskey ll=dir /OD
doskey la=dir /A
doskey c=cls
doskey pwd=cd
doskey ..=cd ..
doskey ...=cd ../..
doskey ....=cd ../../..
doskey :q=exit
doskey :x=exit
doskey :qa=exit
doskey exp=explorer .
doskey openit=explorer.exe $1
doskey ipy=ipython qtconsole --pylab=inline --ConsoleWidget.font_size=12 --IPythonWidget.font_family=Monaco --profile=marslo --colors=linux --style=marslo
doskey pf=pry -f
doskey wlandis=netsh interface set interface name="Wireless Network Connection" admin=disable
doskey wlanen=netsh interface set interface name="Wireless Network Connection" admin=enable
doskey pwd=cd
doskey desk=cd %HOMEPATH%\Desktop
doskey prog=cd %PROGRAMFILES%
doskey up=cd %USERPROFILE%
doskey gh=cd %HOMEPATH%
doskey gr=cd "c:\"
doskey mpr=cd "C:\Marslo\MarsloProgramFiles"
doskey idlelib=cd "C:\Marslo\MarsloProgramFiles\Python27\Lib\idlelib"
doskey jo=cd "C:\Marslo\Job"
doskey gi=cd "C:\Marslo\Tools\Git"
doskey pef=cd "C:\Marslo\Job\SCM\Codes\Perfoce\appliance"
doskey rel=cd "c:\Marslo\Job\SCM\Codes\Perfoce\appliance\releng\main"
doskey cal=gvim %WINDIR%\alias.cmd
doskey alias=type %WINDIR%\alias.cmd
doskey jt=java.exe junit.textui.TestRunner $1
doskey jc=java.exe org.junit.runner.JUnitCore $1
doskey jaw=java -cp .;c:\MarsloProgrames\junit3.8.1\junit.jar junit.awtui.TestRunner $1
doskey jsw=java -cp .;c:\MarsloProgrames\junit3.8.1\junit.jar junit.swingui.TestRunner $1
doskey mtty="C:\Marslo\MarsloProgramFiles\cygwin64\bin\mintty.exe" 
doskey subl="C:\Marslo\MarsloProgramFiles\Sublime Text 3\sublime_text.exe" $*
doskey vim="C:\Marslo\MarsloProgramFiles\Vim\vim74\vim.exe" $1
doskey gvim="C:\Marslo\MarsloProgramFiles\Vim\vim74\gvim.exe" $1
doskey addalias=reg add "HKCU\SOFTWARE\Microsoft\Command Processor" /v AutoRun /t REG_SZ /d "%WINDIR%\alias.cmd"
doskey runbat="C:\Windows\run.bat"
doskey scp=C:\Marslo\MarsloProgramFiles\Git\bin\scp.exe -i C:\Marslo\Tools\Software\RemoteConnection\AuthorizedKeys\Marslo@Appliance $*
doskey ssh=C:\Marslo\MarsloProgramFiles\Git\bin\ssh.exe -i C:\Marslo\Tools\Software\RemoteConnection\AuthorizedKeys\Marslo@Appliance $*
