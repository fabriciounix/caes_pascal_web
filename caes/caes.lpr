program caes;

{$mode objfpc}{$H+}

uses
  fpCGI, unit_caes;

begin
  Application.LegacyRouting := true;
  Application.Title:='Caes  de racas do mundo';
  Application.Initialize;
  Application.Run;
end.

