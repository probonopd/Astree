[Setup]
AppName=Astree
AppVerName=Astree 1.21
AppPublisher=Etienne de Foras
AppPublisherURL=http://edeforas.free.fr
AppSupportURL=http://edeforas.free.fr
AppUpdatesURL=http://edeforas.free.fr
DefaultDirName={pf}\Astree
DefaultGroupName=Astree
AllowNoIcons=yes
Compression=lzma
SolidCompression=yes
ChangesAssociations=yes
SetupIconFile=".\Astree.ico"
UninstallDisplayIcon="{app}\Astree.exe"
OutputBaseFilename="setup_Astree"
ArchitecturesInstallIn64BitMode=x64

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: ".\Astree.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\*.qm"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\samples\telescopes\*.astree"; DestDir: "{app}\samples\telescopes"; Flags: ignoreversion
Source: ".\samples\refractors\*.astree"; DestDir: "{app}\samples\refractors"; Flags: ignoreversion
Source: ".\samples\others\*.astree"; DestDir: "{app}\samples\others"; Flags: ignoreversion
Source: ".\samples\eyepieces\*.astree"; DestDir: "{app}\samples\eyepieces"; Flags: ignoreversion
Source: ".\glass\*.*"; DestDir: "{app}\glass"; Flags: ignoreversion
Source: "C:\Qt\Qt5.11.0\5.11.0\msvc2017_64\bin\Qt5Core.dll"; DestDir: "{app}"
Source: "C:\Qt\Qt5.11.0\5.11.0\msvc2017_64\bin\Qt5Gui.dll"; DestDir: "{app}"
Source: "C:\Qt\Qt5.11.0\5.11.0\msvc2017_64\bin\Qt5Widgets.dll"; DestDir: "{app}"

[INI]
Filename: "{app}\Astree.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://edeforas.free.fr"

[Icons]
Name: "{group}\Astree"; Filename: "{app}\Astree.exe"; WorkingDir: "{app}"
Name: "{group}\Astree website"; Filename: "{app}\Astree.url"
Name: "{group}\Astree Samples"; Filename: "{app}\samples\"
Name: "{group}\{cm:UninstallProgram,Astree}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\Astree"; Filename: "{app}\Astree.exe"; Tasks: desktopicon; WorkingDir: "{app}"
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Astree"; Filename: "{app}\Astree.exe"; Tasks: quicklaunchicon; WorkingDir: "{app}"

[Run]
Filename: "{app}\Astree.exe"; Description: "{cm:LaunchProgram,Astree}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: files; Name: "{app}\Astree.url"

[Registry]
Root: HKCR; Subkey: ".Astree"; ValueType: string; ValueName: ""; ValueData: "Astree"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "Astree"; ValueType: string; ValueName: ""; ValueData: "Astree File"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Astree\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Astree.exe,0"
Root: HKCR; Subkey: "Astree\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Astree.exe"" ""%1"""