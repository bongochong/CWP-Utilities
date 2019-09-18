unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Menus, ShellApi, lclintf;

type

{ TForm1 }
  TForm1 = class(TForm)
	MenuItem1: TMenuItem;
	MenuItem10: TMenuItem;
	MenuItem11: TMenuItem;
	MenuItem12: TMenuItem;
	MenuItem13: TMenuItem;
	MenuItem14: TMenuItem;
	MenuItem15: TMenuItem;
	MenuItem16: TMenuItem;
	MenuItem17: TMenuItem;
	MenuItem18: TMenuItem;
	MenuItem19: TMenuItem;
	MenuItem2: TMenuItem;
	MenuItem20: TMenuItem;
	MenuItem21: TMenuItem;
	MenuItem22: TMenuItem;
	MenuItem23: TMenuItem;
	MenuItem24: TMenuItem;
	MenuItem25: TMenuItem;
	MenuItem26: TMenuItem;
	MenuItem27: TMenuItem;
	MenuItem28: TMenuItem;
	MenuItem3: TMenuItem;
	MenuItem4: TMenuItem;
	MenuItem5: TMenuItem;
	MenuItem6: TMenuItem;
	MenuItem7: TMenuItem;
	MenuItem8: TMenuItem;
	MenuItem9: TMenuItem;
	PopupMenu1: TPopupMenu;
	TrayIcon1: TTrayIcon;
	procedure MenuItem10Click(Sender: TObject);
	procedure MenuItem11Click(Sender: TObject);
	procedure MenuItem12Click(Sender: TObject);
	procedure MenuItem14Click(Sender: TObject);
	procedure MenuItem15Click(Sender: TObject);
	procedure MenuItem16Click(Sender: TObject);
	procedure MenuItem1Click(Sender: TObject);
	procedure MenuItem20Click(Sender: TObject);
	procedure MenuItem21Click(Sender: TObject);
	procedure MenuItem22Click(Sender: TObject);
	procedure MenuItem23Click(Sender: TObject);
	procedure MenuItem24Click(Sender: TObject);
	procedure MenuItem26Click(Sender: TObject);
	procedure MenuItem2Click(Sender: TObject);
	procedure MenuItem3Click(Sender: TObject);
	procedure MenuItem4Click(Sender: TObject);
	procedure MenuItem5Click(Sender: TObject);
	procedure MenuItem6Click(Sender: TObject);
	procedure MenuItem8Click(Sender: TObject);
	procedure MenuItem9Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
  if ShellExecute(0,nil, PChar('cmd'),PChar('/c "WinUtilsMultiLauncher.bat"'),nil,1) =0 then;
end;

procedure TForm1.MenuItem16Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
  if ShellExecute(0,nil, PChar('"cwpumain\bin\metapad.exe"'),PChar('"cwpumain\update-pac-win-local.bat"'),nil,1) =0 then;
end;

procedure TForm1.MenuItem11Click(Sender: TObject);
begin
  if ShellExecute(0,nil, PChar('"cwpumain\bin\metapad.exe"'),PChar('"cwpumain\update-bt-bl-dat.bat"'),nil,1) =0 then;
end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
  if ShellExecute(0,nil, PChar('"cwpumain\bin\metapad.exe"'),PChar('"cwpumain\update-bt-bl-p2p.bat"'),nil,1) =0 then;
end;

procedure TForm1.MenuItem14Click(Sender: TObject);
begin
  OpenURL('https://github.com/bongochong/CWP-Utilities/blob/master/Help.md');
end;

procedure TForm1.MenuItem15Click(Sender: TObject);
begin
  OpenURL('https://github.com/bongochong/CWP-Utilities/blob/master/Help-Advanced.md');
end;

procedure TForm1.MenuItem20Click(Sender: TObject);
begin
  if ShellExecute(0,nil, PChar('cmd'),PChar('/c "docs\restore-default-hosts\hosts-restorer.bat"'),nil,1) =0 then;
end;

procedure TForm1.MenuItem21Click(Sender: TObject);
begin
  OpenURL('https://github.com/bongochong/CWP-Utilities/blob/master/Changelog.md');
end;

procedure TForm1.MenuItem22Click(Sender: TObject);
begin
  OpenURL('https://github.com/bongochong/CWP-Utilities/releases');
end;

procedure TForm1.MenuItem23Click(Sender: TObject);
begin
  ShowMessage('Version 1.7.4 of CWP Utilities' + sLineBreak + 'Thanks for using my software!' + sLineBreak + 'Be sure to check out my other projects at:' + sLineBreak + 'https://github.com/bongochong');
end;

procedure TForm1.MenuItem24Click(Sender: TObject);
begin
  if ShellExecute(0,nil, PChar('cmd'),PChar('/c "start /min SysHostsEd.bat"'),nil,1) =0 then;
end;

procedure TForm1.MenuItem26Click(Sender: TObject);
begin
  if ShellExecute(0,nil, PChar('cmd'),PChar('/c "cwpumain\hosts-stats.bat"'),nil,1) =0 then;
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  if ShellExecute(0,nil, PChar('cmd'),PChar('/c "WinUtilsMultiLauncher.bat -01"'),nil,1) =0 then;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  if ShellExecute(0,nil, PChar('cmd'),PChar('/c "WinUtilsMultiLauncher.bat -02"'),nil,1) =0 then;
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  if ShellExecute(0,nil, PChar('cmd'),PChar('/c "WinUtilsMultiLauncher.bat -03"'),nil,1) =0 then;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  if ShellExecute(0,nil, PChar('cmd'),PChar('/c "WinUtilsMultiLauncher.bat -04"'),nil,1) =0 then;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  if ShellExecute(0,nil, PChar('cmd'),PChar('/c "WinUtilsMultiLauncher.bat -05"'),nil,1) =0 then;
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
  if ShellExecute(0,nil, PChar('"cwpumain\bin\metapad.exe"'),PChar('"cwpumain\hosts-updater-win-ipv4.bat"'),nil,1) =0 then;
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  if ShellExecute(0,nil, PChar('"cwpumain\bin\metapad.exe"'),PChar('"cwpumain\hosts-updater-win-dual.bat"'),nil,1) =0 then;
end;

initialization
Application.ShowMainForm := false;
end.

