Colorful_CommandLine_Windows
============================

The configuration about windows command line

## Truth:
- [Changeline](https://github.com/Marslo/Colorful_CommandLine_Windows/blob/master/Default_CommandLine/Bats/run_changeline_colorful.bat)
![Truth2](https://github.com/Marslo/Colorful_CommandLine_Windows/blob/master/Screenshots/Truth2.png?raw=true)
- [Inline](https://github.com/Marslo/Colorful_CommandLine_Windows/blob/master/Default_CommandLine/Bats/run_inline_colorful.bat)
![Truth1](https://github.com/Marslo/Colorful_CommandLine_Windows/blob/master/Screenshots/mycmd.png?raw=true)

## Content
- [Default CommandLine](https://github.com/Marslo/Colorful_CommandLine_Windows#default-command-line)
  - [Colorful Prompt](https://github.com/Marslo/Colorful_CommandLine_Windows#colorful-prompt)
      - [Needed Tools and files](https://github.com/Marslo/Colorful_CommandLine_Windows#colorful-prompt)
      - [Steps](https://github.com/Marslo/Colorful_CommandLine_Windows#steps)
  - [Specified Font](https://github.com/Marslo/Colorful_CommandLine_Windows#change-font-in-commandline)
      - [Add the specified font](https://github.com/Marslo/Colorful_CommandLine_Windows#add-the-customize-font)
      - [Set code page](https://github.com/Marslo/Colorful_CommandLine_Windows#set-code-page)
      - [Set cmd use font](https://github.com/Marslo/Colorful_CommandLine_Windows#settings)
  - [Specified Cursor Size](https://github.com/Marslo/Colorful_CommandLine_Windows#specified-the-cursor-size)
  - [Set aliases in cmd](https://github.com/Marslo/Colorful_CommandLine_Windows#set-aliases-in-command-linedefault-command-line)
- [Console/Console2](https://github.com/Marslo/Colorful_CommandLine_Windows#configuration-about-consoleconsole2)
    -[ShortCuts](https://github.com/Marslo/Colorful_CommandLine_Windows#shortcut)
    - [Mouse Seeting](https://github.com/Marslo/Colorful_CommandLine_Windows#mouse-setting)
- [TCC/LE](https://github.com/Marslo/Colorful_CommandLine_Windows#configuration-about-tccle)
    - [Configuration](https://github.com/Marslo/Colorful_CommandLine_Windows#configuration)
    - [Tips](https://github.com/Marslo/Colorful_CommandLine_Windows#some-tips)
- [Anscion Colors](https://github.com/Marslo/Colorful_CommandLine_Windows#configuration-about-ansicon)

## Default Command Line
### Colorful prompt
#### Needed Tools and files:
  - Ansicon
  - A bat file

#### Steps:
- ANSICON:
    - Download Ansicon from [HomePage](http://adoxa.hostmyway.net/ansicon/) or [GitHub](https://github.com/adoxa/ansicon)
    - Install:
        <pre><code>> cd ansi161\x86\
        > ansicon.exe -i
        </code></pre>

- Create bat file:
    - Characters help by using :
        <pre><code>> prompt /?
        </code></pre>

    - Example (run.bat):
        <pre><code>@echo
        prompt $E[1;31m$d$E[1;32m$s$t$s$E[1;31m$g$g$s$E[0;33m
        </code></pre>

- Add bat file into Regedit:
    - Open Regedit: <kbd>Ctrl</kbd> + <kbd>R</kbd> -> **regedit**
    - Path: **HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Command Processor**
        <pre><code>Type:             String
        Value Name:       AutoRun
        Value Data:       [Path_Of_Bat_file]
        </code></pre>
    - By Command:
        <pre><code>c:\ > reg add "HKLM\SOFTWARE\Microsoft\Command Processor" /v AutoRun /t REG_SZ /d "%WINDIR%\run.bat"</code></pre>
    - E.g.:
    ![Command_porcessor](https://github.com/Marslo/Colorful_CommandLine_Windows/blob/master/Screenshots/Machine_Command%20Processor.png?raw=true)

### Change Font in CommandLine
#### Add the customize Font
- Go to: `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Console\TrueTypeFont`
- Create Font Type:
    - Type:                  String
    - Key Name:       Only defined by '0' (zero)
        <pre><code>E.g.: '0', '00', ... , '00..0'
        </code></pre>
    - Key Value:         Font Name (Only monospace series)
    E.g.:
        <pre><code>'000'    =>   Monaco
        '0000' =>    Courier New
        ...
        </code></pre>
    - By command:
    <pre><code>c:\> reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Console\TrueTypeFont" /v "0000" /t REG_SZ /d "Consolas" [/f]
    </code></pre>
    - E.g.:
        ![Font](https://github.com/Marslo/Colorful_CommandLine_Windows/blob/master/Screenshots/font.png?raw=true)

#### Set code page
- Running in command line: (or **chcp 850**)
    <pre><code>> chcp 437
    </code></pre>
- Code page regist location: **HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Nls\CodePage**

#### Settings:
- **Right-Click** -> **Propties** -> **Font**
- E.g.:
    ![propties](https://github.com/Marslo/Colorful_CommandLine_Windows/blob/master/Screenshots/Propties.png?raw=true)

### Specified the cursor size:
#### Configure by Manual
- Open `regedit` by <kbd>Win</kbd> + <kbd>R</kbd> -> Input `regedit`
- Go to `HKEY_CURRENT_USER` -> `Console`
- Add keyword: <pre><code>"CursorSize"=dword:00000006</code></pre>
- For Example:
    <pre><code>[HKEY_CURRENT_USER\Console]
    "CursorSize"=dword:00000006
    [HKEY_CURRENT_USER\Console\%SystemRoot%_system32_cmd.exe]
    "CursorSize"=dword:00000006
    </code></pre>

#### Configure by Command:
    <pre><code>c:\> reg add "HKCU\Console" /v CursorSize /t REG_DWORD /d "1"</code></pre>

### Set aliases in Command Line(Default Command Line)
- Create **.cmd** file (E.g.: %WINDIR%\alias.cmd)
    - It can be copied from folder **Default_CommandLine\Aliases\**
- Add the full file path into regist: **HKEY_CURRENT_USER\Software\Microsoft\Command Processor**
    - CMD command: <pre><code>c:> reg add "HKCU\SOFTWARE\Microsoft\Command Processor" /v AutoRun /t REG_SZ /d "%WINDIR%\alias.cmd"
    </code></pre>

## Configuration about Console/Console2:
- Copy the **console.xml** to `%APPDATA%\Console` folder
- If the console is from [pythonxy](https://code.google.com/p/pythonxy/)
    - Copy `pythonxy\console\` to `$PYTHONXYHOME\console`.
    - For example, copy it to `C:\pythonxy\console\`

### Tabs in pythonxy console:
- Tab1: Marslo - IPython (sh)
- Tab2: Marslo - Ipython (Qt)
- Tab3: Python
- Tab4: Command Line
- Tab5: IPython (sh) [Original]
- Tab6: Ipython (Qt) [Original]

### Shortcut
- `ctrl + s`: Open setting dialog
- `Ctrl + F1`: Open Tab1
- `Ctrl + F<N>`: Open Tab<N>
- `Ctrl + 1`: Switch to Tab1
- `Ctrl + <N>`: Switch to Tab<N>

### Mouse setting
- `Left + Shift`: Copy/clear selection
- `Left + Ctrl`: Drag window
- `Left`: Select text
- `Right`: Paste text

## Configuration about TCC/LE:
- Copy the **tcstart.btm** to `%PROGRAMFILES%\JPSoft\TCCLE13`

#### Configuration
- Open profile file:
    <pre><code>> gvim $PROFILE</code></pre>
- Set cursor size:
    <pre><code>[Console]::CursorSize = 6
    $HOST.UI.RawUI.CursorSize = 6
    </code></pre>
- List all files:
    <pre><code>function la
    {
        $currentpath = Get-Location
        Get-ChildItem $currentpath -force
    }
    </code></pre>
- List all hidden file (start with ".")
    <pre><code>function l.
    {
        # Get-ChildItem . -Force | Where-Object { $_.Attributes -like "*Hidden*" } | Select FullName
        Get-ChildItem . -Force | Where-Object { $_.Attributes -like "*Hidden*" }
    }
    </code></pre>
- Tree
    <pre><code>function tree
    {
        $currentpath = Get-Location
        Get-ChildItem $currentpath -recurse
    }
    </code></pre>
- Go to some path
    <pre><code>function prog
    {
        Set-Location "C:\Program Files"
    }
    </code></pre>
- Cat some content
    <pre><code>function alias
    {
       Get-Content "c:\WindowsPowerShell\aliases_Marslo.txt"
    }
    </code></pre>

### Some tips
- Profile issue:
    - Problem:<pre><code>Microsoft.PowerShell_profile.ps1 cannot be loaded</code></pre>
    - Fix method:
    <pre><code>> Set-ExecutionPolicy -ExecutionPolicy Unrestricted
    > Get-ExecutionPolicy
    > Get-ExecutionPolicy -list
    </code></pre>

## Configuration about Ansicon:
- The color prompt reference: "http://adoxa.hostmyway.net/ansicon/ANSI Prompt Colours.txt"

### Brief Introduction:
- **3x** and **4x**:
    - **3x**: Front Color
    - **4x**: Background Color
- Basic format:`$E[a;3b;c;4dm` or `$E[0;a;3b;c;4dm`
    - For example:
        - `$E[31;46m`:        **Front color**: dark red; **Background color**: dark green ( == $E[0;31;46m == $E[0;31;6;46m)
        - `$E[1;31;46m`:      **Front color**: light red; **Background color**: dark green ( == $E[1;31;1;46m)
        - `$E[1;31;4;46m`:    **Front color**: light red; **Background color**: light green
    - a (control dark/light front color):
        - `0 == a`: Set the **dark** front color
        - `1 == a`: Set the **light** front color
	    - `7 == a`: Reversal the front color and background color
    - b (front color):
        - `1`: Red
        - `2`: Green
        - `3`: Yellow
        - `4`: Blue
        - `5`: Magenta
        - `6`: Cyan
        - `7`: White
    - c (control dark/light/reversal background color):
        - `0 == c`: Set front color as dark white
        - `4 == c`: Set **light** background color
        - `1 or 6 == c`: Set **dark** background color
        - `7 == c`: Reversal the front color and background color
    - d (background color):
        - `1`: Red
        - `2`: Green
        - `3`: Yellow
        - `4`: Blue
        - `5`: Magenta
        - `6`: Cyan
        - `7`: White

### Examples:
![ansiconcolor](https://github.com/Marslo/Colorful_CommandLine_Windows/blob/master/Screenshots/ansicon_color.png?raw=true)
