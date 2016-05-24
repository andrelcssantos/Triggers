create or replace trigger tg_b_i_e075pro
  before insert on e075pro  
  for each row
declare
  -- local variables here
begin
  
  /**************************************************************************/
  /*                                                                        				     */
  /*   Inicia os códigos externo na tabela E075PRO com valores não nulos      		     */
  /*                   Log: Início 28/03/2016                               			     */
  /*                André Luiz                            					     */
  /*                                                                        				     */
  /**************************************************************************/
  
  if (trim(:new.usu_codext1) is null) then
  	:new.usu_codext1 := 'CÓDIGO 1';
  end if;
  
  if (trim(:new.usu_codext2) is null) then
  	:new.usu_codext2 := 'CÓDIGO 2';
  end if;
  
  if (trim(:new.usu_codext3) is null) then
  	:new.usu_codext3 := 'CÓDIGO 3';
  end if;
  
  if (trim(:new.usu_codext4) is null) then
  	:new.usu_codext4 := 'CÓDIGO 4';
  end if;
  
  if (trim(:new.usu_codext5) is null) then
  	:new.usu_codext5 := 'CÓDIGO 5';
  end if;
  
end tg_b_i_e075pro;