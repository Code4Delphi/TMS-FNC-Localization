unit Main.View;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.StdCtrls,
  FMX.Controls.Presentation,
  TMS.TMSFNCLocalizationCollector,
  TMS.TMSFNCLocalizationLocalizer,
  FMX.ListBox,
  FMX.TMSFNCLocalizationComboBox,
  FMX.Menus,
  FMX.TMSFNCCustomComponent,
  FMX.TMSFNCLocalizationEditor, TMS.TMSFNCLocalizationStringCatalog;

type
  TMainView = class(TForm)
    TMSFNCLocalizationCollector1: TTMSFNCLocalizationCollector;
    TMSFNCLocalizationLocalizer1: TTMSFNCLocalizationLocalizer;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    pnBack: TPanel;
    lbWelcome: TLabel;
    btnRegisterCustomer: TButton;
    btnSetToBR: TButton;
    S: TTMSFNCLocalizationComboBox;
    btnOpenEditor: TButton;
    lbSelectLanguage: TLabel;
    TMSFNCLocalizationEditor1: TTMSFNCLocalizationEditor;
    TMSFNCLocalizationStringCatalog1: TTMSFNCLocalizationStringCatalog;
    btnShowStrCatalog: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnSetToBRClick(Sender: TObject);
    procedure btnOpenEditorClick(Sender: TObject);
    procedure btnShowStrCatalogClick(Sender: TObject);
  private

  public

  end;

var
  MainView: TMainView;

implementation

{$R *.fmx}

procedure TMainView.FormCreate(Sender: TObject);
begin
  TMSFNCLocalizationLocalizer1.PerformLocalization;
end;

procedure TMainView.btnSetToBRClick(Sender: TObject);
begin
  TMSFNCLocalizationLocalizer1.TrySetLocale('pt-BR');
end;

procedure TMainView.btnOpenEditorClick(Sender: TObject);
begin
  TMSFNCLocalizationEditor1.Execute;
end;

procedure TMainView.btnShowStrCatalogClick(Sender: TObject);
begin
  ShowMessage(TMSFNCLocalizationStringCatalog1.GetByName('msgConfirmDeletion'));
end;

end.
