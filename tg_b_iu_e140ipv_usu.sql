create or replace trigger tg_b_iu_E140IPV_USU
  before insert or update on E140IPV  
  for each row
declare
  n_codces          E075PRO.CODCES%Type;
begin
  /**************************************************************************/
  /*                                                                        				     */
  /* Responsável pelo preenchimento automático da coluna CODCES              		     */
  /*           Log: Início 18/03/2016                                       			     */
  /*                André Luiz                          					     */
  /*                                                                        				     */
  /**************************************************************************/

  Select p.CODCES
     Into n_codces
     From E075PRO P
     Where P.CODEMP = :New.codemp And
           P.CODPRO = :new.codpro;
  :new.codces := n_codces;
  exception
    when no_data_found
      then null;
end tg_b_iu_E140IPV_USU;
