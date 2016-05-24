create or replace trigger tg_b_i_e075pro
  before insert on e075pro  
  for each row
declare
  -- local variables here
begin
  
  /**************************************************************************/
  /*                                                                        				     */
  /*   Inicia os c�digos externo na tabela E075PRO com valores n�o nulos      		     */
  /*                   Log: In�cio 28/03/2016                               			     */
  /*                Andr� Luiz                            					     */
  /*                                                                        				     */
  /**************************************************************************/
  
  if (trim(:new.usu_codext1) is null) then
  	:new.usu_codext1 := 'C�DIGO 1';
  end if;
  
  if (trim(:new.usu_codext2) is null) then
  	:new.usu_codext2 := 'C�DIGO 2';
  end if;
  
  if (trim(:new.usu_codext3) is null) then
  	:new.usu_codext3 := 'C�DIGO 3';
  end if;
  
  if (trim(:new.usu_codext4) is null) then
  	:new.usu_codext4 := 'C�DIGO 4';
  end if;
  
  if (trim(:new.usu_codext5) is null) then
  	:new.usu_codext5 := 'C�DIGO 5';
  end if;
  
end tg_b_i_e075pro;