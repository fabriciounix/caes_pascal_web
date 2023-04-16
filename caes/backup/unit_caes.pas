unit unit_caes;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Classes, httpdefs, fpHTTP, fpWeb;

type

  { TFPWebModule1 }

  TFPWebModule1 = class(TFPWebModule)
    procedure indexRequest(Sender: TObject; ARequest: TRequest;
      AResponse: TResponse; var Handled: Boolean);
  private

  public

  end;

var
  FPWebModule1: TFPWebModule1;
  Caes: array[1..25] of String;
  ImgCaes: array[1..25] of String;

implementation

{$R *.lfm}

{ TFPWebModule1 }

procedure TFPWebModule1.indexRequest(Sender: TObject; ARequest: TRequest;
  AResponse: TResponse; var Handled: Boolean);
var
I: Integer;
J: Integer;
begin
  Caes[1] := 'Pastor alemão';
 Caes[2] := 'Boiadeiro australiano';
 Caes[3] := 'Golden retriver';
 Caes[4] := 'Kangal';
 Caes[5] := 'Alabai';
 Caes[7] := 'Cão da Serra da Estrela';
 Caes[8] := 'Doberman';
 Caes[9] := 'Cão vermelho chinês';
 Caes[10] := 'Presa canário';
 Caes[11] := 'Cane corso';
 Caes[12] := 'Fila brasileiro';
 Caes[13] := 'Pastor do calcaso';
 Caes[14] := 'Catahoula cur';
 Caes[15] := 'Setter irlandes';
 Caes[16] := 'Dogo argentino';
 Caes[17] := 'Pastor da anatólia';
 Caes[18] := 'Cão de santo humberto';
 Caes[19] := 'Staffordshire terrier';
 Caes[20] := 'Pinscher';
 Caes[21] := 'Samoieda';
 Caes[22] := 'Cao da montanha dos Pirineus';
 Caes[23] := 'Leonberger';
 Caes[24] := 'Cao de guarda de Moscou';
 Caes[25] := 'Dogo Guatemalteco';

 ImgCaes[1] := 'img/pastor_alemao.jpg';
 ImgCaes[2] := 'Boiadeiro australiano';
 ImgCaes[3] := 'Golden retriver';
 ImgCaes[4] := 'Kangal';
 ImgCaes[5] := 'Alabai';
 ImgCaes[7] := 'Cão da Serra da Estrela';
 ImgCaes[8] := 'Doberman';
 ImgCaes[9] := 'Cão vermelho chinês';
 ImgCaes[10] := 'Presa canário';
 ImgCaes[11] := 'Cane corso';
 ImgCaes[12] := 'Fila brasileiro';
 ImgCaes[13] := 'Pastor do calcaso';
 ImgCaes[14] := 'img/catahoula_cur.jpeg';
 ImgCaes[15] := 'img/setter_irlandes.jpeg';
 ImgCaes[16] := 'Dogo argentino';
 ImgCaes[17] := 'Pastor da anatolia';
 ImgCaes[18] := 'Cao de santo humberto';
 ImgCaes[19] := 'Staffordshire terrier';
 ImgCaes[20] := 'Pinscher';
 ImgCaes[21] := 'Samoieda';
 ImgCaes[22] := 'Cao da montanha dos Pirineus';
 ImgCaes[23] := 'Leonberger';
 ImgCaes[24] := 'Cao de guarda de Moscou';
 ImgCaes[25] := 'Dogo Guatemalteco';

 AResponse.Contents.Add('<DOCTYPE! html>');
 AResponse.Contents.Add('<html lang="pt-br">');
 AResponse.Contents.Add('<heade1>');
 AResponse.Contents.Add('</header>');
 AResponse.Contents.Add('<body>');


 AResponse.Contents.Add('<h1>Raças de Cães</h1>');
 AResponse.Contents.Add(ImgCaes[1]);
 AResponse.Contents.Add('<img src="img/pastor_alemao.jpg" alt="Minha Figura">');
 I:=0;
 J:=0;
 For I:=I+1 to 24 do
     AResponse.Contents.Add('<p>' + Caes[I] + '</p>');

  For J:=J+1 to 24 do
      AResponse.Contents.Add('<img src="' + ImgCaes[J] +'" width="200px">');


 AResponse.Contents.Add('</body>');
 AResponse.Contents.Add('</html>');
 Handled:=True;

end;

initialization
  RegisterHTTPModule('TFPWebModule1', TFPWebModule1);
end.

