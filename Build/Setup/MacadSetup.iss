; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Macad3D"
#define MyAppTitle "Macad|3D"
#define MyAppPublisher "Tobias Schachte"
#define MyAppURL "http://macad3d.net/"
#define MyAppExeName "Macad.exe"
#define MyAppGuid "{{69419A16-4CD1-4C41-8068-3A0433F708A4}"

#define BasePath "..\..\"

#include "_GeneratedDefinitions.iss"
#include "_Dependencies.iss"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={#MyAppGuid}
AppName={#MyAppTitle}
AppVersion={#MyAppVersionStr}
AppVerName={#MyAppTitle} {#MyAppVersionStr}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
AppCopyright=Copyright (c) {#MyAppPublisher}
AppMutex=MacadInstanceRunning,Global\MacadInstanceRunning
LicenseFile=..\..\License.txt

DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir={#BasePath}\Bin\Deploy
OutputBaseFilename={#MyAppName}_{#MyAppVersionStr}_Setup
Compression=lzma

VersionInfoVersion={#MyAppRevision}
VersionInfoCompany={#MyAppPublisher}
VersionInfoCopyright=Copyright (c) {#MyAppPublisher}
VersionInfoProductName={#MyAppTitle}
VersionInfoProductVersion={#MyAppRevision}

UninstallDisplayName={#MyAppTitle}
UninstallDisplayIcon={app}\Macad.exe

ArchitecturesInstallIn64BitMode=x64
ArchitecturesAllowed=x64
MinVersion=0,6.3
WizardSmallImageFile=WizModernSmallImage.bmp
WizardImageFile=WizModernImage.bmp
AlwaysShowComponentsList=False
ShowComponentSizes=False
AllowUNCPath=False
InternalCompressLevel=max
ShowLanguageDialog=no
LanguageDetectionMethod=none
SolidCompression=True
AlwaysShowDirOnReadyPage=True
ChangesAssociations=True
DisableWelcomePage=True
DisableStartupPrompt=False

;///////////////////////////////////////////////////////////////////////////////
DisableProgramGroupPage=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

;///////////////////////////////////////////////////////////////////////////////

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"

Name: "fileassoc_brep"; Description: "OpenCascade Shape (*.brep)"; GroupDescription: "Additional File Associations:"
Name: "fileassoc_iges"; Description: "IGES Drawing Exchange File (*.iges;*.igs)"; GroupDescription: "Additional File Associations:"
Name: "fileassoc_step"; Description: "STEP Drawing Exchange File (*.step;*.stp)"; GroupDescription: "Additional File Associations:"

;///////////////////////////////////////////////////////////////////////////////

[Dirs]
Name: "{app}\Samples"; Flags: uninsalwaysuninstall

;///////////////////////////////////////////////////////////////////////////////

[Files]
Source: "{#VcRedistDir}\vcredist_x64.exe"; DestDir: "{tmp}"; Flags: deleteafterinstall dontcopy solidbreak
Source: "{#DotNetRedistPath}"; DestDir: "{tmp}"; Flags: deleteafterinstall dontcopy solidbreak

;///////////////////////////////////////////////////////////////////////////////

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{autoappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

;///////////////////////////////////////////////////////////////////////////////

[Registry]
Root: "HKLM"; Subkey: "SOFTWARE\Macad"; ValueType: none; Flags: uninsdeletekey
Root: "HKLM"; Subkey: "SOFTWARE\Macad"; ValueType: string; ValueName: "Directory"; ValueData: "{app}"
Root: "HKLM"; Subkey: "SOFTWARE\Macad"; ValueType: string; ValueName: "AppPath"; ValueData: "{app}\{#MyAppExeName}"
Root: "HKLM"; Subkey: "SOFTWARE\Macad\Capabilities"; ValueType: none
Root: "HKLM"; Subkey: "SOFTWARE\Macad\Capabilities"; ValueType: string; ValueName: "ApplicationDescription"; ValueData: "The construction tool for model makers."
Root: "HKLM"; Subkey: "SOFTWARE\Macad\Capabilities"; ValueType: string; ValueName: "ApplicationName"; ValueData: "Macad3D"
Root: "HKLM"; Subkey: "SOFTWARE\Macad\Capabilities\FileAssociations"; ValueType: string; ValueName: ".model"; ValueData: "Macad.Model.1"
Root: "HKLM"; Subkey: "SOFTWARE\Macad\Capabilities\FileAssociations"; ValueType: string; ValueName: ".brep"; ValueData: "Macad.BRep.1"; Tasks: fileassoc_brep

Root: "HKLM"; Subkey: "SOFTWARE\RegisteredApplications"; ValueType: string; ValueName: "Macad"; ValueData: "SOFTWARE\Macad\Capabilities"; Flags: uninsdeletevalue

Root: "HKLM"; Subkey: "SOFTWARE\Classes\Macad.Model.1"; ValueType: string; ValueData: "Macad|3D Model File"; Flags: uninsdeletekey
Root: "HKLM"; Subkey: "SOFTWARE\Classes\Macad.Model.1"; ValueType: string; ValueName: "AppUserModelID"; ValueData: "Macad.1"
Root: "HKLM"; Subkey: "SOFTWARE\Classes\Macad.Model.1\DefaultIcon"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"",0"
Root: "HKLM"; Subkey: "SOFTWARE\Classes\Macad.Model.1\shell\open\command"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: "HKLM"; Subkey: "SOFTWARE\Classes\.model\OpenWithProgIDs"; ValueType: string; ValueName: "Macad.Model.1"; Flags: uninsdeletevalue;

Root: "HKLM"; Subkey: "SOFTWARE\Classes\Macad.BRep.1"; ValueType: string; ValueData: "OpenCascade BRep Shape File"; Flags: uninsdeletekey; Tasks: fileassoc_brep
Root: "HKLM"; Subkey: "SOFTWARE\Classes\Macad.BRep.1"; ValueType: string; ValueName: "AppUserModelID"; ValueData: "Macad.1"; Tasks: fileassoc_brep
Root: "HKLM"; Subkey: "SOFTWARE\Classes\Macad.BRep.1\DefaultIcon"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"",0"; Tasks: fileassoc_brep
Root: "HKLM"; Subkey: "SOFTWARE\Classes\Macad.BRep.1\shell\open\command"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Tasks: fileassoc_brep
Root: "HKLM"; Subkey: "SOFTWARE\Classes\.brep\OpenWithProgIDs"; ValueType: string; ValueName: "Macad.BRep.1"; Flags: uninsdeletevalue; Tasks: fileassoc_brep

Root: "HKLM"; Subkey: "SOFTWARE\Classes\Macad.IGES.1"; ValueType: string; ValueData: "IGES Drawing Exchange File"; Flags: uninsdeletekey; Tasks: fileassoc_iges
Root: "HKLM"; Subkey: "SOFTWARE\Classes\Macad.IGES.1"; ValueType: string; ValueName: "AppUserModelID"; ValueData: "Macad.1"; Tasks: fileassoc_iges
Root: "HKLM"; Subkey: "SOFTWARE\Classes\Macad.IGES.1\DefaultIcon"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"",0"; Tasks: fileassoc_iges
Root: "HKLM"; Subkey: "SOFTWARE\Classes\Macad.IGES.1\shell\open\command"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Tasks: fileassoc_iges
Root: "HKLM"; Subkey: "SOFTWARE\Classes\.iges\OpenWithProgIDs"; ValueType: string; ValueName: "Macad.IGES.1"; Flags: uninsdeletevalue; Tasks: fileassoc_iges
Root: "HKLM"; Subkey: "SOFTWARE\Classes\.igs\OpenWithProgIDs"; ValueType: string; ValueName: "Macad.IGES.1"; Flags: uninsdeletevalue; Tasks: fileassoc_iges

Root: "HKLM"; Subkey: "SOFTWARE\Classes\Macad.STEP.1"; ValueType: string; ValueData: "STEP Drawing Exchange File"; Flags: uninsdeletekey; Tasks: fileassoc_step
Root: "HKLM"; Subkey: "SOFTWARE\Classes\Macad.STEP.1"; ValueType: string; ValueName: "AppUserModelID"; ValueData: "Macad.1"; Tasks: fileassoc_step
Root: "HKLM"; Subkey: "SOFTWARE\Classes\Macad.STEP.1\DefaultIcon"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"",0"; Tasks: fileassoc_step
Root: "HKLM"; Subkey: "SOFTWARE\Classes\Macad.STEP.1\shell\open\command"; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Tasks: fileassoc_step
Root: "HKLM"; Subkey: "SOFTWARE\Classes\.step\OpenWithProgIDs"; ValueType: string; ValueName: "Macad.STEP.1"; Flags: uninsdeletevalue; Tasks: fileassoc_step
Root: "HKLM"; Subkey: "SOFTWARE\Classes\.stp\OpenWithProgIDs"; ValueType: string; ValueName: "Macad.STEP.1"; Flags: uninsdeletevalue; Tasks: fileassoc_step

;///////////////////////////////////////////////////////////////////////////////

[Run]
Filename: "{app}\{#MyAppExeName}"; Flags: nowait postinstall skipifsilent; Description: "{cm:LaunchProgram,{#StringChange(MyAppTitle, '&', '&&')}}"

;///////////////////////////////////////////////////////////////////////////////

[ThirdParty]
UseRelativePaths=True

;///////////////////////////////////////////////////////////////////////////////

[Code]
var
  dependenciesNeedRestart: Boolean;

procedure InitializeWizard(); 
begin 
  CheckDependencies();
end;

///////////////////////////////////////////////////////////////////////////////

function PrepareToInstall(var NeedsRestart: Boolean): String;
var
  resultFromDependencies: String;
  Page: TOutputMsgWizardPage;
begin
  Result := '';

  dependenciesNeedRestart := False;
  resultFromDependencies := InstallDependencies(dependenciesNeedRestart);
  if resultFromDependencies <> '' then begin
    Page := CreateOutputMsgPage( wpPreparing, 'Installing dependencies failed', 
									'Setup was not successful installing all dependencies.',
									resultFromDependencies + #13#10 +
									'Please try to download and install the dependency manually. ' + #13#10
									'Maybe you have everything already installed, and the program just runs.');
  end
end;

///////////////////////////////////////////////////////////////////////////////

function UpdateReadyMemo(Space, NewLine, MemoUserInfoInfo, MemoDirInfo, MemoTypeInfo,
  MemoComponentsInfo, MemoGroupInfo, MemoTasksInfo: String): String;
var
  s: String;
begin
	s := GetDependenciesMemo(Space, NewLine) + MemoDirInfo;

	if MemoTasksInfo <> '' then
		s := s + NewLine + NewLine + MemoTasksInfo;

	Result := s;
end;

///////////////////////////////////////////////////////////////////////////////

function NeedRestart(): Boolean;
begin
  Result := dependenciesNeedRestart;
end;
