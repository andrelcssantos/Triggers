create or replace trigger tg_a_iu_usu_tligcod
  after insert or update on e075pro  
  for each row
declare
  -- local variables here
begin
  
  /*****************************************************************************/
  /*                                                                           				           */
  /*Insere e atualiza automáticamente os códigos externo na tabela usu_tligcod 		           */
  /*                   Log: Início 28/03/2016                                  			           */
  /*                   André Luiz                                 				           */
  /*                                                                          				           */
  /*****************************************************************************/
  
  if inserting then --inicio do if insertin
      insert into usu_tligcod (usu_codemp, usu_codpro, usu_codext, usu_uniext)
          values (:new.codemp, :new.codpro, :new.usu_codext1, :new.unimed);    
            
      insert into usu_tligcod (usu_codemp, usu_codpro, usu_codext, usu_uniext)
          values (:new.codemp, :new.codpro, :new.usu_codext2, :new.unimed);
       
      insert into usu_tligcod (usu_codemp, usu_codpro, usu_codext, usu_uniext)
          values (:new.codemp, :new.codpro, :new.usu_codext3, :new.unimed);            
    
      insert into usu_tligcod (usu_codemp, usu_codpro, usu_codext, usu_uniext)
          values (:new.codemp, :new.codpro, :new.usu_codext4, :new.unimed);     
     
      insert into usu_tligcod (usu_codemp, usu_codpro, usu_codext, usu_uniext)
          values (:new.codemp, :new.codpro, :new.usu_codext5, :new.unimed);           
   end if; --fim do if inserting
   
   if updating then --inicio do if updating
     
     update usu_tligcod set usu_codext = :new.usu_codext1 where usu_codext = :old.usu_codext1;
     update usu_tligcod set usu_codext = :new.usu_codext2 where usu_codext = :old.usu_codext2;
     update usu_tligcod set usu_codext = :new.usu_codext3 where usu_codext = :old.usu_codext3;
     update usu_tligcod set usu_codext = :new.usu_codext4 where usu_codext = :old.usu_codext4;
     update usu_tligcod set usu_codext = :new.usu_codext5 where usu_codext = :old.usu_codext5;
                     
   end if; --fim do if updating

end tg_a_iu_usu_tligcod;