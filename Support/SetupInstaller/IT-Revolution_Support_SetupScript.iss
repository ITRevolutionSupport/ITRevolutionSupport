; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "IT Revolution Support"
#define MyAppVersion "1.0"
#define MyAppPublisher "IT Revolution"
#define MyAppURL "http://www.itrevolution.hu/"
#define MyAppExeName "support.hta"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{4480937A-DFC2-4FBA-B401-0226B769491D}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableDirPage=yes
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
OutputDir=C:\GitHub\ITRevolutionSupport\Support\SetupInstaller
OutputBaseFilename=setup
SetupIconFile=C:\GitHub\ITRevolutionSupport\Support\ProgramFiles\IT_Revolution\IT_Revolution.ico
Compression=lzma
SolidCompression=yes
        
[Languages]
Name: "hungarian"; MessagesFile: "compiler:Hungarian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";

[Files]
Source: "C:\GitHub\ITRevolutionSupport\support\ProgramFiles\IT_Revolution\support.hta"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\GitHub\ITRevolutionSupport\support\ProgramFiles\IT_Revolution\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\IT_Revolution.ico"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"; IconFilename: "{app}\web.ico"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"; IconFilename: "{app}\recyclebin_full.ico" 
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon; IconFilename: "{app}\IT_Revolution.ico"

