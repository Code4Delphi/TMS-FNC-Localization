unit Main.View;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation,
  TMS.TMSFNCLocalizationCollector, TMS.TMSFNCLocalizationLocalizer, FMX.ListBox, FMX.TMSFNCLocalizationComboBox,
  FMX.Menus;

type
  TMainView = class(TForm)
    TMSFNCLocalizationCollector1: TTMSFNCLocalizationCollector;
    TMSFNCLocalizationLocalizer1: TTMSFNCLocalizationLocalizer;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Panel1: TPanel;
    lbWelcome: TLabel;
    btnRegisterCustomer: TButton;
    Button1: TButton;
    TMSFNCLocalizationComboBox1: TTMSFNCLocalizationComboBox;
    btnOpenEditor: TButton;
    lbSelectLanguage: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainView: TMainView;

implementation

{$R *.fmx}

procedure TMainView.FormCreate(Sender: TObject);
begin
  TMSFNCLocalizationLocalizer1.PerformLocalization;
end;

procedure TMainView.Button1Click(Sender: TObject);
begin
  TMSFNCLocalizationLocalizer1.TrySetLocale('pt-BR');
end;

end.
